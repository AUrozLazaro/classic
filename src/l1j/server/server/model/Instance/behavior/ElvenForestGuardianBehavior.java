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

import l1j.server.server.model.Instance.L1GuardianInstance;
import l1j.server.server.model.Instance.L1PcInstance;

public interface ElvenForestGuardianBehavior {
    /**
     * Called when a player hits the NPC.
     *
     * @param npc    The L1GuardianInstance being hit
     * @param player The player performing the hit
     */
    void onHit(L1GuardianInstance npc, L1PcInstance player);
}
