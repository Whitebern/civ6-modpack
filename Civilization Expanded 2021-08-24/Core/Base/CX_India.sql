/* 
	Civilizations Expanded: India
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: DHARMA (REWORK)
--=============================================================================================================
-- +50% Faith from Holy Site buildings.
-- Cities with a Worship Building receive Food, Production, and Gold equal to 15% of their Faith output.
-- Each city receives +1 Amenity from all present Religions as well as their Follower Belief bonuses.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_INDIA_REQUIRES_CITY_HAS_' ||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'P0K_INDIA_REQUIRES_CITY_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_INDIA_CITY_HAS_WORSHIP_BUILDING',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_INDIA_CITY_HAS_WORSHIP_BUILDING',	'P0K_INDIA_REQUIRES_CITY_HAS_' ||BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_BONUS_FAITH_FROM_HOLY_SITE_BUILDINGS',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT',	NULL),
		('P0K_TRAIT_FAITH_INTO_FOOD_WORSHIP_BUILDING',			'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_MODIFIER_FROM_FAITH',				'P0K_INDIA_CITY_HAS_WORSHIP_BUILDING'),
		('P0K_TRAIT_FAITH_INTO_PRODUCTION_WORSHIP_BUILDING',	'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_MODIFIER_FROM_FAITH',				'P0K_INDIA_CITY_HAS_WORSHIP_BUILDING'),
		('P0K_TRAIT_FAITH_INTO_GOLD_WORSHIP_BUILDING',			'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_MODIFIER_FROM_FAITH',				'P0K_INDIA_CITY_HAS_WORSHIP_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------				
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_BONUS_FAITH_FROM_HOLY_SITE_BUILDINGS',		'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_BONUS_FAITH_FROM_HOLY_SITE_BUILDINGS',		'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_BONUS_FAITH_FROM_HOLY_SITE_BUILDINGS',		'Amount',		50),
		('P0K_TRAIT_FAITH_INTO_FOOD_WORSHIP_BUILDING',			'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_FAITH_INTO_FOOD_WORSHIP_BUILDING',			'Amount',		15),
		('P0K_TRAIT_FAITH_INTO_PRODUCTION_WORSHIP_BUILDING',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_FAITH_INTO_PRODUCTION_WORSHIP_BUILDING',	'Amount',		15),
		('P0K_TRAIT_FAITH_INTO_GOLD_WORSHIP_BUILDING',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_FAITH_INTO_GOLD_WORSHIP_BUILDING',			'Amount',		15);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------		
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_DHARMA',	'P0K_TRAIT_BONUS_FAITH_FROM_HOLY_SITE_BUILDINGS'),
		('TRAIT_CIVILIZATION_DHARMA',	'P0K_TRAIT_FAITH_INTO_FOOD_WORSHIP_BUILDING'),
		('TRAIT_CIVILIZATION_DHARMA',	'P0K_TRAIT_FAITH_INTO_PRODUCTION_WORSHIP_BUILDING'),
		('TRAIT_CIVILIZATION_DHARMA',	'P0K_TRAIT_FAITH_INTO_GOLD_WORSHIP_BUILDING');
--=============================================================================================================
-- GANDHI LEADER UNIQUE ABILITY: GOSPEL OF THE CHARKHA (ENHANCEMENT)
--=============================================================================================================
-- One Military policy slot in each Government is converted into an Economic policy slot.
-- May purchase the first building in each specialty district with Faith.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType)
SELECT 'P0K_TRAIT_FAITH_PURCHASE_' ||BuildingType,	'MODIFIER_PLAYER_CITIES_ENABLE_SPECIFIC_BUILDING_FAITH_PURCHASE'
FROM Buildings WHERE (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs))
AND (PrereqDistrict IS NOT NULL) 
AND (PrereqDistrict IN (SELECT DistrictType FROM Districts WHERE RequiresPopulation = 1 AND TraitType IS NULL))
AND (TraitType IS NULL) 
AND (InternalOnly = 0);

INSERT INTO Modifiers
		(ModifierId,										ModifierType)								
VALUES	('P0K_TRAIT_REPLACE_MILITARY_SLOT_WITH_ECONOMIC',	'MODIFIER_PLAYER_CULTURE_REPLACE_GOVERNMENT_SLOTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
SELECT	'P0K_TRAIT_FAITH_PURCHASE_' ||BuildingType,	'BuildingType',	BuildingType
FROM Buildings WHERE (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs))
AND (PrereqDistrict IS NOT NULL) 
AND (PrereqDistrict IN (SELECT DistrictType FROM Districts WHERE RequiresPopulation = 1 AND TraitType IS NULL))
AND (TraitType IS NULL) 
AND (InternalOnly = 0);

INSERT INTO ModifierArguments
		(ModifierId,										Name,							Value)
VALUES	('P0K_TRAIT_REPLACE_MILITARY_SLOT_WITH_ECONOMIC',	'ReplacedGovernmentSlotType',	'SLOT_MILITARY'),
		('P0K_TRAIT_REPLACE_MILITARY_SLOT_WITH_ECONOMIC',	'AddedGovernmentSlotType',		'SLOT_ECONOMIC');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)	
SELECT 'TRAIT_LEADER_SATYAGRAHA',	'P0K_TRAIT_FAITH_PURCHASE_' ||BuildingType
FROM Buildings WHERE (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs))
AND (PrereqDistrict IS NOT NULL) 
AND (PrereqDistrict IN (SELECT DistrictType FROM Districts WHERE RequiresPopulation = 1 AND TraitType IS NULL))
AND (TraitType IS NULL) 
AND (InternalOnly = 0);

INSERT INTO TraitModifiers
		(TraitType,					ModifierId)	
VALUES	('TRAIT_LEADER_SATYAGRAHA',	'P0K_TRAIT_REPLACE_MILITARY_SLOT_WITH_ECONOMIC');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: STEPWELL (ENHANCEMENT)
--=============================================================================================================
-- Turn "+1 Food if adjacent to a Farm" into a proper adjacency.
-- Turn "+1 Faith if adjacent to a Holy Site" into a proper adjacency.
-- +1 Food at Feudalism.
-- Move bonus +1 Food from Professional Sports to Sanitation.
-- Give Tourism like other Unique Improvements.
-- Can be built on Volcanic Soil, Marsh, and Floodplains.
--=============================================================================================================	
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentImprovement,	AdjacentDistrict,		PrereqTech)
VALUES	('p0k_Stepwell_FarmFood',		'Placeholder',	'YIELD_FOOD',	1,				1,				'IMPROVEMENT_FARM',		NULL,					NULL),
		('p0k_Stepwell_HolySiteFaith',	'Placeholder',	'YIELD_FAITH',	1,				1,				NULL,					'DISTRICT_HOLY_SITE',	NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_STEPWELL',	'p0k_Stepwell_FarmFood'),
		('IMPROVEMENT_STEPWELL',	'p0k_Stepwell_HolySiteFaith');
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_BonusYieldChanges
SET PrereqCivic = 'CIVIC_FEUDALISM'
WHERE ImprovementType = 'IMPROVEMENT_STEPWELL'
AND YieldType = 'YIELD_FOOD';

INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,			YieldType,	BonusYieldChange,	PrereqTech)
VALUES	('201',	'IMPROVEMENT_STEPWELL',	'YIELD_FOOD',	1,					'TECH_SANITATION');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,			TourismSource,			PrereqTech,		ScalingFactor)
VALUES	('IMPROVEMENT_STEPWELL',	'TOURISMSOURCE_FOOD',	'TECH_FLIGHT',	100);
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_STEPWELL',	'FEATURE_MARSH'),
		('IMPROVEMENT_STEPWELL',	'FEATURE_FLOODPLAINS'),
		('IMPROVEMENT_STEPWELL',	'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_STEPWELL',	'FEATURE_FLOODPLAINS_PLAINS'),
		('IMPROVEMENT_STEPWELL',	'FEATURE_VOLCANIC_SOIL');
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM ImprovementModifiers WHERE ImprovementType = 'IMPROVEMENT_STEPWELL'
AND (ModifierId = 'STEPWELL_HOLYSITEADJACENCY_FAITH' 
OR ModifierId = 'STEPWELL_FARMADJACENCY_FOOD');
--=============================================================================================================
-- UNIQUE UNIT: VARU (ENHANCEMENT)
--=============================================================================================================
-- Available earlier at the Military Tradition civic.
-- Replaces the Heavy Chariot.
-- Upgrades into the Knight.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units SET PrereqTech = NULL, PrereqCivic = 'CIVIC_MILITARY_TRADITION' 
WHERE UnitType = 'UNIT_INDIAN_VARU'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,	ReplacesUnitType)
SELECT	'UNIT_INDIAN_VARU',	'UNIT_HEAVY_CHARIOT'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitUpgrades
---------------------------------------------------------------------------------------------------------------
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_KNIGHT' WHERE Unit = 'UNIT_INDIAN_VARU'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
