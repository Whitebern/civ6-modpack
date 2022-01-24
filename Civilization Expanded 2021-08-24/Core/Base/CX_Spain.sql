/* 
	Civilizations Expanded: Spain
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: TREASURE FLEET (ENHANCEMENT)
--=============================================================================================================
-- Gain +1 Trade Route capacity upon unlocking the Exploration civic.
-- +5 Gold, +2 Production, and +2 Food from Trade Routes between continents.
-- Traders cannot be plundered while traveling on Water.
-- May purchase naval units and Traders with Faith.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('P0K_ABILITY_TREASURE_FLEET',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,							Tag)
VALUES	('P0K_ABILITY_TREASURE_FLEET',	'CLASS_TRADER');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description,									Inactive,	Permanent)
VALUES	('P0K_ABILITY_TREASURE_FLEET',	'LOC_P0K_ABILITY_TREASURE_FLEET_NAME',	'LOC_P0K_ABILITY_TREASURE_FLEET_DESCRIPTION',	1,			1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_SPAIN_REQUIRES_PLAYER_HAS_EXPLORATION',	'REQUIREMENT_PLAYER_HAS_CIVIC');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('P0K_SPAIN_REQUIRES_PLAYER_HAS_EXPLORATION',	'CivicType',	'CIVIC_EXPLORATION');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------	
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_SPAIN_EXPLORATION_TRADE_ROUTE_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------	
INSERT INTO RequirementSetRequirements 
		(RequirementSetId,									RequirementId)
VALUES	('P0K_SPAIN_EXPLORATION_TRADE_ROUTE_REQUIREMENTS',	'REQUIRES_CAPITAL_CITY'),
		('P0K_SPAIN_EXPLORATION_TRADE_ROUTE_REQUIREMENTS',	'P0K_SPAIN_REQUIRES_PLAYER_HAS_EXPLORATION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_TRAIT_EXPLORATION_TRADE_ROUTE',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',					'P0K_SPAIN_EXPLORATION_TRADE_ROUTE_REQUIREMENTS'),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_FOOD',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		NULL),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_FOOD',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		NULL),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		NULL),
		('P0K_TREASURE_FLEET',									'MODIFIER_PLAYER_UNIT_ADJUST_TRADE_ROUTE_PLUNDER_IMMUNITY',		NULL),
		('P0K_TRAIT_TRADE_ROUTE_WATER_PLUNDER_IMMUNITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',							'UNIT_IS_TRADER'),
		('P0K_TRAIT_TRADER_FAITH_PURCHASE',						'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value)
VALUES	('P0K_TRAIT_EXPLORATION_TRADE_ROUTE',					'Amount',				1),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD',		'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD',		'Amount',				5),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD',		'Intercontinental',		1),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_FOOD',		'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_FOOD',		'Amount',				2),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_FOOD',		'Intercontinental',		1),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION',	'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION',	'Amount',				2),
		('P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION',	'Intercontinental',		1),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD',			'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD',			'Amount',				5),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD',			'Intercontinental',		1),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_FOOD',			'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_FOOD',			'Amount',				2),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_FOOD',			'Intercontinental',		1),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION',		'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION',		'Amount',				2),
		('P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION',		'Intercontinental',		1),
		('P0K_TREASURE_FLEET',									'DomainType',			'DOMAIN_SEA'),
		('P0K_TRAIT_TRADE_ROUTE_WATER_PLUNDER_IMMUNITY',		'AbilityType',			'P0K_ABILITY_TREASURE_FLEET'),
		('P0K_TRAIT_TRADER_FAITH_PURCHASE',						'Tag',					'CLASS_TRADER');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId)
VALUES	('P0K_ABILITY_TREASURE_FLEET',	'P0K_TREASURE_FLEET');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_TREASURE_FLEET' 
AND			ModifierId IN 
			('TRAIT_MISSION_IDENTITY_PER_TURN_MODIFIER',
			'TRAIT_INTERCONTINENTAL_DISTRICT_PRODUCTION',
			'TRAIT_DOMESTIC_FAITH',
			'TRAIT_DOMESTIC_GOLD',
			'TRAIT_DOMESTIC_PRODUCTION',
			'TRAIT_INTERCONTINENTAL_DOMESTIC_FAITH',
			'TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD',
			'TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION',
			'TRAIT_INTERNATIONAL_FAITH',
			'TRAIT_INTERNATIONAL_GOLD',
			'TRAIT_INTERNATIONAL_PRODUCTION',
			'TRAIT_INTERCONTINENTAL_INTERNATIONAL_FAITH',
			'TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD',
			'TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_EXPLORATION_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_GOLD'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_FOOD'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_INTERNATIONAL_PRODUCTION'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_GOLD'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_FOOD'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_INTERCONTINENTAL_DOMESTIC_PRODUCTION'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_TRADE_ROUTE_WATER_PLUNDER_IMMUNITY'),
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'TRAIT_NAVAL_CARRIER_FAITH'),							-- from Gitarja
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'TRAIT_NAVAL_MELEE_FAITH'),								-- from Gitarja
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'TRAIT_NAVAL_RAIDER_FAITH'),							-- from Gitarja
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'TRAIT_NAVAL_RANGED_FAITH'),							-- from Gitarja
		('TRAIT_CIVILIZATION_TREASURE_FLEET',	'P0K_TRAIT_TRADER_FAITH_PURCHASE');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EL ESCORIAL (ENHANCEMENT)
--=============================================================================================================
-- +25% Science, Production, and Faith in the Capital.
-- Constructing buildings grants a burst of Science equal to 15% of the Production cost.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType)
VALUES	('P0K_EL_ESCORIAL_CAPITAL_SCIENCE',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER'),
		('P0K_EL_ESCORIAL_CAPITAL_PRODUCTION',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER'),
		('P0K_EL_ESCORIAL_CAPITAL_FAITH',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER'),
		('P0K_EL_ESCORIAL_CAPITAL_GOLD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER'),
		('P0K_EL_ESCORIAL_SCIENCE_FROM_BUILDINGS',	'MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_BUILDING_COST');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value)
VALUES	('P0K_EL_ESCORIAL_CAPITAL_SCIENCE',			'YieldType',					'YIELD_SCIENCE'),
		('P0K_EL_ESCORIAL_CAPITAL_SCIENCE',			'Amount',						25),
		('P0K_EL_ESCORIAL_CAPITAL_PRODUCTION',		'YieldType',					'YIELD_PRODUCTION'),
		('P0K_EL_ESCORIAL_CAPITAL_PRODUCTION',		'Amount',						25),
		('P0K_EL_ESCORIAL_CAPITAL_FAITH',			'YieldType',					'YIELD_FAITH'),
		('P0K_EL_ESCORIAL_CAPITAL_FAITH',			'Amount',						25),
		('P0K_EL_ESCORIAL_CAPITAL_GOLD',			'YieldType',					'YIELD_GOLD'),
		('P0K_EL_ESCORIAL_CAPITAL_GOLD',			'Amount',						25),
		('P0K_EL_ESCORIAL_SCIENCE_FROM_BUILDINGS',	'YieldType',					'YIELD_SCIENCE'),
		('P0K_EL_ESCORIAL_SCIENCE_FROM_BUILDINGS',	'BuildingProductionPercent',	15),
		('P0K_EL_ESCORIAL_SCIENCE_FROM_BUILDINGS',	'IncludeWonder',				0);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_EL_ESCORIAL',	'P0K_EL_ESCORIAL_CAPITAL_SCIENCE'),
		('TRAIT_LEADER_EL_ESCORIAL',	'P0K_EL_ESCORIAL_CAPITAL_PRODUCTION'),
		('TRAIT_LEADER_EL_ESCORIAL',	'P0K_EL_ESCORIAL_CAPITAL_FAITH'),
		('TRAIT_LEADER_EL_ESCORIAL',	'P0K_EL_ESCORIAL_CAPITAL_GOLD'),
		('TRAIT_LEADER_EL_ESCORIAL',	'P0K_EL_ESCORIAL_SCIENCE_FROM_BUILDINGS');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: MISSION (REWORK)
--=============================================================================================================
-- New base yield is +1 Science, +1 Faith, and +1 Gold.
-- +0.5 Housing. 
-- Available at Theology.
-- +1 Science from every adjacent Luxury.
-- +1 Gold from every adjacent Farm.
-- +2 Faith, +1 Food, and +1 Production if on a foreign continent.
-- +2 Science at Cultural Heritage.
-- +2 Food at Sanitation.
-- Add Tourism at Flight like other UIs.
-- Can be built on Volcanic Soil, Marsh, and Oases.
-- Must be built adjacent to a Bonus or Luxury resource.
--=============================================================================================================
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvement_YieldChanges
SET		YieldChange = 1
WHERE	ImprovementType = 'IMPROVEMENT_MISSION'
AND		(YieldType = 'YIELD_FAITH' OR YieldType = 'YIELD_SCIENCE');

INSERT INTO Improvement_YieldChanges
		(ImprovementType,		YieldType,		YieldChange)
VALUES	('IMPROVEMENT_MISSION',	'YIELD_GOLD',	1);
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement)
VALUES	('p0k_Mission_Gold_Farm',		'Placeholder',	'YIELD_GOLD',		1,				1,				'IMPROVEMENT_FARM'),
		('p0k_Mission_Science_Luxury',	'Placeholder',	'YIELD_SCIENCE',	1,				1,				'IMPROVEMENT_PLANTATION');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies
WHERE		ImprovementType = 'IMPROVEMENT_MISSION'
AND			YieldChangeId IN ('Mission_Science_Campus',
			'Mission_Science_HolySite');


INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_MISSION',	'p0k_Mission_Gold_Farm'),
		('IMPROVEMENT_MISSION',	'p0k_Mission_Science_Luxury');
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,		YieldType,		BonusYieldChange,	PrereqTech)
VALUES	('299',	'IMPROVEMENT_MISSION',	'YIELD_FOOD',	2,					'TECH_SANITATION');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_MISSION',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_MISSION',	'FEATURE_MARSH');
---------------------------------------------------------------------------------------------------------------
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvements
SET		PrereqCivic = 'CIVIC_THEOLOGY',
		Housing = 1,
		TilesRequired = 2,
		RequiresAdjacentBonusOrLuxury = 1
WHERE	ImprovementType = 'IMPROVEMENT_MISSION';
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,		TourismSource,			PrereqTech,		ScalingFactor)
VALUES	('IMPROVEMENT_MISSION',	'TOURISMSOURCE_FAITH',	'TECH_FLIGHT',	100);