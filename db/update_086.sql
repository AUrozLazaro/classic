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

-- put all aden houses up for auction
DELETE FROM board_auction WHERE house_area = 'Aden';

INSERT INTO board_auction (house_id, house_name, house_area, deadline, price, location, old_owner, old_owner_id, bidder, bidder_id)
SELECT house_id, house_name, house_area, '2009-01-24 00:00:00', 100000, 'Aden', '', 0, '', 0
FROM house 
WHERE location = 'Aden';

-- add missing aden housekeepers
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458753';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458754';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458755';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458756';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458757';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458758';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458759';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458760';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458761';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458762';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458763';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458764';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458765';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458766';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458767';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458768';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458769';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458770';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458771';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458772';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458773';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458774';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458775';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458776';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458777';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458778';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458779';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458780';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458781';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458782';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458783';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458784';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458785';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458786';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458787';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458788';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458789';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458790';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458791';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458792';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458793';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458794';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458795';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458796';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458797';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458798';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458799';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458800';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458801';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458802';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458803';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458804';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458805';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458806';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458807';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458808';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458809';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458810';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458811';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458812';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458813';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458814';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458815';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458816';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458817';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458818';
UPDATE `house` SET keeper_id = '505' WHERE house_id = '458819';

