/* 
	Civilizations Expanded: Poland
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: GOLDEN LIBERTY (ENHANCEMENT)
--=============================================================================================================
-- All Military policy slots in the current Government are converted to Wildcard policy slots.
-- Cities with a Governor generate +15% Production and +15% Gold.
-- Encanmpment buildings provide Culture equal to their intrinsic Production output.
-- (Remove the Fort Culture Bomb trigger).
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOVERNOR_CITY_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'CITY_HAS_GOVERNOR'),
		('P0K_TRAIT_GOVERNOR_CITY_GOLD',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'CITY_HAS_GOVERNOR'),
		('P0K_TRAIT_BARRACKS_STABLE_CULTURE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'BUILDING_IS_BARRACKS_STABLE_MILITARITIC_CITY_STATE'),
		('P0K_TRAIT_ARMORY_CULTURE',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'BUILDING_IS_ARMORY'),
		('P0K_TRAIT_MILITARY_ACADEMY_CULTURE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',		'BUILDING_IS_MILITARY_ACADEMY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('TRAIT_REPLACE_MILITARY_SLOT_WITH_WILDCARD',	'ReplacesAll',	1), -- adding this Argument to the existing Modifier
		('P0K_TRAIT_GOVERNOR_CITY_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_GOVERNOR_CITY_PRODUCTION',			'Amount',		15),
		('P0K_TRAIT_GOVERNOR_CITY_GOLD',				'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOVERNOR_CITY_GOLD',				'Amount',		15),
		('P0K_TRAIT_BARRACKS_STABLE_CULTURE',			'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_BARRACKS_STABLE_CULTURE',			'Amount',		1),
		('P0K_TRAIT_ARMORY_CULTURE',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_ARMORY_CULTURE',					'Amount',		3),
		('P0K_TRAIT_MILITARY_ACADEMY_CULTURE',			'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_MILITARY_ACADEMY_CULTURE',			'Amount',		4);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_GOLDEN_LIBERTY' and ModifierId = 'TRAIT_CULTURE_BOMB_TRIGGER_FORT';

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_TRAIT_GOVERNOR_CITY_PRODUCTION'),
		('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_TRAIT_GOVERNOR_CITY_GOLD'),
		('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_TRAIT_BARRACKS_STABLE_CULTURE'),
		('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_TRAIT_ARMORY_CULTURE'),
		('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_TRAIT_MILITARY_ACADEMY_CULTURE');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: LITHUANION UNION (ENHANCEMENT)
--=============================================================================================================
-- Converting a city to Poland's Religion grants +1 Era Score.
-- Receive two Relics upon entering a Golden Age.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
SELECT	'P0K_POLAND_REQUIRES_ERA_IS_' ||EraType,	'REQUIREMENT_GAME_ERA_IS'		
FROM Eras WHERE EraType <> 'ERA_ANCIENT';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,		Value)
SELECT	'P0K_POLAND_REQUIRES_ERA_IS_' ||EraType,	'EraType',	EraType				
FROM Eras WHERE EraType <> 'ERA_ANCIENT';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
SELECT	'P0K_POLAND_PLAYER_HAS_GOLDEN_AGE_' ||EraType,	'REQUIREMENTSET_TEST_ALL'				
FROM Eras WHERE EraType <> 'ERA_ANCIENT';
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'P0K_POLAND_PLAYER_HAS_GOLDEN_AGE_' ||EraType,	'P0K_POLAND_REQUIRES_ERA_IS_' ||EraType	
FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
SELECT	'P0K_POLAND_PLAYER_HAS_GOLDEN_AGE_' ||EraType,	'REQUIRES_PLAYER_HAS_GOLDEN_AGE'
FROM Eras WHERE EraType <> 'ERA_ANCIENT';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,					RunOnce,	Permanent,	SubjectRequirementSetId)
SELECT	'P0K_TRAIT_FREE_RELIC_' ||EraType,					'MODIFIER_PLAYER_GRANT_RELIC',	1,			1,			'P0K_POLAND_PLAYER_HAS_GOLDEN_AGE_' ||EraType
FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT INTO Modifiers
		(ModifierId,										ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_ERA_SCORE_FROM_RELIGIOUS_CONVERSION',	'MODIFIER_PLAYER_ADJUST_PLAYER_ERA_SCORE_PER_CITY_RELIGION_CONVERSION',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,		Value)
SELECT	'P0K_TRAIT_FREE_RELIC_' ||EraType,					'Amount',	2
FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_ERA_SCORE_FROM_RELIGIOUS_CONVERSION',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_LITHUANIAN_UNION',	'P0K_TRAIT_FREE_RELIC_' ||EraType
FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_LITHUANIAN_UNION',	'P0K_TRAIT_ERA_SCORE_FROM_RELIGIOUS_CONVERSION');
--=============================================================================================================
-- UNIQUE BUILDING: SUKIENNECE (ENHANCEMENT)
--=============================================================================================================
-- Completing a Sukiennice for the first time grants +1 Governor Title.
-- Bonus Culture equal to the Gold adjacency bonus of the Commercial Hub.
--=============================================================================================================
-- Building_YieldDistrictCopies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldDistrictCopies
		(BuildingType,			OldYieldType,	NewYieldType)
VALUES	('BUILDING_SUKIENNICE',	'YIELD_GOLD',	'YIELD_CULTURE');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_POLAND_REQUIRES_PLAYER_HAS_SUKIENNICE',	'REQUIREMENT_PLAYER_HAS_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('P0K_POLAND_REQUIRES_PLAYER_HAS_SUKIENNICE',	'BuildingType',	'BUILDING_SUKIENNICE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_POLAND_PLAYER_HAS_SUKIENNICE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_POLAND_PLAYER_HAS_SUKIENNICE',	'P0K_POLAND_REQUIRES_PLAYER_HAS_SUKIENNICE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_SUKIENNICE_GOVERNOR_TITLE',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',	1,			1,			'P0K_POLAND_PLAYER_HAS_SUKIENNICE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,		Value)
VALUES	('P0K_SUKIENNICE_GOVERNOR_TITLE',	'Delta',	1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_GOLDEN_LIBERTY',	'P0K_SUKIENNICE_GOVERNOR_TITLE');
