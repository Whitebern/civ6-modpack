/* 
	Civilizations Expanded: Japan
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: RISING SUN (REWORK)
--=============================================================================================================
-- +1 Amenity and +1 Housing to Coastal cities.
-- Campus, Theater Square, Holy Site, and Industrial Zone districts receive a minor adjacency bonus from Water tiles.
-- Gain access to the Fishery improvement after unlocking Sailing.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('P0K_JAPAN_REQUIRES_PLAYER_HAS_SAILING',	'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value)
VALUES	('P0K_JAPAN_REQUIRES_PLAYER_HAS_SAILING',	'TechnologyType',	'TECH_SAILING');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_JAPAN_PLAYER_HAS_SAILING',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_JAPAN_PLAYER_HAS_SAILING',	'P0K_JAPAN_REQUIRES_PLAYER_HAS_SAILING');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId)
VALUES	('P0K_TRAIT_RISING_SUN_COAST_CITY_AMENITY',			'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',	'PLOT_IS_COASTAL_LAND_REQUIREMENTS'),
		('P0K_TRAIT_RISING_SUN_COAST_CITY_HOUSING',			'MODIFIER_PLAYER_CITIES_ADJUST_WATER_HOUSING',	'PLOT_IS_COASTAL_LAND_REQUIREMENTS'),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',				'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',		NULL),	
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',				'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',		NULL),	
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',		NULL),	
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',		NULL),	
		('P0K_TRAIT_CAN_FISHERY',							'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',		'P0K_JAPAN_PLAYER_HAS_SAILING');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('P0K_TRAIT_RISING_SUN_COAST_CITY_AMENITY',				'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_CITY_HOUSING',				'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'DistrictType',		'DISTRICT_CAMPUS'),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'TerrainType',		'TERRAIN_COAST'),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'YieldType',		'YIELD_SCIENCE'),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'TilesRequired',	2),
		('P0K_TRAIT_RISING_SUN_COAST_CAMPUS',					'Description',		'LOC_P0K_DISTRICT_RISING_SUN_SCIENCE'),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'TerrainType',		'TERRAIN_COAST'),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'TilesRequired',	2),
		('P0K_TRAIT_RISING_SUN_COAST_THEATER',					'Description',		'LOC_P0K_DISTRICT_RISING_SUN_CULTURE'),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'DistrictType',		'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'TerrainType',		'TERRAIN_COAST'),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'YieldType',		'YIELD_FAITH'),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'TilesRequired',	2),
		('P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE',				'Description',		'LOC_P0K_DISTRICT_RISING_SUN_FAITH'),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'TerrainType',		'TERRAIN_COAST'),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'Amount',			1),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'TilesRequired',	2),
		('P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE',			'Description',		'LOC_P0K_DISTRICT_RISING_SUN_PRODUCTION'),
		('P0K_TRAIT_CAN_FISHERY',								'ImprovementType',	'IMPROVEMENT_FISHERY');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_CITY_AMENITY'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_CITY_HOUSING'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_CAMPUS'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_THEATER'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_HOLY_SITE'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_RISING_SUN_COAST_INDUSTRIAL_ZONE'),
		('TRAIT_CIVILIZATION_ADJACENT_DISTRICTS',	'P0K_TRAIT_CAN_FISHERY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: DIVINE WIND (ENHANCEMENT)
--=============================================================================================================
-- Water tiles provide +1 Faith.
-- Replace bonus Encampment production with bonus Harbor production.
-- May purchase buildings in these districts with Faith.
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,			RequirementSetType)
VALUES	('P0K_JAPAN_PLOT_IS_WATER',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,			RequirementId)
VALUES	('P0K_JAPAN_PLOT_IS_WATER',	'REQUIRES_TERRAIN_COAST'),
		('P0K_JAPAN_PLOT_IS_WATER',	'REQUIRES_TERRAIN_OCEAN');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FAITH_FROM_WATER',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'P0K_JAPAN_PLOT_IS_WATER'),
		('P0K_TRAIT_DIVINE_WIND_BOOST_HARBOR_PRODUCTION',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		NULL),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_THEATER_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HOLY_SITE_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HARBOR_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_FAITH_FROM_WATER',							'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_FROM_WATER',							'Amount',		1),
		('P0K_TRAIT_DIVINE_WIND_BOOST_HARBOR_PRODUCTION',		'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_DIVINE_WIND_BOOST_HARBOR_PRODUCTION',		'Amount',		100),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_THEATER_BUILDINGS',	'DistrictType',	'DISTRICT_THEATER'),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HOLY_SITE_BUILDINGS',	'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HARBOR_BUILDINGS',	'DistrictType',	'DISTRICT_HARBOR');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_DIVINE_WIND' AND ModifierId = 'TRAIT_BOOST_ENCAMPMENT_PRODUCTION';

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_DIVINE_WIND',	'P0K_TRAIT_FAITH_FROM_WATER'),
		('TRAIT_LEADER_DIVINE_WIND',	'P0K_TRAIT_DIVINE_WIND_BOOST_HARBOR_PRODUCTION'),
		('TRAIT_LEADER_DIVINE_WIND',	'P0K_TRAIT_DIVINE_WIND_FAITH_BUY_THEATER_BUILDINGS'),
		('TRAIT_LEADER_DIVINE_WIND',	'P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HOLY_SITE_BUILDINGS'),
		('TRAIT_LEADER_DIVINE_WIND',	'P0K_TRAIT_DIVINE_WIND_FAITH_BUY_HARBOR_BUILDINGS');
--=============================================================================================================
-- UNIQUE BUILDING: ELECTRONICS FACTORY (ENHANCEMENT)
--=============================================================================================================
-- +1 Great Merchant point.
-- Bonus Science equal to the Production adjacency bonus of the Industrial Zone.
--=============================================================================================================
-- Building_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatPersonPoints
		(BuildingType,						GreatPersonClassType,			PointsPerTurn)
VALUES	('BUILDING_ELECTRONICS_FACTORY',	'GREAT_PERSON_CLASS_MERCHANT',	1);
---------------------------------------------------------------------------------------------------------------
-- Building_YieldDistrictCopies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldDistrictCopies
		(BuildingType,						OldYieldType,		NewYieldType)
VALUES	('BUILDING_ELECTRONICS_FACTORY',	'YIELD_PRODUCTION',	'YIELD_SCIENCE');
--=============================================================================================================
-- UNIQUE BUILDING: ZAIBATSU (REWORK)
--=============================================================================================================
-- Replaces the Stock Exchange.
-- Bonus Production equal to the Commercial Hub's Gold adjacency bonus.
-- All Trade Routes from this city gain +1 Production.
-- Domestic Trade Routes from this city gain +1 Culture.
-- International Trade Routes from this city gain +2 Gold.
--=============================================================================================================
-- First, housekeeping. 
---------------------------------------------------------------------------------------------------------------
/*
DELETE FROM Traits
WHERE TraitType = 'TRAIT_CIVILIZATION_BUILDING_ELECTRONICS_FACTORY';

DELETE FROM CivilizationTraits
WHERE TraitType = 'TRAIT_CIVILIZATION_BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Types 
WHERE Type = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Buildings 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Buildings_XP2 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Building_GreatPersonPoints 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Building_YieldChanges 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM Building_YieldChangesBonusWithPower 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM BuildingModifiers 
WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM BuildingPrereqs 
WHERE Building = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM BuildingReplaces 
WHERE CivUniqueBuildingType = 'BUILDING_ELECTRONICS_FACTORY';

DELETE FROM MomentIllustrations
WHERE GameDataType = 'BUILDING_ELECTRONICS_FACTORY';
---------------------------------------------------------------------------------------------------------------
-- Now we can add the Building.
---------------------------------------------------------------------------------------------------------------
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU',	'KIND_TRAIT'),
		('P0K_BUILDING_ZAIBATSU',						'KIND_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- Traits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,										Name)
VALUES	('P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU',	'LOC_P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU_NAME');
---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
---------------------------------------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(CivilizationType,		TraitType)
VALUES	('CIVILIZATION_JAPAN',	'P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU');
---------------------------------------------------------------------------------------------------------------
-- Buildings
---------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings
		(BuildingType,
		Name,
	    PrereqCivic,
	    Cost,
	    PrereqDistrict,
	    Description,
	    PurchaseYield,
	    Maintenance,
	    TraitType,
	    CitizenSlots,
	    ObsoleteEra,
	    AdvisorType)
SELECT	'P0K_BUILDING_ZAIBATSU',
		'LOC_P0K_BUILDING_ZAIBATSU_NAME',
		'CIVIC_NATIONALISM',
		Cost,
		PrereqDistrict,
		'LOC_P0K_BUILDING_ZAIBATSU_DESCRIPTION',
		PurchaseYield,
		Maintenance,
		'P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU',
		CitizenSlots,
	    ObsoleteEra,
	    AdvisorType
FROM Buildings WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Buildings_XP2
---------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings_XP2
		(BuildingType,				RequiredPower,	Pillage)
SELECT	'P0K_BUILDING_ZAIBATSU',	RequiredPower,	Pillage
FROM Buildings_XP2 WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Building_CitizenYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_CitizenYieldChanges
		(BuildingType,				YieldType,	YieldChange)
SELECT	'P0K_BUILDING_ZAIBATSU',	YieldType,	YieldChange
FROM Building_CitizenYieldChanges WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Building_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,	PointsPerTurn)
SELECT	'P0K_BUILDING_ZAIBATSU',	GreatPersonClassType,	PointsPerTurn
FROM Building_GreatPersonPoints WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,	YieldChange)
SELECT	'P0K_BUILDING_ZAIBATSU',	YieldType,	YieldChange
FROM Building_YieldChanges WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldChangesBonusWithPower
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChangesBonusWithPower
		(BuildingType,				YieldType,	YieldChange)
SELECT	'P0K_BUILDING_ZAIBATSU',	YieldType,	YieldChange
FROM Building_YieldChangesBonusWithPower WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldDistrictCopies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldDistrictCopies
		(BuildingType,				OldYieldType,	NewYieldType)
VALUES	('P0K_BUILDING_ZAIBATSU',	'YIELD_GOLD',	'YIELD_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)
VALUES	('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_PRODUCTION',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_PRODUCTION',	'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_CULTURE',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_GOLD',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_PRODUCTION',		'Amount',		1),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_PRODUCTION',	'Amount',		1),
		('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_CULTURE',			'YieldType',	'YIELD_CULTURE'),
		('P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_CULTURE',			'Amount',		1),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_GOLD',			'YieldType',	'YIELD_GOLD'),
		('P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_GOLD',			'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
		(BuildingType,				ModifierId)
VALUES	('P0K_BUILDING_ZAIBATSU',	'P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_PRODUCTION'),
		('P0K_BUILDING_ZAIBATSU',	'P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_PRODUCTION'),
		('P0K_BUILDING_ZAIBATSU',	'P0K_ZAIBATSU_DOMESTIC_TRADE_ROUTE_CULTURE'),
		('P0K_BUILDING_ZAIBATSU',	'P0K_ZAIBATSU_INTERNATIONAL_TRADE_ROUTE_GOLD');
*/
--=============================================================================================================
-- UNIQUE UNIT: SAMURAI (ENHANCEMENT)
--=============================================================================================================
-- Purchased with Faith.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE	Units
SET		PurchaseYield = 'YIELD_FAITH'
WHERE	UnitType = 'UNIT_JAPANESE_SAMURAI';
 --=============================================================================================================
 -- START BIASES
 --=============================================================================================================
 -- Increase Coastal start bias to +1.
 --=============================================================================================================
 -- StartBiasTerrains
 ---------------------------------------------------------------------------------------------------------------
 UPDATE StartBiasTerrains
 SET	Tier = 1
 WHERE	CivilizationType = 'CIVILIZATION_JAPAN'
 AND	TerrainType = 'TERRAIN_COAST';