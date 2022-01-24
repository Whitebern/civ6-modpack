/* 
	Civilizations Expanded: Australia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: BOUNDLESS PLAINS TO SHARE (ENHANCEMENT)
--=============================================================================================================
-- (District bonus applies to Industrial Zones as well).
-- Water tiles provide +1 Production.
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_AUSTRALIA_PLOT_HAS_WATER',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_AUSTRALIA_PLOT_HAS_WATER',	'REQUIRES_TERRAIN_COAST'),
		('P0K_AUSTRALIA_PLOT_HAS_WATER',	'REQUIRES_TERRAIN_OCEAN');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL',	NULL),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL',	NULL),
		('P0K_TRAIT_WATER_TILE_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'P0K_AUSTRALIA_PLOT_HAS_WATER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
VALUES	('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'RequiredAppeal',	2),
		('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'YieldChange',		1),
		('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE',		'Description',		'LOC_DISTRICT_APPEAL_PRODUCTION'),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'RequiredAppeal',	4),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'YieldChange',		2),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE',	'Description',		'LOC_DISTRICT_APPEAL_PRODUCTION'),
		('P0K_TRAIT_WATER_TILE_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_WATER_TILE_PRODUCTION',			'Amount',			1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'P0K_TRAIT_CHARMING_INDUSTRIAL_ZONE'),
		('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'P0K_TRAIT_BREATHTAKING_INDUSTRIAL_ZONE'),
		('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'P0K_TRAIT_WATER_TILE_PRODUCTION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: A MAN OF PEACE IN A TIME OF WAR (REWORK)
--=============================================================================================================
-- +15% Production towards buildings and civilian units when at peace.
-- +15% Production towards military units when at war.
-- Trade Routes with Allies provide +4 Food and +4 Production for both cities.
-- Alliances gain additional Alliance Points while at war with a common foe.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType,									Inverse)
VALUES	('P0K_AUSTRALIA_REQUIRES_PLAYER_IS_AT_WAR',	'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_AUSTRALIA_PLAYER_AT_WAR',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_AUSTRALIA_PLAYER_AT_WAR',		'P0K_AUSTRALIA_REQUIRES_PLAYER_IS_AT_WAR');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SETTLER_PRODUCTION_BONUS_AT_PEACE',			'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',							'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_BUILDER_PRODUCTION_BONUS_AT_PEACE',			'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',							'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_TRADER_PRODUCTION_BONUS_AT_PEACE',			'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',							'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_ARCHAEOLOGIST_PRODUCTION_BONUS_AT_PEACE',	'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',							'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_SPY_PRODUCTION_BONUS_AT_PEACE',				'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',							'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_BUILDING_PRODUCTION_BONUS_AT_PEACE',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',			'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS'),
		('P0K_TRAIT_MILITARY_UNIT_PRODUCTION_BONUS_AT_WAR',		'MODIFIER_PLAYER_CITIES_ADJUST_MILITARY_UNITS_PRODUCTION',				'P0K_AUSTRALIA_PLAYER_AT_WAR'),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_TO_ALLY',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_DESTINATION_YIELD_FOR_ALLY_ROUTE',	NULL),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_FROM_ALLY',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE',		NULL),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_TO_ALLY',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_DESTINATION_YIELD_FOR_ALLY_ROUTE',	NULL),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_FROM_ALLY',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE',		NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_SETTLER_PRODUCTION_BONUS_AT_PEACE',			'UnitType',		'UNIT_SETTLER'),
		('P0K_TRAIT_SETTLER_PRODUCTION_BONUS_AT_PEACE',			'Amount',		15),
		('P0K_TRAIT_BUILDER_PRODUCTION_BONUS_AT_PEACE',			'UnitType',		'UNIT_BUILDER'),
		('P0K_TRAIT_BUILDER_PRODUCTION_BONUS_AT_PEACE',			'Amount',		15),
		('P0K_TRAIT_TRADER_PRODUCTION_BONUS_AT_PEACE',			'UnitType',		'UNIT_TRADER'),
		('P0K_TRAIT_TRADER_PRODUCTION_BONUS_AT_PEACE',			'Amount',		15),
		('P0K_TRAIT_ARCHAEOLOGIST_PRODUCTION_BONUS_AT_PEACE',	'UnitType',		'UNIT_ARCHAEOLOGIST'),
		('P0K_TRAIT_ARCHAEOLOGIST_PRODUCTION_BONUS_AT_PEACE',	'Amount',		15),
		('P0K_TRAIT_SPY_PRODUCTION_BONUS_AT_PEACE',				'UnitType',		'UNIT_SPY'),
		('P0K_TRAIT_SPY_PRODUCTION_BONUS_AT_PEACE',				'Amount',		15),
		('P0K_TRAIT_BUILDING_PRODUCTION_BONUS_AT_PEACE',		'Amount',		15),
		('P0K_TRAIT_BUILDING_PRODUCTION_BONUS_AT_PEACE',		'IsWonder',		0),
		('P0K_TRAIT_MILITARY_UNIT_PRODUCTION_BONUS_AT_WAR',		'Amount',		15),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_TO_ALLY',					'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_TO_ALLY',					'Amount',		4),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_FROM_ALLY',				'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_FROM_ALLY',				'Amount',		4),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_TO_ALLY',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_TO_ALLY',			'Amount',		4),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_FROM_ALLY',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_ROUTE_PRODUCTION_FROM_ALLY',			'Amount',		4);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_CITADEL_CIVILIZATION' AND ModifierId IN
('TRAIT_CITADELCIVILIZATION_DEFENSIVE_PRODUCTION', 'TRAIT_CITADELCIVILIZATION_LIBERATION_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_CITADEL_CIVILIZATION',	'TRAIT_ALLIANCE_POINTS_FROM_COMMON_FOE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_SETTLER_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_BUILDER_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_TRADER_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_ARCHAEOLOGIST_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_SPY_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_BUILDING_PRODUCTION_BONUS_AT_PEACE'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_MILITARY_UNIT_PRODUCTION_BONUS_AT_WAR'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_TRADE_ROUTE_FOOD_TO_ALLY'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_TRADE_ROUTE_FOOD_FROM_ALLY'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_TRADE_ROUTE_PRODUCTION_TO_ALLY'),
		('TRAIT_LEADER_CITADEL_CIVILIZATION',	'P0K_TRAIT_TRADE_ROUTE_PRODUCTION_FROM_ALLY');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: OUTBACK STATION (ENHANCEMENT)
--=============================================================================================================
-- Allow it to be built on Tundra and Volcanic Soil, Oases, and Marsh.
-- Make the Production bonus for adjacent Pastures available immediately.
-- Make the Food bonus for adjacent Outback Stations unlock at Steam Power like the other adjacencies.
--=============================================================================================================
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Adjacency_YieldChanges SET PrereqTech = NULL
WHERE ID = 'Pasture_Outback_Production';

UPDATE Adjacency_YieldChanges SET PrereqCivic = NULL, PrereqTech = 'TECH_STEAM_POWER'
WHERE ID = 'Outback_Outback_Food';
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType)
VALUES	('IMPROVEMENT_OUTBACK_STATION',	'TERRAIN_TUNDRA'),
		('IMPROVEMENT_OUTBACK_STATION',	'TERRAIN_TUNDRA_HILLS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,				FeatureType)
VALUES	('IMPROVEMENT_OUTBACK_STATION',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_OUTBACK_STATION',	'FEATURE_OASIS'),
		('IMPROVEMENT_OUTBACK_STATION',	'FEATURE_MARSH');