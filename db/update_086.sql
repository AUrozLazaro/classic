-- add hidden valley dungeon cursed ettin to enable tio quest
INSERT INTO `spawnlist` (`location`, `count`, `npc_templateid`, `group_id`, `locx`, `locy`, `randomx`, `randomy`, `locx1`, `locy1`, `locx2`, `locy2`, `heading`, `min_respawn_delay`, `max_respawn_delay`, `mapid`, `respawn_screen`, `movement_distance`, `rest`, `near_spawn`, `spawn_home`, `spawn_home_range`, `spawn_home_count`, `spawn_home_delay`) VALUES
('Cursed Ettin', '1', '45112', '0', '32929', '32735', '6', '6', '0', '0', '0', '0', '0', '60', '120', '86', '0', '0', '0', '0', '1', '0', '2', '100');

-- add black key drop to complete ruba quest
INSERT INTO `droplist` VALUES
('45110', 'Lesser Succubus Queen', '40613', 'Black Key', '1', '1', '1000000'),
('45110', 'Lesser Succubus Queen', '40308', 'Adena', '40', '90', '1000000');

-- fix ruba quest empty text
UPDATE `npcaction` SET normal_action = 'ruba', caotic_action = 'ruba' WHERE npcid = 70506;

-- enable arena guard in singing island
INSERT INTO `spawnlist_npc` (`location`, `count`, `npc_templateid`, `locx`, `locy`, `randomx`, `randomy`, `heading`, `respawn_delay`, `mapid`, `movement_distance`) VALUES
('Arena Guide', '1', '550013', '32841', '32786', '0', '0', '6', '0', '68', '0');
INSERT INTO `npc` VALUES
('550013', 'Arena Guide', '$1500', '', 'L1Teleporter', '148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '14', '0', '0', '0');
INSERT INTO `npcaction` VALUES
('550013', 'agsiin', 'agsiin', 'agin', '');

-- Add balcony access for Aden castle
INSERT INTO `dungeon` VALUES ('32910', '32569', '300', 'Aden Castle', '34096', '33197', '4', 'Mainland of Aden', '6');
INSERT INTO `dungeon` VALUES ('34096', '33197', '4', 'Mainland of Aden', '32910', '32569', '300', 'Aden Castle', '6');

-- put all aden houses up for auction
DELETE FROM board_auction WHERE house_area = 'Aden';

INSERT INTO board_auction (house_id, house_name, house_area, deadline, price, location, old_owner, old_owner_id, bidder, bidder_id)
SELECT house_id, house_name, house_area, '2009-01-24 00:00:00', 100000, 'Aden', '', 0, '', 0
FROM house
WHERE location = 'Aden';

-- add missing aden housekeepers
UPDATE `house` SET keeper_id = '50596' WHERE house_id = '458753';
UPDATE `house` SET keeper_id = '50567' WHERE house_id = '458754';
UPDATE `house` SET keeper_id = '50607' WHERE house_id = '458755';
UPDATE `house` SET keeper_id = '50581' WHERE house_id = '458756';
UPDATE `house` SET keeper_id = '50585' WHERE house_id = '458757';
-- 5
UPDATE `house` SET keeper_id = '50553' WHERE house_id = '458758';
UPDATE `house` SET keeper_id = '50594' WHERE house_id = '458759';
UPDATE `house` SET keeper_id = '50561' WHERE house_id = '458760';
UPDATE `house` SET keeper_id = '50575' WHERE house_id = '458761';
UPDATE `house` SET keeper_id = '50554' WHERE house_id = '458762';
-- 10
UPDATE `house` SET keeper_id = '50588' WHERE house_id = '458763';
UPDATE `house` SET keeper_id = '50560' WHERE house_id = '458764';
UPDATE `house` SET keeper_id = '50572' WHERE house_id = '458765';
UPDATE `house` SET keeper_id = '50551' WHERE house_id = '458766';
UPDATE `house` SET keeper_id = '50547' WHERE house_id = '458767';
-- 15
UPDATE `house` SET keeper_id = '50568' WHERE house_id = '458768';
UPDATE `house` SET keeper_id = '50590' WHERE house_id = '458769';
UPDATE `house` SET keeper_id = '50570' WHERE house_id = '458770';
UPDATE `house` SET keeper_id = '50595' WHERE house_id = '458771';
UPDATE `house` SET keeper_id = '50593' WHERE house_id = '458772';
-- 20
UPDATE `house` SET keeper_id = '50587' WHERE house_id = '458773';
UPDATE `house` SET keeper_id = '50571' WHERE house_id = '458774';
UPDATE `house` SET keeper_id = '50564' WHERE house_id = '458775';
UPDATE `house` SET keeper_id = '50611' WHERE house_id = '458776';
UPDATE `house` SET keeper_id = '50600' WHERE house_id = '458777';
-- 25
UPDATE `house` SET keeper_id = '50603' WHERE house_id = '458778';
UPDATE `house` SET keeper_id = '50558' WHERE house_id = '458779';
UPDATE `house` SET keeper_id = '50599' WHERE house_id = '458780';
UPDATE `house` SET keeper_id = '50556' WHERE house_id = '458781';
UPDATE `house` SET keeper_id = '50546' WHERE house_id = '458782';
-- 30
UPDATE `house` SET keeper_id = '50584' WHERE house_id = '458783';
UPDATE `house` SET keeper_id = '50582' WHERE house_id = '458784';
UPDATE `house` SET keeper_id = '50589' WHERE house_id = '458785';
UPDATE `house` SET keeper_id = '50605' WHERE house_id = '458786';
UPDATE `house` SET keeper_id = '50557' WHERE house_id = '458787';
-- 35
UPDATE `house` SET keeper_id = '50583' WHERE house_id = '458788';
UPDATE `house` SET keeper_id = '50580' WHERE house_id = '458789';
UPDATE `house` SET keeper_id = '50591' WHERE house_id = '458790';
UPDATE `house` SET keeper_id = '50569' WHERE house_id = '458791';
UPDATE `house` SET keeper_id = '50548' WHERE house_id = '458792';
-- 40
UPDATE `house` SET keeper_id = '50578' WHERE house_id = '458793';
UPDATE `house` SET keeper_id = '50562' WHERE house_id = '458794';
UPDATE `house` SET keeper_id = '50577' WHERE house_id = '458795';
UPDATE `house` SET keeper_id = '50573' WHERE house_id = '458796';
UPDATE `house` SET keeper_id = '50612' WHERE house_id = '458797';
-- 45
UPDATE `house` SET keeper_id = '50598' WHERE house_id = '458798';
UPDATE `house` SET keeper_id = '50565' WHERE house_id = '458799';
UPDATE `house` SET keeper_id = '50602' WHERE house_id = '458800';
UPDATE `house` SET keeper_id = '50597' WHERE house_id = '458801';
UPDATE `house` SET keeper_id = '50574' WHERE house_id = '458802';
-- 50
UPDATE `house` SET keeper_id = '50566' WHERE house_id = '458803';
UPDATE `house` SET keeper_id = '50610' WHERE house_id = '458804';
UPDATE `house` SET keeper_id = '50549' WHERE house_id = '458805';
UPDATE `house` SET keeper_id = '50579' WHERE house_id = '458806';
UPDATE `house` SET keeper_id = '50576' WHERE house_id = '458807';
-- 55
UPDATE `house` SET keeper_id = '50609' WHERE house_id = '458808';
UPDATE `house` SET keeper_id = '50559' WHERE house_id = '458809';
UPDATE `house` SET keeper_id = '50592' WHERE house_id = '458810';
UPDATE `house` SET keeper_id = '50604' WHERE house_id = '458811';
UPDATE `house` SET keeper_id = '50555' WHERE house_id = '458812';
-- 60
UPDATE `house` SET keeper_id = '50606' WHERE house_id = '458813';
UPDATE `house` SET keeper_id = '50586' WHERE house_id = '458814';
UPDATE `house` SET keeper_id = '50601' WHERE house_id = '458815';
UPDATE `house` SET keeper_id = '50550' WHERE house_id = '458816';
UPDATE `house` SET keeper_id = '50563' WHERE house_id = '458817';
-- 65
UPDATE `house` SET keeper_id = '50552' WHERE house_id = '458818';
UPDATE `house` SET keeper_id = '50613' WHERE house_id = '458819';

-- Adding more quest items to restrict on drops. First we make sure to delete them:
DELETE FROM `quest_drops` WHERE item_id IN (40609, 40611, 40612, 40610, 41229);

-- Gandi Spellbook
INSERT INTO `quest_drops` VALUES ('40609', 'E');
-- Duda-Mara Spellbook
INSERT INTO `quest_drops` VALUES ('40611', 'E');
-- Atuba Spellbook
INSERT INTO `quest_drops` VALUES ('40612', 'E');
-- Neruga Spellbook
INSERT INTO `quest_drops` VALUES ('40610', 'E');
-- Skeleton Skull
INSERT INTO `quest_drops` VALUES ('41229', 'W');

-- Deleting duplicated Talking Scroll quest NPCs (Serian in TI and Lekman in SKT: both are in SI and HV)
-- To have them you need to set the flag in altsettings.TalkingScrollQuest to True, allegedly this was only active in
-- the Lands of Aden server US ruleset, so by default is False (Depardieu/Ken Rauhel).
DELETE FROM `spawnlist_npc` WHERE id = 87557 AND location = 'Serian';
DELETE FROM `spawnlist_npc` WHERE id = 140887 AND location = 'Lekman';

-- Restoring original position of Serian, it was previously modified to be more easy to find but the original position
-- is close to the Quest NPC Ruba. Lekman in HV is also a bit separated from the starting point and was left untouched.
-- Both have the design to reward the player if they do exploration.
UPDATE `spawnlist_npc` SET locx = 32788, locy = 32785 WHERE id = 87546 AND location = 'Serian';

-- Fixing bug where Zeno (Teleporter from TI to SI) wasn't appearing if altsettings.TalkingScrollQuest was True
UPDATE `spawnlist_npc` SET count = 1 WHERE id = 50059 AND location = 'Zeno';

-- Restore WizLv30 Quest Ettin/Skeleton behavior with CANCELLATION + TURN UNDEAD + CREATE ZOMBIE
UPDATE `mapids` SET usable_item = '0', usable_skill = '0' WHERE mapid = '201';
UPDATE `npc` SET `name` = 'Ettin', nameid = '$1010', gfxid = 1128, undead = 0 WHERE npcid = 81109;
INSERT INTO `spawnlist_door` VALUES
('6200', 'Mage Quest Dungeon', '88', '32812', '32909', '201', '0', '0'),
('6201', 'Mage Quest Dungeon', '89', '32825', '32920', '201', '0', '0'),
('6202', 'Mage Quest Dungeon', '90', '32868', '32919', '201', '0', '0');
INSERT INTO `door_gfxs` VALUES (90, 'TICaves Doors' , 1, 0, 2);
UPDATE `door_gfxs` SET left_edge_offset = -1 WHERE gfxid = 88;
UPDATE `dungeon` SET src_x = '32867', src_y = '32920' WHERE src_mapid = '201';
INSERT INTO `spawnlist` (`location`, `count`, `npc_templateid`, `group_id`, `locx`, `locy`, `randomx`, `randomy`, `locx1`, `locy1`, `locx2`, `locy2`, `heading`, `min_respawn_delay`, `max_respawn_delay`, `mapid`, `respawn_screen`, `movement_distance`, `rest`, `near_spawn`, `spawn_home`, `spawn_home_range`, `spawn_home_count`, `spawn_home_delay`) VALUES
('Orc Zombie', '1', '45104', '0', '32873', '32920', '3', '3', '0', '0', '0', '0', '0', '60', '120', '201', '0', '0', '0', '0', '1', '8', '2', '100');
INSERT INTO `npc` VALUES
('71300', 'pedestal', '', '', 'L1FieldObject', '126', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0'),
('71301', 'zombie', '', '', 'L1FieldObject', '52', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0');
INSERT INTO `spawnlist_npc` (`location`, `count`, `npc_templateid`, `locx`, `locy`, `randomx`, `randomy`, `heading`, `respawn_delay`, `mapid`, `movement_distance`) VALUES
('zombie', '1', '71301', '32873', '32912', '0', '0', '4', '0', '201', '0'),
('zombie', '1', '71301', '32873', '32925', '0', '0', '0', '0', '201', '0'),
('pedestal-1', '1', '71300', '32873', '32912', '0', '0', '0', '0', '201', '0'),
('pedestal-2', '1', '71300', '32873', '32925', '0', '0', '0', '0', '201', '0'),
('pedestal-3', '1', '71300', '32862', '32927', '0', '0', '0', '0', '201', '0');

-- fix beleth entrance and exit room
INSERT INTO `dungeon` VALUES ('32768', '32749', '24', 'Windawood Castle Dungeon 2F', '32768', '32751', '24', 'Windawood Castle Dungeon 2F', '4');
INSERT INTO `dungeon` VALUES ('32769', '32749', '24', 'Windawood Castle Dungeon 2F', '32769', '32751', '24', 'Windawood Castle Dungeon 2F', '4');
INSERT INTO `dungeon` VALUES ('32768', '32786', '24', 'Windawood Castle Dungeon 2F', '32768', '32784', '24', 'Windawood Castle Dungeon 2F', '0');
INSERT INTO `dungeon` VALUES ('32769', '32786', '24', 'Windawood Castle Dungeon 2F', '32769', '32784', '24', 'Windawood Castle Dungeon 2F', '0');
INSERT INTO `dungeon` VALUES ('32751', '32768', '24', 'Windawood Castle Dungeon 2F', '32749', '32768', '24', 'Windawood Castle Dungeon 2F', '6');
INSERT INTO `dungeon` VALUES ('32751', '32769', '24', 'Windawood Castle Dungeon 2F', '32749', '32769', '24', 'Windawood Castle Dungeon 2F', '6');
INSERT INTO `dungeon` VALUES ('32784', '32768', '24', 'Windawood Castle Dungeon 2F', '32786', '32768', '24', 'Windawood Castle Dungeon 2F', '2');
INSERT INTO `dungeon` VALUES ('32784', '32769', '24', 'Windawood Castle Dungeon 2F', '32786', '32769', '24', 'Windawood Castle Dungeon 2F', '2');

-- add missing getback entries for hidden dock <-> pirate island (client crashes at port arrival if these are missing)
INSERT INTO `getback` VALUES ('0', '0', '0', '0', '447', '32297', '33087', '32297', '33087', '32297', '33087', '440', '0', '0', '0', '1', 'Ship hidden dock to pirate island');
INSERT INTO `getback` VALUES ('0', '0', '0', '0', '446', '32750', '32874', '32750', '32874', '32750', '32874', '445', '0', '0', '0', '1', 'Ship pirate island to hidden dock');

-- Correcting NPCs not responding due to missing Talk action in L1Npc impl
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70576; -- Garth, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70581; -- Gulian, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70582; -- Neil, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70583; -- Nelson, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70586; -- Daisy, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70589; -- Laban, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70591; -- Lina, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70592; -- Leal, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70593; -- Manus, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70615; -- Alda, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70616; -- Aldred, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70619; -- Alice, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70622; -- Eliza, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70624; -- Oliver, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70626; -- Jack, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70630; -- Giles, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70634; -- Tanya, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70637; -- Tovia, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70639; -- Ferdinand, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70640; -- Pierre, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70647; -- Gavin, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70648; -- Daley, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70659; -- Atara, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70735; -- Garuga, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70736; -- Derian, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70741; -- Dima, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70746; -- Rotus, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70752; -- Biyan, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70767; -- Haro, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70770; -- Deker, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70803; -- Anotte, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70812; -- Rohan, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70814; -- Ruka, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70819; -- Bob, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70821; -- Sanita, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70825; -- Ellne, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70828; -- Ofo, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70833; -- Tommy, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70834; -- Torban, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70839; -- Doett, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70854; -- Hurindalien, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70858; -- Derick, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70867; -- Shannon, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70871; -- Annabel, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70877; -- Trion, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70878; -- Felix, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70901; -- Jeti, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70604; -- Bridget, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70606; -- Victor, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70608; -- Shalina, was L1Npc
UPDATE npc SET impl = 'L1Merchant' WHERE npcid = 70621; -- Evelyn, was L1Npc

-- Fix empty dialogue
INSERT INTO `npcaction` VALUES ('70616', 'aldred1', 'aldred1', '', '');  -- Aldred
INSERT INTO `npcaction` VALUES ('70616', 'alfred', 'alfred1', '', ''); -- Alfred
INSERT INTO `npcaction` VALUES ('70622', 'eliza1', 'eliza1', '', ''); -- Eliza
INSERT INTO `npcaction` VALUES ('70745', 'roku', 'roku', '', ''); -- Roku
INSERT INTO `npcaction` VALUES ('70770', 'deker1', 'deker1', '', ''); -- Deker
UPDATE `npcaction` SET = normal_action = 'biyan', caotic_action = 'biyan' WHERE npcid = 70752;  -- Biyan
-- TODO NPC npcid = 70767 Haro displays empty dialogue box, reason: its html english file is named incorrectly as haro1-k.html, should be haro1-e.html

-- Fixing locations of NPCs (or missing NPCs)
INSERT INTO `spawnlist` (location,count,npc_templateid,group_id,locx,locy,randomx,randomy,locx1,locy1,locx2,locy2,heading,min_respawn_delay,max_respawn_delay,mapid,respawn_screen,movement_distance,rest,near_spawn,spawn_home,spawn_home_range,spawn_home_count,spawn_home_delay) VALUES
('Roku', '1', '70745', '0', '3.2766', '32844', '10', '10', '0', '0', '0', '0', '0', '120', '180', '77', '0', '100', '0', '0', '1', '8', '2', '100'); -- Roku put in Ivory Tower 3rd floor, was missing
UPDATE `spawnlist` SET locx = 32780, locy = 32840, mapid = 77 WHERE npc_templateid = 70752 and location = 'Biyan'; -- Biyan put in Ivory Tower 3rd floor, was Oren Town
