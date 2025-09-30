/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 *
 * http://www.gnu.org/copyleft/gpl.html
 */
package l1j.server.server.model.Instance.behavior;

import java.util.concurrent.ThreadLocalRandom;

import l1j.server.Config;
import l1j.server.server.model.Instance.L1GuardianInstance;
import l1j.server.server.model.Instance.L1PcInstance;
import l1j.server.server.serverpackets.S_NpcChatPacket;
import l1j.server.server.serverpackets.S_ServerMessage;

public class EntBehavior implements ElvenForestGuardianBehavior {

    private static final long COOLDOWN_MILLIS = 5 * 60 * 1000L;
    private static final long BROADCAST_THROTTLE = 12000L;
    private static final int TWIG_AMOUNT_PER_HIT = 6;
    private final int TWIG_RATE = Math.min(100, (int) Math.round(15 * Config.RATE_DROP_ITEMS));
    private final int FRUIT_RATE = Math.min(100, (int) Math.round(10 * Config.RATE_DROP_ITEMS));

    private boolean fruitGiven = false;
    private long fruitGivenTime = 0L;
    private int successesSoFar = 0;
    private int maxSuccesses = -1;
    private long lastBroadcastTime = 0L;

    @Override
    public void onHit(L1GuardianInstance npc, L1PcInstance player) {
        long now = System.currentTimeMillis();

        // Reset if cooldown expired
        if (fruitGiven && now - fruitGivenTime >= COOLDOWN_MILLIS) {
            fruitGiven = false;
            fruitGivenTime = 0L;
            successesSoFar = 0;
            maxSuccesses = -1;
        }

        // Cooldown phase
        if (fruitGiven && now - fruitGivenTime < COOLDOWN_MILLIS) {
            if (now - lastBroadcastTime > BROADCAST_THROTTLE) {
                npc.broadcastPacket(new S_NpcChatPacket(npc, "$822", 0));
                lastBroadcastTime = now;
            }
            return;
        }

        // Fungus trade
        if (npc.getInventory().checkItem(40499)) {
            int quantity = npc.getInventory().findItemId(40499).getCount();
            npc.getInventory().consumeItem(40499, quantity);
            player.getInventory().storeItem(40505, quantity);
            player.sendPackets(new S_ServerMessage(143, "$755", "$770 (" + quantity + ")"));
        }

        // Initialize max successes
        if (maxSuccesses == -1) {
            maxSuccesses = ThreadLocalRandom.current().nextInt(11, 14);
        }

        int chance = ThreadLocalRandom.current().nextInt(100);

        if (successesSoFar < maxSuccesses && chance < TWIG_RATE) {
            // Give Twig
            player.getInventory().storeItem(40507, TWIG_AMOUNT_PER_HIT);
            player.sendPackets(new S_ServerMessage(143, "$755", "$763 (" + TWIG_AMOUNT_PER_HIT + ")"));
            successesSoFar++;
        } else if (successesSoFar >= maxSuccesses && chance < FRUIT_RATE) {
            // Give Fruit once
            player.getInventory().storeItem(40506, 1);
            player.sendPackets(new S_ServerMessage(143, "$755", "$794"));

            // Now mark cooldown and broadcast
            fruitGiven = true;
            fruitGivenTime = now;
            npc.broadcastPacket(new S_NpcChatPacket(npc, "$822", 0));
        }
    }
}
