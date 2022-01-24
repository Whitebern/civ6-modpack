--=============================================================================================================
-- CIVILIZATIONS EXPANDED: GILGAMESH
-- (HEROES MODE ACTIVATED)
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EPIC OF GILGAMESH (ENHANCEMENT)
--=============================================================================================================
-- May purchase City Center buildings with Faith.
-- +5 Combat Strength against Barbarians.
-- Upon capturing a Barbarian Outpost, receive a Tribal Village reward in addition to the usual Gold.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType,							Inverse)
VALUES	('P0K_SUMER_REQUIRES_LEADER_IS_NOT_GILGAMESH',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',	1);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value)
VALUES	('P0K_SUMER_REQUIRES_LEADER_IS_NOT_GILGAMESH',	'LeaderType',		'LEADER_GILGAMESH');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH',	'P0K_SUMER_REQUIRES_LEADER_IS_NOT_GILGAMESH'),
		('P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH',	'REQUIRES_PLAYER_AT_PEACE'),
		('P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH',	'REQUIRES_PLAYER_IS_SUZERAIN_BONUS_ENABLED');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_SUMER_SUZERAIN_IS_NOT_GILGAMESH' WHERE ModifierId = 'MINOR_CIV_VALLETTA_UNIQUE_INFLUENCE_CITY_CENTER_BUILDINGS_BONUS'; -- To avoid conflict.

INSERT INTO Modifiers
		(ModifierId,									ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL),
		('P0K_TRAIT_BARBARIAN_COMBAT_BONUS',			'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT',			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS',	'DistrictType',	'DISTRICT_CITY_CENTER'),
		('P0K_TRAIT_BARBARIAN_COMBAT_BONUS',			'Amount',		5);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_GILGAMESH_HEROES',	'P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS'),
		('TRAIT_LEADER_GILGAMESH_HEROES',	'P0K_TRAIT_BARBARIAN_COMBAT_BONUS'),
		('TRAIT_LEADER_GILGAMESH_HEROES',	'TRAIT_BARBARIAN_CAMP_GOODY');