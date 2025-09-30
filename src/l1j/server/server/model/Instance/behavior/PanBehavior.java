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

public class PanBehavior implements ElvenForestGuardianBehavior {

    private static final long COOLDOWN_MILLIS = 5 * 60 * 1000L;
    private static final long BROADCAST_THROTTLE = 12000L;
    private static final int MANE_RATE = Math.min(100, (int) Math.round(20 * Config.RATE_DROP_ITEMS));

    private boolean panCooldown = false;
    private long panCooldownStart = 0L;
    private int panSuccessesSoFar = 0;
    private int maxPanSuccesses = -1;
    private long lastPanBroadcastTime = 0L;

    @Override
    public void onHit(L1GuardianInstance npc, L1PcInstance player) {
        long now = System.currentTimeMillis();

        if (panCooldown && now - panCooldownStart >= COOLDOWN_MILLIS) {
            panCooldown = false;
            panCooldownStart = 0L;
            panSuccessesSoFar = 0;
            maxPanSuccesses = -1;
        }

        if (panCooldown && now - panCooldownStart < COOLDOWN_MILLIS) {
            if (now - lastPanBroadcastTime > BROADCAST_THROTTLE) {
                npc.broadcastPacket(new S_NpcChatPacket(npc, "$824", 0));
                lastPanBroadcastTime = now;
            }
            return;
        }

        if (maxPanSuccesses == -1) {
            maxPanSuccesses = ThreadLocalRandom.current().nextInt(5, 8);
        }

        if (ThreadLocalRandom.current().nextInt(100) < MANE_RATE) {
            panSuccessesSoFar++;
            player.getInventory().storeItem(40519, 5);
            player.sendPackets(new S_ServerMessage(143, "$753", "$760 (5)"));

            //Now mark cooldown and broadcast
            if (panSuccessesSoFar >= maxPanSuccesses) {
                panCooldown = true;
                panCooldownStart = now;
                npc.broadcastPacket(new S_NpcChatPacket(npc, "$824", 0));
                lastPanBroadcastTime = now;
            }
        }
    }
}
