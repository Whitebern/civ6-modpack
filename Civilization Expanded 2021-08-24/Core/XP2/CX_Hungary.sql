/* 
	Civilizations Expanded: Hungary (Main File)
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: PEARL OF THE DANUBE (ENHANCEMENT)
--=============================================================================================================
-- Cities founded on a River begin with a free Water Mill.
-- Campus, Theater Square, Holy Site, and Industrial Zone districts receive a major adjacency bonus from Rivers.
-- (adapted from old Netherlands UA).
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																	Kind)
VALUES	('P0K_HUNGARY_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,															CollectionType,				EffectType)
VALUES	('P0K_HUNGARY_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE',	'COLLECTION_PLAYER_CITIES',	'EFFECT_GRANT_BUILDING_IN_CITY_IGNORE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,														SubjectRequirementSetId)
VALUES	('P0K_TRAIT_DANUBE_FREE_WATER_MILL',				'P0K_HUNGARY_MODIFIER_PLAYER_CITIES_GRANT_BUILDING_IN_CITY_IGNORE',	'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS'),
		('P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY',		'MODIFIER_PLAYER_CITIES_RIVER_ADJACENCY',							NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_DANUBE_FREE_WATER_MILL',				'BuildingType',	'BUILDING_WATER_MILL'),
		('P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY',		'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY',		'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY',		'Amount',		2),
		('P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY',		'Description',	'P0K_LOC_DISTRICT_RIVER_FAITH');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_CIVILIZATION_PEARL_DANUBE',	'P0K_TRAIT_DANUBE_FREE_WATER_MILL'),
		('TRAIT_CIVILIZATION_PEARL_DANUBE',	'TRAIT_CAMPUS_RIVER_ADJACENCY'),
		('TRAIT_CIVILIZATION_PEARL_DANUBE',	'TRAIT_THEATER_DISTRICT_RIVER_ADJACENCY'),
		('TRAIT_CIVILIZATION_PEARL_DANUBE',	'TRAIT_INDUSTRIAL_ZONE_RIVER_ADJACENCY'),
		('TRAIT_CIVILIZATION_PEARL_DANUBE',	'P0K_TRAIT_DANUBE_HOLY_SITE_RIVER_ADJACENCY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: RAVEN KING (ENHANCEMENT)
--=============================================================================================================
-- Refer to MatthiasCorvinus folder.
--=============================================================================================================
--=============================================================================================================
-- UNIQUE BUILDING: THERMAL BATH (ENHANCEMENT)
--=============================================================================================================
-- Make cheaper and available at Buttresses.
-- +2 Housing.
-- +1 Science and +1 Culture.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings 
SET PrereqCivic = 'CIVIC_GUILDS', Cost = 260, Housing = 2 
WHERE BuildingType = 'BUILDING_THERMAL_BATH';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,			YieldChange)
VALUES	('BUILDING_THERMAL_BATH',	'YIELD_SCIENCE',	1),
		('BUILDING_THERMAL_BATH',	'YIELD_CULTURE',	1);
