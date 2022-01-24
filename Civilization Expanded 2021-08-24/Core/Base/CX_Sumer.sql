/* 
	Civilizations Expanded: Sumer
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: CUNEIFORM (REWORK)
--=============================================================================================================
-- Begin the game with a random Technology unlocked.
-- Newly founded cities begin with +1 Population and +1 Housing.
-- All units ignore the Movement costs of crossing Rivers.
-- Farms adjacent to a River provide +1 Food as well as +1 Science if adjacent to a City Center or Aqueduct and +1 Faith if adjacent to a Ziggurat.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,														Kind)
VALUES	('P0K_MODIFIER_PLAYER_BUILT_CITIES_ADJUST_POLICY_HOUSING',	'KIND_MODIFIER'),
		('P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS',				'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,												CollectionType,						EffectType)
VALUES	('P0K_MODIFIER_PLAYER_BUILT_CITIES_ADJUST_POLICY_HOUSING',	'COLLECTION_PLAYER_BUILT_CITIES',	'EFFECT_ADJUST_POLICY_HOUSING');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,											Tag)
VALUES	('P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS',	'CLASS_ALL_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,								Name,													Description,													Inactive)
VALUES	('P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS',	'LOC_P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS_NAME',	'LOC_P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_CITY_CENTER',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_ZIGGURAT',	'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value)
VALUES	('P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_CITY_CENTER',	'DistrictType',		'DISTRICT_CITY_CENTER'),
		('P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_ZIGGURAT',	'ImprovementType',	'IMPROVEMENT_ZIGGURAT');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_SUMER_PLOT_HAS_FARM_RIVER',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_CITY_CENTER',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_ZIGGURAT',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_SUMER_PLOT_HAS_FARM_RIVER',				'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER',				'REQUIRES_PLOT_HAS_FARM'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_CITY_CENTER',	'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_CITY_CENTER',	'REQUIRES_PLOT_HAS_FARM'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_CITY_CENTER',	'P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_CITY_CENTER'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_ZIGGURAT',		'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_ZIGGURAT',		'REQUIRES_PLOT_HAS_FARM'),
		('P0K_SUMER_PLOT_HAS_FARM_RIVER_ZIGGURAT',		'P0K_SUMER_REQUIRES_PLOT_ADJACENT_TO_ZIGGURAT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,												RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CUNEIFORM_RANDOM_TECH',				'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY',					1,			1,			NULL),
		('P0K_TRAIT_EXTRA_POPULATION',					'MODIFIER_PLAYER_BUILT_CITIES_GRANT_FREE_POPULATION',		0,			0,			NULL),
		('P0K_TRAIT_EXTRA_HOUSING',						'P0K_MODIFIER_PLAYER_BUILT_CITIES_ADJUST_POLICY_HOUSING',	0,			0,			NULL),
		('P0K_TRAIT_GRANT_LAND_BETWEEN_RIVERS_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',						0,			0,			NULL),
		('P0K_TRAIT_ADJACENT_RIVER_FOOD_FARM',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			0,			'P0K_SUMER_PLOT_HAS_FARM_RIVER'),
		('P0K_TRAIT_ADJACENT_RIVER_SCIENCE_FARM',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			0,			'P0K_SUMER_PLOT_HAS_FARM_RIVER_CITY_CENTER'),
		('P0K_TRAIT_ADJACENT_RIVER_FAITH_FARM',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			0,			'P0K_SUMER_PLOT_HAS_FARM_RIVER_ZIGGURAT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_CUNEIFORM_RANDOM_TECH',				'Amount',		1),
		('P0K_TRAIT_EXTRA_POPULATION',					'Amount',		1),
		('P0K_TRAIT_EXTRA_HOUSING',						'Amount',		1),
		('P0K_TRAIT_GRANT_LAND_BETWEEN_RIVERS_ABILITY',	'AbilityType',	'P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS'),
		('P0K_TRAIT_ADJACENT_RIVER_FOOD_FARM',			'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_ADJACENT_RIVER_FOOD_FARM',			'Amount',		1),
		('P0K_TRAIT_ADJACENT_RIVER_SCIENCE_FARM',		'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_ADJACENT_RIVER_SCIENCE_FARM',		'Amount',		1),
		('P0K_TRAIT_ADJACENT_RIVER_FAITH_FARM',			'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_ADJACENT_RIVER_FAITH_FARM',			'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,								ModifierId)
VALUES	('P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS',	'MOD_IGNORE_CROSSING_RIVERS_COST');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_FIRST_CIVILIZATION' AND ModifierId IN
('TRAIT_BARBARIAN_CAMP_GOODY', 'TRAIT_LEVY_DISCOUNT');

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_CUNEIFORM_RANDOM_TECH'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_EXTRA_POPULATION'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_EXTRA_HOUSING'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_GRANT_LAND_BETWEEN_RIVERS_ABILITY'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_ADJACENT_RIVER_FOOD_FARM'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_ADJACENT_RIVER_SCIENCE_FARM'),
		('TRAIT_CIVILIZATION_FIRST_CIVILIZATION',	'P0K_TRAIT_ADJACENT_RIVER_FAITH_FARM');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: Defined in Gilgamesh folder.
--=============================================================================================================
-- UNIQUE IMPROVEMENT: ZIGGURAT (REWORK)
--=============================================================================================================
-- +1 Science and +1 Faith.
-- +1 Science if built on Floodplains or Marsh.
-- +1 Faith if in a city with a Holy Site.
-- +1 Science for every 2 adjacent Farms.
-- +1 Faith for each adjacent Luxury resource.
-- Change bonus Culture at Natural History to Science instead.
-- Cannot be built adjacent to another Ziggurat.
-- Change Tourism source to Science.
-- Can be built on Marsh and Volcanic Soil
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET SameAdjacentValid = 0 WHERE ImprovementType = 'IMPROVEMENT_ZIGGURAT';
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_ZIGGURAT',	'FEATURE_MARSH'),
		('IMPROVEMENT_ZIGGURAT',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_ZIGGURAT',	'FEATURE_OASIS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
DELETE FROM Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_ZIGGURAT' AND YieldType = 'YIELD_CULTURE';

UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_ZIGGURAT' AND YieldType = 'YIELD_SCIENCE';

INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,		YieldChange)
VALUES	('IMPROVEMENT_ZIGGURAT',	'YIELD_FAITH',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_BonusYieldChanges 
SET YieldType = 'YIELD_SCIENCE' 
WHERE Id = '21'
AND ImprovementType = 'IMPROVEMENT_ZIGGURAT';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement,	AdjacentResourceClass)
VALUES	('p0k_ZigguratScience_Farms',	'Placeholder',	'YIELD_SCIENCE',	1,				2,				'IMPROVEMENT_FARM',		'NO_RESOURCECLASS'),
		('p0k_ZigguratFaith_Luxuries',	'Placeholder',	'YIELD_FAITH',		1,				1,				NULL,					'RESOURCECLASS_LUXURY');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_ZIGGURAT',	'p0k_ZigguratScience_Farms'),
		('IMPROVEMENT_ZIGGURAT',	'p0k_ZigguratFaith_Luxuries');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
 UPDATE	Improvement_Tourism SET	TourismSource = 'TOURISMSOURCE_SCIENCE' WHERE ImprovementType = 'IMPROVEMENT_ZIGGURAT';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType)
VALUES	('P0K_SUMER_ZIGGURAT_FEATURES',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
VALUES	('P0K_SUMER_ZIGGURAT_FEATURES',	'REQUIRES_PLOT_HAS_MARSH'),
		('P0K_SUMER_ZIGGURAT_FEATURES',	'REQUIRES_PLOT_HAS_FLOODPLAINS_TAG');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,								SubjectRequirementSetId)
VALUES	('P0K_ZIGGURAT_BONUS_SCIENCE',		'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS',	'P0K_SUMER_ZIGGURAT_FEATURES'),
		('P0K_ZIGGURAT_HOLY_SITE_FAITH',	'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS',	'CITY_HAS_HOLY_SITE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)
VALUES	('P0K_ZIGGURAT_BONUS_SCIENCE',		'YieldType',	'YIELD_SCIENCE'),
		('P0K_ZIGGURAT_BONUS_SCIENCE',		'Amount',		1),
		('P0K_ZIGGURAT_HOLY_SITE_FAITH',	'YieldType',	'YIELD_FAITH'),
		('P0K_ZIGGURAT_HOLY_SITE_FAITH',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM ImprovementModifiers WHERE ImprovementType = 'IMPROVEMENT_ZIGGURAT' AND ModifierId = 'ZIGGURAT_RIVERADJACENCY_CULTURE';

INSERT INTO ImprovementModifiers
		(ImprovementType,			ModifierID)
VALUES	('IMPROVEMENT_ZIGGURAT',	'P0K_ZIGGURAT_BONUS_SCIENCE'),
		('IMPROVEMENT_ZIGGURAT',	'P0K_ZIGGURAT_HOLY_SITE_FAITH');
--=============================================================================================================
-- UNIQUE UNIT: WAR-CART (REWORK)
--=============================================================================================================
-- Reduced Strength and Cost.
-- Replaces the Heavy Chariot.
--=============================================================================================================
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
			(Type,						Tag)
VALUES		('UNIT_SUMERIAN_WAR_CART',	'CLASS_HEAVY_CAVALRY');
---------------------------------------------------------------------------------------------------------------
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units
SET	
	Cost 					= 	(SELECT ROUND(AVG(Cost)) FROM Units WHERE UnitType IN ('UNIT_HEAVY_CHARIOT', 'UNIT_WARRIOR')),
	Combat 					= 	(SELECT Combat FROM Units WHERE UnitType = 'UNIT_HEAVY_CHARIOT'), 
	MandatoryObsoleteTech 	= 	(SELECT MandatoryObsoleteTech FROM Units WHERE UnitType = 'UNIT_HEAVY_CHARIOT')
WHERE UnitType = 'UNIT_SUMERIAN_WAR_CART'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO UnitReplaces
			(CivUniqueUnitType,			ReplacesUnitType)
SELECT		'UNIT_SUMERIAN_WAR_CART',	'UNIT_HEAVY_CHARIOT'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
