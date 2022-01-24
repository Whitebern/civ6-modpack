/* 
	Civilizations Expanded: China
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: DYNASTIC CYCLE (ENHANCEMENT)
--=============================================================================================================
-- The Palace provides double Amenities, Housing, Science, Culture, Production, and Gold.
-- +15% Production towards Wonders when in a Golden Age.
-- Receive one extra Wildcard policy slot in any Government when in a Dark Age. 
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																	Kind)
VALUES	('P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,															CollectionType,						EffectType)
VALUES	('P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_BUILDING_YIELD_CHANGE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------	
INSERT INTO Modifiers
		(ModifierId,								ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CAPITAL_DOUBLE_AMENITIES',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_ENTERTAINMENT',				NULL),
		('P0K_TRAIT_CAPITAL_DOUBLE_HOUSING',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_HOUSING',					NULL),
		('P0K_TRAIT_PALACE_DOUBLE_SCIENCE',			'P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	NULL),
		('P0K_TRAIT_PALACE_DOUBLE_CULTURE',			'P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	NULL),
		('P0K_TRAIT_PALACE_DOUBLE_PRODUCTION',		'P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	NULL),
		('P0K_TRAIT_PALACE_DOUBLE_GOLD',			'P0K_CHINA_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_YIELD_CHANGE',	NULL),
		('P0K_TRAIT_GOLDEN_AGE_WONDER_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_PRODUCTION',						'PLAYER_HAS_GOLDEN_AGE'),
		('P0K_TRAIT_DARK_AGE_WILDCARD_POLICY',		'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',				'PLAYER_HAS_DARK_AGE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,					Value)
VALUES	('P0K_TRAIT_CAPITAL_DOUBLE_AMENITIES',		'Amount',				2),
		('P0K_TRAIT_CAPITAL_DOUBLE_HOUSING',		'Amount',				1),
		('P0K_TRAIT_PALACE_DOUBLE_SCIENCE',			'BuildingType',			'BUILDING_PALACE'),
		('P0K_TRAIT_PALACE_DOUBLE_SCIENCE',			'YieldType',			'YIELD_SCIENCE'),
		('P0K_TRAIT_PALACE_DOUBLE_SCIENCE',			'Amount',				2),
		('P0K_TRAIT_PALACE_DOUBLE_CULTURE',			'BuildingType',			'BUILDING_PALACE'),
		('P0K_TRAIT_PALACE_DOUBLE_CULTURE',			'YieldType',			'YIELD_CULTURE'),
		('P0K_TRAIT_PALACE_DOUBLE_CULTURE',			'Amount',				1),
		('P0K_TRAIT_PALACE_DOUBLE_PRODUCTION',		'BuildingType',			'BUILDING_PALACE'),
		('P0K_TRAIT_PALACE_DOUBLE_PRODUCTION',		'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_PALACE_DOUBLE_PRODUCTION',		'Amount',				2),
		('P0K_TRAIT_PALACE_DOUBLE_GOLD',			'BuildingType',			'BUILDING_PALACE'),
		('P0K_TRAIT_PALACE_DOUBLE_GOLD',			'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_PALACE_DOUBLE_GOLD',			'Amount',				5),
		('P0K_TRAIT_GOLDEN_AGE_WONDER_PRODUCTION',	'Amount',				15),
		('P0K_TRAIT_DARK_AGE_WILDCARD_POLICY',		'GovernmentSlotType',	'SLOT_WILDCARD');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_CAPITAL_DOUBLE_AMENITIES'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_CAPITAL_DOUBLE_HOUSING'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_PALACE_DOUBLE_SCIENCE'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_PALACE_DOUBLE_CULTURE'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_PALACE_DOUBLE_PRODUCTION'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_PALACE_DOUBLE_GOLD'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_GOLDEN_AGE_WONDER_PRODUCTION'),
		('TRAIT_CIVILIZATION_DYNASTIC_CYCLE',	'P0K_TRAIT_DARK_AGE_WILDCARD_POLICY');

-- Revert April 2021 changes
DELETE FROM TraitModifiers
WHERE		ModifierId IN 
			('TRAIT_TECHNOLOGY_BOOST_WONDER_ERA',
			'TRAIT_CIVIC_BOOST_WONDER_ERA')
AND			TraitType = 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE';
--=============================================================================================================
-- LEADER UNIQUE ABILITY: REFORMS OF LI SI (ENHANCEMENT)
--=============================================================================================================
-- Unlocking the Political Philosophy civic grants a random Eureka, a random Inspiration, and two free Builders in the Capital.
-- Wonders provide +4 Science.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_CHINA_MODIFIER_PLAYER_CITIES_ADJUST_WONDER_YIELD_CHANGE',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,				EffectType)
VALUES	('P0K_CHINA_MODIFIER_PLAYER_CITIES_ADJUST_WONDER_YIELD_CHANGE',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_WONDER_YIELD_CHANGE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('P0K_CHINA_PLAYER_HAS_POLITICAL_PHILOSOPHY_AND_CAPITAL',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,											RequirementId)
VALUES	('P0K_CHINA_PLAYER_HAS_POLITICAL_PHILOSOPHY_AND_CAPITAL',	'REQUIRES_CAPITAL_CITY'),
		('P0K_CHINA_PLAYER_HAS_POLITICAL_PHILOSOPHY_AND_CAPITAL',	'REQUIRES_PLAYER_HAS_POLITICAL_PHILOSOPHY');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,													RunOnce,	Permanent,	OwnerRequirementSetId,										SubjectRequirementSetId)
VALUES	('P0K_TRAIT_POLITICAL_PHILOSOPHY_EUREKA',		'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		1,			1,			NULL,														'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_INSPIRATION',	'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_GOODY_HUT',			1,			1,			NULL,														'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_BUILDERS',		'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',						1,			1,			'P0K_CHINA_PLAYER_HAS_POLITICAL_PHILOSOPHY_AND_CAPITAL',	NULL),
		('P0K_TRAIT_WONDER_SCIENCE',					'P0K_CHINA_MODIFIER_PLAYER_CITIES_ADJUST_WONDER_YIELD_CHANGE',	0,			0,			NULL,														NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('P0K_TRAIT_POLITICAL_PHILOSOPHY_EUREKA',		'Amount',				1),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_INSPIRATION',	'Amount',				1),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_BUILDERS',		'UnitType',				'UNIT_BUILDER'),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_BUILDERS',		'AllowUniqueOverride',	0),
		('P0K_TRAIT_POLITICAL_PHILOSOPHY_BUILDERS',		'Amount',				2),
		('P0K_TRAIT_WONDER_SCIENCE',					'YieldType',			'YIELD_SCIENCE'),
		('P0K_TRAIT_WONDER_SCIENCE',					'Amount',				4);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('FIRST_EMPEROR_TRAIT',	'P0K_TRAIT_POLITICAL_PHILOSOPHY_EUREKA'),
		('FIRST_EMPEROR_TRAIT',	'P0K_TRAIT_POLITICAL_PHILOSOPHY_INSPIRATION'),
		('FIRST_EMPEROR_TRAIT',	'P0K_TRAIT_POLITICAL_PHILOSOPHY_BUILDERS'),
		('FIRST_EMPEROR_TRAIT',	'P0K_TRAIT_WONDER_SCIENCE');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: GREAT WALL (REWORK)
--=============================================================================================================
-- Base yield is changed from +2 Gold to +1 Production and +1 Gold.
-- Replace +1 Culture from adjacent Great Walls at Castles; instead, +1 Science from adjacent Great Walls at Engineering.
-- Provides +1 Gold to all other adjacent tile improvements.
-- Can be built in Forest, Jungle, Marsh, Oasis, and Floodplains.
--=============================================================================================================
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_GREAT_WALL' AND YieldType = 'YIELD_GOLD';

DELETE FROM Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_GREAT_WALL' AND YieldType = 'YIELD_CULTURE'; 

INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange)
VALUES	('IMPROVEMENT_GREAT_WALL',	'YIELD_SCIENCE',	0),
		('IMPROVEMENT_GREAT_WALL',	'YIELD_PRODUCTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_GREAT_WALL',	'FEATURE_FOREST'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_JUNGLE'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_MARSH'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_FLOODPLAINS'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_FLOODPLAINS_PLAINS'),
		('IMPROVEMENT_GREAT_WALL',	'FEATURE_OASIS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges (adding base 0 Gold to all Improvements without this. Otherwise, the Great Wall 
-- won't apply the Gold adjacency bonus.
---------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_YieldChanges
		(ImprovementType,	YieldType,		YieldChange)
SELECT	ImprovementType,	'YIELD_GOLD',	0
FROM Improvements 
WHERE (TraitType IS NULL OR TraitType LIKE 'MINOR%');	
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,						Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement,		PrereqTech)
VALUES	('p0k_GreatWall_Gold',		'Placeholder',	'YIELD_GOLD',		1,				1,				'IMPROVEMENT_GREAT_WALL',	NULL),
		('p0k_GreatWall_Science',	'Placeholder',	'YIELD_SCIENCE',	1,				1,				'IMPROVEMENT_GREAT_WALL',	'TECH_ENGINEERING');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_GREAT_WALL' AND YieldChangeId = 'GreatWall_Culture';


INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_GREAT_WALL',	'p0k_GreatWall_Science');

INSERT INTO Improvement_Adjacencies
		(ImprovementType,	YieldChangeId)
SELECT	ImprovementType,	'p0k_GreatWall_Gold'
FROM Improvements 
WHERE (TraitType IS NULL OR TraitType LIKE 'MINOR%');
--=============================================================================================================
-- UNIQUE UNIT: CROUCHING TIGER (ENHANCEMENT)
--=============================================================================================================
-- Now replaces the Crossbow (with associated increase in Production cost).
-- Increase Melee strength to 35.
-- Combat victories grant Science equal to half of the Combat Strength of the defeated unit.
--=============================================================================================================
-- Tags
---------------------------------------------------------------------------------------------------------------
INSERT INTO Tags
		(Tag,							Vocabulary)
VALUES	('P0K_CLASS_CROUCHING_TIGER',	'ABILITY_CLASS');
---------------------------------------------------------------------------------------------------------------
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('P0K_ABILITY_CROUCHING_TIGER',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('UNIT_CHINESE_CROUCHING_TIGER',	'P0K_CLASS_CROUCHING_TIGER'),
		('P0K_ABILITY_CROUCHING_TIGER',		'P0K_CLASS_CROUCHING_TIGER');
---------------------------------------------------------------------------------------------------------------
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units
SET Cost = (SELECT Cost FROM Units WHERE UnitType = 'UNIT_CROSSBOWMAN'), Combat = Combat+5
WHERE UnitType = 'UNIT_CHINESE_CROUCHING_TIGER'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,				ReplacesUnitType)
SELECT	'UNIT_CHINESE_CROUCHING_TIGER',	'UNIT_CROSSBOWMAN'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType)
VALUES	('P0K_CROUCHING_TIGER_POST_COMBAT_SCIENCE',	'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------		
INSERT INTO ModifierArguments
		(ModifierId,								Name,						Value)
VALUES	('P0K_CROUCHING_TIGER_POST_COMBAT_SCIENCE',	'YieldType',				'YIELD_SCIENCE'),
		('P0K_CROUCHING_TIGER_POST_COMBAT_SCIENCE',	'PercentDefeatedStrength',	50);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,								Description)
VALUES	('P0K_ABILITY_CROUCHING_TIGER',	'LOC_ABILITY_CROUCHING_TIGER_NAME',	'LOC_ABILITY_CROUCHING_TIGER_DESCRIPTION');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId)
VALUES	('P0K_ABILITY_CROUCHING_TIGER',	'P0K_CROUCHING_TIGER_POST_COMBAT_SCIENCE');