/* 
	Civilizations Expanded: Persia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: ROYAL ROAD (REWORK)
--=============================================================================================================
-- Unlocking a new Government tier grants +3 Envoys, +2 Trade Route capacity, and a random Eureka.
-- Trade Routes gain +1 Food, +1 Production, and +1 Gold for passing through Trading Posts in Persian cities.
-- Trade Routes to the Capital gain +1 Science, +1 Culture, +1 Faith, +1 Food, +1 Production, and +1 Gold.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																Kind)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_TRADE_ROUTE_CAPACITY',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,														CollectionType,						EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_TRADE_ROUTE_CAPACITY',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
				(RequirementId,										RequirementType)
SELECT DISTINCT 'P0K_PERSIA_REQUIRES_PLAYER_HAS_' ||PrereqCivic,	'REQUIREMENT_PLAYER_HAS_CIVIC'
FROM Governments 
WHERE PrereqCivic <> 'CIVIC_POLITICAL_PHILOSOPHY';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
SELECT DISTINCT 'P0K_PERSIA_REQUIRES_PLAYER_HAS_' ||PrereqCivic,	'CivicType',	PrereqCivic
FROM Governments 
WHERE PrereqCivic <> 'CIVIC_POLITICAL_PHILOSOPHY';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_PERSIA_PLAYER_HAS_TIER_2_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_PERSIA_PLAYER_HAS_TIER_3_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_PERSIA_PLAYER_HAS_TIER_4_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_PERSIA_CITY_HAS_PALACE',				'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_PERSIA_CITY_HAS_PALACE',				'REQUIRES_CITY_HAS_PALACE');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_PERSIA_PLAYER_HAS_TIER_2_GOV_CIVICS',	'P0K_PERSIA_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier2';

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_PERSIA_PLAYER_HAS_TIER_3_GOV_CIVICS',	'P0K_PERSIA_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier3';

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_PERSIA_PLAYER_HAS_TIER_4_GOV_CIVICS',	'P0K_PERSIA_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier4';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,														RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_ROYAL_ROAD_TIER_1_GOV_ENVOYS',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',							1,			1,			'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_ROYAL_ROAD_TIER_1_GOV_TRADE_ROUTE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',						1,			1,			'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_ROYAL_ROAD_TIER_1_GOV_EUREKA',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',			1,			1,			'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_ROYAL_ROAD_TIER_2_GOV_ENVOYS',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',							1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_2_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_2_GOV_TRADE_ROUTE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',						1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_2_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_2_GOV_EUREKA',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',			1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_2_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_3_GOV_ENVOYS',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',							1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_3_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_3_GOV_TRADE_ROUTE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',						1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_3_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_3_GOV_EUREKA',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',			1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_3_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_4_GOV_ENVOYS',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',							1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_4_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_4_GOV_TRADE_ROUTE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',						1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_4_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_TIER_4_GOV_EUREKA',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',			1,			1,			'P0K_PERSIA_PLAYER_HAS_TIER_4_GOV_CIVICS'),
		('P0K_ROYAL_ROAD_FOOD_TRADING_POST',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',	0,			0,			NULL),
		('P0K_ROYAL_ROAD_PRODUCTION_TRADING_POST',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',	0,			0,			NULL),
		('P0K_ROYAL_ROAD_GOLD_TRADING_POST',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',	0,			0,			NULL),
		('P0K_ROYAL_ROAD_CAPITAL_SCIENCE',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE'),		
		('P0K_ROYAL_ROAD_CAPITAL_CULTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE'),		
		('P0K_ROYAL_ROAD_CAPITAL_FAITH',				'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE'),		
		('P0K_ROYAL_ROAD_CAPITAL_FOOD',					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE'),		
		('P0K_ROYAL_ROAD_CAPITAL_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE'),		
		('P0K_ROYAL_ROAD_CAPITAL_GOLD',					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		0,			0,			'P0K_PERSIA_CITY_HAS_PALACE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_ROYAL_ROAD_TIER_1_GOV_ENVOYS',			'Amount',		3),
		('P0K_ROYAL_ROAD_TIER_1_GOV_TRADE_ROUTE',		'Amount',		2),
		('P0K_ROYAL_ROAD_TIER_1_GOV_EUREKA',			'Amount',		1),
		('P0K_ROYAL_ROAD_TIER_2_GOV_ENVOYS',			'Amount',		3),
		('P0K_ROYAL_ROAD_TIER_2_GOV_TRADE_ROUTE',		'Amount',		2),
		('P0K_ROYAL_ROAD_TIER_2_GOV_EUREKA',			'Amount',		1),
		('P0K_ROYAL_ROAD_TIER_3_GOV_ENVOYS',			'Amount',		3),
		('P0K_ROYAL_ROAD_TIER_3_GOV_TRADE_ROUTE',		'Amount',		2),
		('P0K_ROYAL_ROAD_TIER_3_GOV_EUREKA',			'Amount',		1),
		('P0K_ROYAL_ROAD_TIER_4_GOV_ENVOYS',			'Amount',		3),
		('P0K_ROYAL_ROAD_TIER_4_GOV_TRADE_ROUTE',		'Amount',		2),
		('P0K_ROYAL_ROAD_TIER_4_GOV_EUREKA',			'Amount',		1),
		('P0K_ROYAL_ROAD_FOOD_TRADING_POST',			'YieldType',	'YIELD_FOOD'),
		('P0K_ROYAL_ROAD_FOOD_TRADING_POST',			'Amount',		1),
		('P0K_ROYAL_ROAD_PRODUCTION_TRADING_POST',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_ROYAL_ROAD_PRODUCTION_TRADING_POST',		'Amount',		1),
		('P0K_ROYAL_ROAD_GOLD_TRADING_POST',			'YieldType',	'YIELD_GOLD'),
		('P0K_ROYAL_ROAD_GOLD_TRADING_POST',			'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_SCIENCE',				'YieldType',	'YIELD_SCIENCE'),
		('P0K_ROYAL_ROAD_CAPITAL_SCIENCE',				'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_SCIENCE',				'Domestic',		1),
		('P0K_ROYAL_ROAD_CAPITAL_CULTURE',				'YieldType',	'YIELD_CULTURE'),
		('P0K_ROYAL_ROAD_CAPITAL_CULTURE',				'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_CULTURE',				'Domestic',		1),
		('P0K_ROYAL_ROAD_CAPITAL_FAITH',				'YieldType',	'YIELD_FAITH'),
		('P0K_ROYAL_ROAD_CAPITAL_FAITH',				'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_FAITH',				'Domestic',		1),
		('P0K_ROYAL_ROAD_CAPITAL_FOOD',					'YieldType',	'YIELD_FOOD'),
		('P0K_ROYAL_ROAD_CAPITAL_FOOD',					'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_FOOD',					'Domestic',		1),
		('P0K_ROYAL_ROAD_CAPITAL_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_ROYAL_ROAD_CAPITAL_PRODUCTION',			'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_PRODUCTION',			'Domestic',		1),
		('P0K_ROYAL_ROAD_CAPITAL_GOLD',					'YieldType',	'YIELD_GOLD'),
		('P0K_ROYAL_ROAD_CAPITAL_GOLD',					'Amount',		1),
		('P0K_ROYAL_ROAD_CAPITAL_GOLD',					'Domestic',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_SATRAPIES' AND ModifierId IN
('TRAIT_SATRAPIES_IMPROVED_ROUTE_LEVEL', 'TRAIT_SATRAPIES_INTERNAL_TRADE_CULTURE', 'TRAIT_SATRAPIES_INTERNAL_TRADE_GOLD',
'TRAIT_SATRAPIES_POLITICAL_PHILOSOPHY_TRADE_ROUTE');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_1_GOV_ENVOYS'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_1_GOV_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_1_GOV_EUREKA'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_2_GOV_ENVOYS'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_2_GOV_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_2_GOV_EUREKA'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_3_GOV_ENVOYS'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_3_GOV_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_3_GOV_EUREKA'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_4_GOV_ENVOYS'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_4_GOV_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_TIER_4_GOV_EUREKA'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_FOOD_TRADING_POST'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_PRODUCTION_TRADING_POST'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_GOLD_TRADING_POST'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_SCIENCE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_CULTURE'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_FAITH'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_FOOD'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_PRODUCTION'),
		('TRAIT_CIVILIZATION_SATRAPIES',	'P0K_ROYAL_ROAD_CAPITAL_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EMPIRE OF ALL NATIONS (REWORK)
--=============================================================================================================
-- Upon becoming Suzerain of any City-State for the first time, receive a random Inspiration and a free Builder in the Capital.
-- Military units receive +25% combat experience when fighting outside of Persian territory.
-- Conquering a city immediately creates a Trading Post in that city and a road to the Capital if within range.
-- +5 Loyalty in conquered cities.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																Kind)
VALUES	('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_TRADING_POST',			'KIND_MODIFIER'),
		('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_ROAD_TO_CAPITAL',		'KIND_MODIFIER'),
		('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_ADJUST_IDENTITY_PER_TURN',	'KIND_MODIFIER'),
		('P0K_PERSIA_ABILITY_FALL_BABYLON',									'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('P0K_PERSIA_ABILITY_FALL_BABYLON',	'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description,										Inactive)
VALUES	('P0K_PERSIA_ABILITY_FALL_BABYLON',	'LOC_P0K_PERSIA_ABILITY_FALL_BABYLON_NAME',	'LOC_P0K_PERSIA_ABILITY_FALL_BABYLON_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,														CollectionType,							EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_TRADING_POST',			'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_GRANT_CITY_TRADING_POST'),
		('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_ROAD_TO_CAPITAL',		'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_GRANT_CITY_ROAD_TO_CAPITAL'),
		('P0K_MODIFIER_PLAYER_CAPTURED_CITIES_ADJUST_IDENTITY_PER_TURN',	'COLLECTION_PLAYER_CAPTURED_CITIES',	'EFFECT_ADJUST_CITY_IDENTITY_PER_TURN');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('P0K_PERSIA_REQUIRES_LEADER_IS_CYRUS',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value)
VALUES	('P0K_PERSIA_REQUIRES_LEADER_IS_CYRUS',	'LeaderType',	'LEADER_CYRUS');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_PERSIA_CYRUS_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_PERSIA_CYRUS_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_PERSIA_CYRUS_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN_BONUS_ENABLED'),
		('P0K_PERSIA_CYRUS_IS_SUZERAIN',	'REQUIRES_PLAYER_AT_PEACE'),
		('P0K_PERSIA_CYRUS_IS_SUZERAIN',	'P0K_PERSIA_REQUIRES_LEADER_IS_CYRUS');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,													RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_FALL_BABYLON_INSPIRATION',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							0,			1,			'P0K_PERSIA_CYRUS_IS_SUZERAIN'),
		('P0K_FALL_BABYLON_INSPIRATION_MODIFIER',		'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_GOODY_HUT',			1,			1,			NULL),
		('P0K_FALL_BABYLON_BUILDER',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							0,			1,			'P0K_PERSIA_CYRUS_IS_SUZERAIN'),
		('P0K_FALL_BABYLON_BUILDER_MODIFIER',			'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',						1,			1,			NULL),
		('P0K_FALL_BABYLON_EXPERIENCE_BOOST',			'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER',			0,			0,			'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'),	
		('P0K_FALL_BABYLON_EXPERIENCE_BOOST_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',							0,			0,			NULL),
		('P0K_FALL_BABYLON_CONQUEST_TRADING_POST',		'P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_TRADING_POST',		0,			0,			NULL), -- No argument
		('P0K_FALL_BABYLON_CONQUEST_CAPITAL_ROAD',		'P0K_MODIFIER_PLAYER_CAPTURED_CITIES_GRANT_ROAD_TO_CAPITAL',	0,			0,			NULL), -- No argument
		('P0K_FALL_BABYLON_CONQUERED_CITY_LOYALTY',		'P0K_MODIFIER_PLAYER_CAPTURED_CITIES_ADJUST_IDENTITY_PER_TURN',	0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_FALL_BABYLON_INSPIRATION',				'ModifierId',	'P0K_FALL_BABYLON_INSPIRATION_MODIFIER'),
		('P0K_FALL_BABYLON_INSPIRATION_MODIFIER',		'Amount',		1),
		('P0K_FALL_BABYLON_BUILDER',					'ModifierId',	'P0K_FALL_BABYLON_BUILDER_MODIFIER'),
		('P0K_FALL_BABYLON_BUILDER_MODIFIER',			'UnitType',		'UNIT_BUILDER'),
		('P0K_FALL_BABYLON_BUILDER_MODIFIER',			'Amount',		1),
		('P0K_FALL_BABYLON_EXPERIENCE_BOOST',			'Amount',		25),
		('P0K_FALL_BABYLON_EXPERIENCE_BOOST_ABILITY',	'AbilityType',	'P0K_PERSIA_ABILITY_FALL_BABYLON'),
		('P0K_FALL_BABYLON_CONQUERED_CITY_LOYALTY',		'Amount',		5);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('P0K_PERSIA_ABILITY_FALL_BABYLON',	'P0K_FALL_BABYLON_EXPERIENCE_BOOST');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_FALL_BABYLON' AND ModifierId IN 
('TRAIT_ADDITIONAL_MARTIAL_LAW', 'TRAIT_FALLBABYLON_SURPRISE_MOVEMENT', 'TRAIT_FALLBABYLON_WARMONGER_MAX');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',		'P0K_FALL_BABYLON_INSPIRATION'),
		('MINOR_CIV_DEFAULT_TRAIT',		'P0K_FALL_BABYLON_BUILDER'),
		('TRAIT_LEADER_FALL_BABYLON',	'P0K_FALL_BABYLON_EXPERIENCE_BOOST_ABILITY'),
		('TRAIT_LEADER_FALL_BABYLON',	'P0K_FALL_BABYLON_CONQUEST_TRADING_POST'),
		('TRAIT_LEADER_FALL_BABYLON',	'P0K_FALL_BABYLON_CONQUEST_CAPITAL_ROAD'),
		('TRAIT_LEADER_FALL_BABYLON',	'P0K_FALL_BABYLON_CONQUERED_CITY_LOYALTY'),
		('TRAIT_LEADER_FALL_BABYLON',	'TRAIT_GAINS_ALL_FOLLOWER_BELIEFS');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: PAIRIDAEZA (ENHANCEMENT)
--=============================================================================================================
-- Add +1 Production and a +1 Gold adjacency bonus for Wonders.
-- Allow it to be built on Floodplains, Volcanic Soil, Marsh, and Oases.
-- Increase Appeal to +2 again (reverting April 2021 patch change)
--=============================================================================================================
-- Improvements
--=============================================================================================================
-- Revert April 2021 change
UPDATE	Improvements
SET		Appeal = 2
WHERE	ImprovementType = 'IMPROVEMENT_PAIRIDAEZA';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,		Yieldchange,	TilesRequired,	AdjacentWonder)
VALUES	('p0k_Pairidaeza_WonderGold',	'Placeholder',	'YIELD_GOLD',	1,				1,				1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_PAIRIDAEZA',	'p0k_Pairidaeza_WonderGold');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange)
VALUES	('IMPROVEMENT_PAIRIDAEZA',	'YIELD_PRODUCTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_FLOODPLAINS'),
		('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_FLOODPLAINS_PLAINS'),
		('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_MARSH'),
		('IMPROVEMENT_PAIRIDAEZA',	'FEATURE_OASIS');