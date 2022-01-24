/* 
	Civilizations Expanded: Egypt
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: PATAGONIAN HERITAGE (REWORK)
--=============================================================================================================
-- +1 Production from tiles with Breathtaking Appeal.
-- Rainforest, Marsh, and Jungle do not reduce Appeal.
-- Building a Plantation triggers a Culture Bomb.
-- Theater Squares, Industrial Zones, Commercial Hubs, and Harbors gain a standard adjacency bonus from Mountains.
-- Units receive +1 Movement when starting a turn next to a Mountain.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE',	'CLASS_ALL_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE',	'LOC_P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE_NAME',	'LOC_P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_GRASS',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_PLAINS',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_DESERT',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_TUNDRA',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_SNOW',		'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_GRASS',	'TerrainType',	'TERRAIN_GRASS_MOUNTAIN'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_PLAINS',	'TerrainType',	'TERRAIN_PLAINS_MOUNTAIN'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_DESERT',	'TerrainType',	'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_TUNDRA',	'TerrainType',	'TERRAIN_TUNDRA_MOUNTAIN'),
		('P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_SNOW',		'TerrainType',	'TERRAIN_SNOW_MOUNTAIN');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_MAPUCHE_NEAR_MOUNTAIN',		'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_MAPUCHE_NEAR_MOUNTAIN',		'P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_GRASS'),
		('P0K_MAPUCHE_NEAR_MOUNTAIN',		'P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_PLAINS'),
		('P0K_MAPUCHE_NEAR_MOUNTAIN',		'P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_DESERT'),
		('P0K_MAPUCHE_NEAR_MOUNTAIN',		'P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_TUNDRA'),
		('P0K_MAPUCHE_NEAR_MOUNTAIN',		'P0K_MAPUCHE_REQUIRES_NEAR_MOUNTAIN_SNOW');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',					NULL),
		('P0K_TRAIT_PRODUCTION_BREATHTAKING_APPEAL',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_JUNGLE',				'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	NULL),
		('P0K_TRAIT_NO_REDUCED_APPEAL_MARSH',				'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	NULL),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS',			'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	NULL),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_GRASS',	'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	NULL),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_PLAINS',	'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	NULL),
		('P0K_TRAIT_PLANTATION_CULTURE_BOMB',				'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER',					NULL),
		('P0K_PATAGONIAN_HERITAGE_ABILITY_EXTRA_MOVEMENT',	'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',						'P0K_MAPUCHE_NEAR_MOUNTAIN'),
		('P0K_TRAIT_ADJACENT_MOUNTAIN_MOVEMENT_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',						'P0K_MAPUCHE_NEAR_MOUNTAIN');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
VALUES	('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'TerrainType',		'TERRAIN_GRASS_MOUNTAIN'),
		('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'Amount',			1),
		('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'TilesRequired',	1),
		('P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE',			'Description',		'P0K_LOC_PATAGONIA_CULTURE'),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'TerrainType',		'TERRAIN_PLAINS_MOUNTAIN'),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'Amount',			1),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'TilesRequired',	1),
		('P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE',		'Description',		'P0K_LOC_PATAGONIA_CULTURE'),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'Amount',			1),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'TilesRequired',	1),
		('P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE',		'Description',		'P0K_LOC_PATAGONIA_CULTURE'),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'Amount',			1),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'TilesRequired',	1),
		('P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE',		'Description',		'P0K_LOC_PATAGONIA_CULTURE'),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'Amount',			1),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'TilesRequired',	1),
		('P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE',			'Description',		'P0K_LOC_PATAGONIA_CULTURE'),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'TerrainType',		'TERRAIN_GRASS_MOUNTAIN'),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'Amount',			1),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'TilesRequired',	1),
		('P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION',			'Description',		'P0K_LOC_PATAGONIA_PRODUCTION'),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'TerrainType',		'TERRAIN_PLAINS_MOUNTAIN'),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'Amount',			1),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'TilesRequired',	1),
		('P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION',			'Description',		'P0K_LOC_PATAGONIA_PRODUCTION'),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'Amount',			1),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'TilesRequired',	1),
		('P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION',			'Description',		'P0K_LOC_PATAGONIA_PRODUCTION'),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'Amount',			1),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'TilesRequired',	1),
		('P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION',			'Description',		'P0K_LOC_PATAGONIA_PRODUCTION'),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'Amount',			1),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'TilesRequired',	1),
		('P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION',			'Description',		'P0K_LOC_PATAGONIA_PRODUCTION'),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'TerrainType',		'TERRAIN_GRASS_MOUNTAIN'),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'Amount',			1),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'TilesRequired',	1),
		('P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD',		'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'TerrainType',		'TERRAIN_PLAINS_MOUNTAIN'),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'Amount',			1),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'TilesRequired',	1),
		('P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD',	'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'Amount',			1),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'TilesRequired',	1),
		('P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD',	'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'Amount',			1),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'TilesRequired',	1),
		('P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD',	'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'Amount',			1),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'TilesRequired',	1),
		('P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD',		'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'TerrainType',		'TERRAIN_GRASS_MOUNTAIN'),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'Amount',			1),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'TilesRequired',	1),
		('P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD',				'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'TerrainType',		'TERRAIN_PLAINS_MOUNTAIN'),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'Amount',			1),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'TilesRequired',	1),
		('P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD',			'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'Amount',			1),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'TilesRequired',	1),
		('P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD',			'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'Amount',			1),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'TilesRequired',	1),
		('P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD',			'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'Amount',			1),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'TilesRequired',	1),
		('P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD',				'Description',		'P0K_LOC_PATAGONIA_GOLD'),
		('P0K_TRAIT_PRODUCTION_BREATHTAKING_APPEAL',		'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_BREATHTAKING_APPEAL',		'Amount',			1),
		('P0K_TRAIT_NO_REDUCED_APPEAL_JUNGLE',				'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_JUNGLE',				'Amount',			1),
		('P0K_TRAIT_NO_REDUCED_APPEAL_MARSH',				'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_MARSH',				'Amount',			1),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS',			'FeatureType',		'FEATURE_FLOODPLAINS'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS',			'Amount',			1),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_GRASS',	'FeatureType',		'FEATURE_FLOODPLAINS_GRASSLAND'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_GRASS',	'Amount',			1),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_PLAINS',	'FeatureType',		'FEATURE_FLOODPLAINS_PLAINS'),
		('P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_PLAINS',	'Amount',			1),
		('P0K_TRAIT_PLANTATION_CULTURE_BOMB',				'ImprovementType',	'IMPROVEMENT_PLANTATION'),
		('P0K_PATAGONIAN_HERITAGE_ABILITY_EXTRA_MOVEMENT',	'Amount',			1),
		('P0K_TRAIT_ADJACENT_MOUNTAIN_MOVEMENT_ABILITY',	'AbilityType',		'P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE',	'P0K_PATAGONIAN_HERITAGE_ABILITY_EXTRA_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_MAPUCHE_TOQUI' 
AND			ModifierId IN
			('TOQUI_CULTURE_FROM_GOVERNOR', 
			'TOQUI_CULTURE_GOVERNOR_NOT_FOUNDED',
			'TOQUI_DOMESTIC_LOYALTY',
			'TOQUI_FOREIGN_LOYALTY',
			'TOQUI_PRODUCTION_FROM_GOVERNOR',
			'TOQUI_PRODUCTION_GOVERNOR_NOT_FOUNDED',
			'TRAIT_TOQUI_UNIT_EXPERIENCE_FROM_GOVERNOR',
			'TRAIT_TOQUI_UNIT_EXPERIENCE_FROM_GOVERNOR_NOT_FOUNDED');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_THEATER_GRASSMOUNTAIN_CULTURE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_THEATER_PLAINSMOUNTAIN_CULTURE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_THEATER_DESERTMOUNTAIN_CULTURE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_THEATER_TUNDRAMOUNTAIN_CULTURE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_THEATER_SNOWMOUNTAIN_CULTURE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_IZ_GRASSMOUNTAIN_PRODUCTION'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_IZ_PLAINSMOUNTAIN_PRODUCTION'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_IZ_DESERTMOUNTAIN_PRODUCTION'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_IZ_TUNDRAMOUNTAIN_PRODUCTION'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_IZ_SNOWMOUNTAIN_PRODUCTION'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_COMMERCIAL_HUB_GRASSMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_COMMERCIAL_HUB_PLAINSMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_COMMERCIAL_HUB_DESERTMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_COMMERCIAL_HUB_TUNDRAMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_COMMERCIAL_HUB_SNOWMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_HARBOR_GRASSMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_HARBOR_PLAINSMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_HARBOR_DESERTMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_HARBOR_TUNDRAMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_HARBOR_SNOWMOUNTAIN_GOLD'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_PRODUCTION_BREATHTAKING_APPEAL'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_NO_REDUCED_APPEAL_JUNGLE'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_NO_REDUCED_APPEAL_MARSH'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_GRASS'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_NO_REDUCED_APPEAL_FLOODPLAINS_PLAINS'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_PLANTATION_CULTURE_BOMB'),
		('TRAIT_CIVILIZATION_MAPUCHE_TOQUI',	'P0K_TRAIT_ADJACENT_MOUNTAIN_MOVEMENT_ABILITY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: SPIRIT OF TUCAPEL (REWORK)
--=============================================================================================================
-- Cities with a Governor generate +5% Culture and +5% Production, and military units trained in these cities receive +10% combat experience. (formerly civ UA)
-- +10 Combat Strength against civilizations that are in a Golden Age or Free Cities.
-- These bonuses are tripled in cities not founded by the Mapuche. (formerly Civ UA).
-- Defeating an enemy unit within the borders of an enemy city causes that city to lose 20 Loyalty.
-- Governors exert +4 Loyalty per turn towards all cities within 9 tiles.
--=============================================================================================================
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
-- Remove the additional Loyalty penalty to defeated units in civilizations that are in a Golden Age.
---------------------------------------------------------------------------------------------------------------
UPDATE	ModifierArguments
SET		Value = 0
WHERE	ModifierId = 'TRAIT_DIMINISH_LOYALTY_IN_ENEMY_CITY'
AND		Name = 'AdditionalGoldenAge';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_CULTURE_FROM_GOVERNOR'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_CULTURE_GOVERNOR_NOT_FOUNDED'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_PRODUCTION_FROM_GOVERNOR'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_PRODUCTION_GOVERNOR_NOT_FOUNDED'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TRAIT_TOQUI_UNIT_EXPERIENCE_FROM_GOVERNOR'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TRAIT_TOQUI_UNIT_EXPERIENCE_FROM_GOVERNOR_NOT_FOUNDED'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_DOMESTIC_LOYALTY'),
		('TRAIT_LEADER_LAUTARO_ABILITY',	'TOQUI_FOREIGN_LOYALTY');
---------------------------------------------------------------------------------------------------------------
-- Traits
-- Fixing localisation issue with Lautaro's ability.
---------------------------------------------------------------------------------------------------------------
UPDATE Traits SET Description = 'LOC_P0K_LAUTARO_ABILITY_DESCRIPTION' WHERE TraitType = 'TRAIT_LEADER_LAUTARO_ABILITY';
--=============================================================================================================
-- UNIQUE IMPROVEMENT: CHEMAMULL (ENHANCEMENT)
--=============================================================================================================
-- +1 Faith.
-- +1 Faith at Humanism.
-- Can now be built on Volcanic Soil.
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,		YieldChange)
VALUES	('IMPROVEMENT_CHEMAMULL',	'YIELD_FAITH',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,			YieldType,		BonusYieldChange,	PrereqCivic)
VALUES	('222',	'IMPROVEMENT_CHEMAMULL',	'YIELD_FAITH',	1,					'CIVIC_HUMANISM');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_CHEMAMULL',	'FEATURE_VOLCANIC_SOIL');
--=============================================================================================================
-- UNIQUE UNIT: MALON RAIDER (ENHANCEMENT)
--=============================================================================================================
-- Reduce cost to 225 Production.
--=============================================================================================================
UPDATE Units SET Cost = Cost*.9 WHERE UnitType = 'UNIT_MAPUCHE_MALON_RAIDER';