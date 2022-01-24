--=============================================================================================================
-- CIVILIZATIONS EXPANDED: GILGAMESH
-- (BABYLON DLC NOT ACTIVATED)
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EPIC OF GILGAMESH (REWORK)
--=============================================================================================================
-- Upon unlocking the Masonry technology, all cities receive free Ancient Walls.
-- May purchase City Center buildings with Faith.
-- +5 Combat Strength against Barbarians.
-- Upon capturing a Barbarian Outpost, receive a Tribal Village reward in addition to the usual Gold.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,														Kind)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE', 'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers 
		(ModifierType,												CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE', 'COLLECTION_PLAYER_CITIES', 'EFFECT_GRANT_BUILDING_IN_CITY_IGNORE');
---------------------------------------------------------------------------------------------------------------
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
VALUES	('P0K_TRAIT_FREE_ANCIENT_WALLS',				'P0K_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE',	NULL),
		('P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL),
		('P0K_TRAIT_BARBARIAN_COMBAT_BONUS',			'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT',			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_FREE_ANCIENT_WALLS',				'BuildingType',	'BUILDING_WALLS'),
		('P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS',	'DistrictType',	'DISTRICT_CITY_CENTER'),
		('P0K_TRAIT_BARBARIAN_COMBAT_BONUS',			'Amount',		5);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_ADVENTURES_ENKIDU' AND ModifierId IN
('TRAIT_ADJUST_ALLIED_WAR_DISCOUNT', 'TRAIT_ADJUST_JOINTWAR_EXPERIENCE', 'TRAIT_ADJUST_JOINTWAR_PLUNDER',
'TRAIT_ALLIANCE_POINTS_FROM_COMMON_FOE', 'TRAIT_ATTACH_ALLIANCE_COMBAT_ADJUSTMENT');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_ADVENTURES_ENKIDU',	'P0K_TRAIT_FREE_ANCIENT_WALLS'),
		('TRAIT_LEADER_ADVENTURES_ENKIDU',	'P0K_TRAIT_FAITH_BUY_CITY_CENTER_BUILDINGS'),
		('TRAIT_LEADER_ADVENTURES_ENKIDU',	'P0K_TRAIT_BARBARIAN_COMBAT_BONUS'),
		('TRAIT_LEADER_ADVENTURES_ENKIDU',	'TRAIT_BARBARIAN_CAMP_GOODY');