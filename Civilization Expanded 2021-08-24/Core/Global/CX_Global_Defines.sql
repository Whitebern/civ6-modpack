/* 
	Civilizations Expanded: Global Defines
	By p0kiehl
*/
--=============================================================================================================
-- GLOBAL EFFECT: Huey Teocalli now affects Lake natural wonders.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
SELECT	'P0K_CX_REQUIRES_PLOT_HAS_' ||FeatureType,	'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value)
SELECT	'P0K_CX_REQUIRES_PLOT_HAS_' ||FeatureType,	'FeatureType',	FeatureType
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,			RequirementSetType)
VALUES	('P0K_CX_PLOT_HAS_LAKE',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,			RequirementId)
VALUES	('P0K_CX_PLOT_HAS_LAKE',	'REQUIRES_PLOT_IS_LAKE');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,			RequirementId)
SELECT	'P0K_CX_PLOT_HAS_LAKE',		'P0K_CX_REQUIRES_PLOT_HAS_' ||FeatureType
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers
SET SubjectRequirementSetId = 'P0K_CX_PLOT_HAS_LAKE'
WHERE (ModifierId = 'HUEY_LAKE_FOOD_MODIFIER'
OR ModifierId = 'HUEY_LAKE_PRODUCTION_MODIFIER');
--=============================================================================================================
-- GLOBAL EFFECT: All Civs can work Mountains.
--=============================================================================================================
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('MINOR_CIV_DEFAULT_TRAIT',	'TRAIT_WORK_GRASS_MOUNTAIN'),
		('MINOR_CIV_DEFAULT_TRAIT',	'TRAIT_WORK_PLAINS_MOUNTAIN'),
		('MINOR_CIV_DEFAULT_TRAIT',	'TRAIT_WORK_DESERT_MOUNTAIN'),
		('MINOR_CIV_DEFAULT_TRAIT',	'TRAIT_WORK_TUNDRA_MOUNTAIN'),
		('MINOR_CIV_DEFAULT_TRAIT',	'TRAIT_WORK_SNOW_MOUNTAIN'),
		('TRAIT_LEADER_MAJOR_CIV',	'TRAIT_WORK_GRASS_MOUNTAIN'),
		('TRAIT_LEADER_MAJOR_CIV',	'TRAIT_WORK_PLAINS_MOUNTAIN'),
		('TRAIT_LEADER_MAJOR_CIV',	'TRAIT_WORK_DESERT_MOUNTAIN'),
		('TRAIT_LEADER_MAJOR_CIV',	'TRAIT_WORK_TUNDRA_MOUNTAIN'),
		('TRAIT_LEADER_MAJOR_CIV',	'TRAIT_WORK_SNOW_MOUNTAIN');
--=============================================================================================================
-- GLOBAL EFFECT: Mountains provide the same yield as Hills on each terrain.
--=============================================================================================================
-- Terrain_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Terrain_YieldChanges
		(TerrainType,				YieldType,	YieldChange)
SELECT	'TERRAIN_GRASS_MOUNTAIN',	YieldType,	YieldChange FROM Terrain_YieldChanges WHERE TerrainType = 'TERRAIN_GRASS_HILLS';

INSERT INTO Terrain_YieldChanges
		(TerrainType,				YieldType,	YieldChange)
SELECT	'TERRAIN_PLAINS_MOUNTAIN',	YieldType,	YieldChange FROM Terrain_YieldChanges WHERE TerrainType = 'TERRAIN_PLAINS_HILLS';

INSERT INTO Terrain_YieldChanges
		(TerrainType,				YieldType,	YieldChange)
SELECT	'TERRAIN_DESERT_MOUNTAIN',	YieldType,	YieldChange FROM Terrain_YieldChanges WHERE TerrainType = 'TERRAIN_DESERT_HILLS';

INSERT INTO Terrain_YieldChanges
		(TerrainType,				YieldType,	YieldChange)
SELECT	'TERRAIN_TUNDRA_MOUNTAIN',	YieldType,	YieldChange FROM Terrain_YieldChanges WHERE TerrainType = 'TERRAIN_TUNDRA_HILLS';

INSERT INTO Terrain_YieldChanges
		(TerrainType,				YieldType,	YieldChange)
SELECT	'TERRAIN_SNOW_MOUNTAIN',	YieldType,	YieldChange FROM Terrain_YieldChanges WHERE TerrainType = 'TERRAIN_SNOW_HILLS';
--=============================================================================================================
-- GLOBAL EFFECT: Petra yields and St. Basil's Cathedral yields apply to Mountains.
--=============================================================================================================
-- TerrainClass_Terrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO TerrainClass_Terrains
		(TerrainClassType,			TerrainType)
VALUES	('TERRAIN_CLASS_DESERT',	'TERRAIN_DESERT_MOUNTAIN');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_GLOBAL_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',	'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');		
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value)
VALUES	('P0K_GLOBAL_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',	'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN');						
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('PLOT_HAS_ANYTUNDRA_REQUIREMENTS',	'P0K_GLOBAL_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN');
--=============================================================================================================
-- GLOBAL EFFECT: Ski Resorts are workable (since Mountains are now workable as above) and provide +2 Gold, +1 Food, 
-- and +1 Production, in addition to Culture adjacencies.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET Workable='1' WHERE ImprovementType='IMPROVEMENT_SKI_RESORT';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange)
VALUES	('IMPROVEMENT_SKI_RESORT',	'YIELD_CULTURE',	0),
		('IMPROVEMENT_SKI_RESORT',	'YIELD_GOLD',		2),
		('IMPROVEMENT_SKI_RESORT',	'YIELD_FOOD',		1),
		('IMPROVEMENT_SKI_RESORT',	'YIELD_PRODUCTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentTerrain,			AdjacentFeature,	AdjacentImprovement,			AdjacentDistrict)
VALUES	('p0k_Ski_Beach_Culture',		'Placeholder',	'YIELD_CULTURE',	1,				1,				NULL,						NULL,				'IMPROVEMENT_BEACH_RESORT'	,	NULL),
		('p0k_Ski_Hockey_Culture',		'Placeholder',	'YIELD_CULTURE',	1,				1,				NULL,						NULL,				'IMPROVEMENT_ICE_HOCKEY_RINK',	NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_SKI_RESORT',	'p0k_Ski_Beach_Culture'),
		('IMPROVEMENT_SKI_RESORT',	'p0k_Ski_Hockey_Culture');		