/* 
	Civilizations Expanded: Nubia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: CULT OF APEDEMAK (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Mining technology unlocked.
-- +2 Gold and +1 Production from Mined resources.
-- Strategic resources improved by Mines provide +1 additional resource per turn.
-- (Restore Production bonus towards ranged units to +50% again instead of +30%)
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_NUBIA_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS',		'REQUIREMENT_REQUIREMENTSET_IS_MET');

INSERT INTO Requirements
		(RequirementId, 									RequirementType)
SELECT	'P0K_NUBIA_REQUIRES_' ||ResourceType,				'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES'
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value)
VALUES	('P0K_NUBIA_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS',	'RequirementSetId',	'P0K_NUBIA_PLOT_HAS_MINED_RESOURCE');

INSERT INTO RequirementArguments
		(RequirementId, 								Name,					Value)
SELECT	'P0K_NUBIA_REQUIRES_' ||ResourceType, 			'ResourceType',			ResourceType
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId, 						RequirementSetType)
VALUES	('P0K_NUBIA_PLOT_HAS_MINED_RESOURCE',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_NUBIA_RESOURCE_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_NUBIA_RESOURCE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),
		('P0K_NUBIA_RESOURCE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_MINE'),
		('P0K_NUBIA_RESOURCE_REQUIREMENTS',		'P0K_NUBIA_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_NUBIA_PLOT_HAS_MINED_RESOURCE',		'P0K_NUBIA_REQUIRES_' ||ResourceType
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GRANT_MINING',				'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',				NULL),
		('P0K_TRAIT_APEDEMAK_MINE_GOLD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'P0K_NUBIA_RESOURCE_REQUIREMENTS'),
		('P0K_TRAIT_APEDEMAK_MINE_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'P0K_NUBIA_RESOURCE_REQUIREMENTS'),
		('P0K_TRAIT_APEDEMAK_EXTRA_IRON',		'MODIFIER_PLAYER_ADJUST_RESOURCE_ACCUMULATION_MODIFIER',	NULL),
		('P0K_TRAIT_APEDEMAK_EXTRA_NITER',		'MODIFIER_PLAYER_ADJUST_RESOURCE_ACCUMULATION_MODIFIER',	NULL),
		('P0K_TRAIT_APEDEMAK_EXTRA_ALUMINUM',	'MODIFIER_PLAYER_ADJUST_RESOURCE_ACCUMULATION_MODIFIER',	NULL),
		('P0K_TRAIT_APEDEMAK_EXTRA_COAL',		'MODIFIER_PLAYER_ADJUST_RESOURCE_ACCUMULATION_MODIFIER',	NULL),
		('P0K_TRAIT_APEDEMAK_EXTRA_URANIUM',	'MODIFIER_PLAYER_ADJUST_RESOURCE_ACCUMULATION_MODIFIER',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('P0K_TRAIT_GRANT_MINING',				'TechType',		'TECH_MINING'),
		('P0K_TRAIT_APEDEMAK_MINE_GOLD',		'YieldType',	'YIELD_GOLD'),	
		('P0K_TRAIT_APEDEMAK_MINE_GOLD',		'Amount',		2),	
		('P0K_TRAIT_APEDEMAK_MINE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),	
		('P0K_TRAIT_APEDEMAK_MINE_PRODUCTION',	'Amount',		1),
		('P0K_TRAIT_APEDEMAK_EXTRA_IRON',		'ResourceType',	'RESOURCE_IRON'),
		('P0K_TRAIT_APEDEMAK_EXTRA_IRON',		'Amount',		1),
		('P0K_TRAIT_APEDEMAK_EXTRA_NITER',		'ResourceType',	'RESOURCE_NITER'),
		('P0K_TRAIT_APEDEMAK_EXTRA_NITER',		'Amount',		1),
		('P0K_TRAIT_APEDEMAK_EXTRA_ALUMINUM',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('P0K_TRAIT_APEDEMAK_EXTRA_ALUMINUM',	'Amount',		1),
		('P0K_TRAIT_APEDEMAK_EXTRA_COAL',		'ResourceType',	'RESOURCE_COAL'),
		('P0K_TRAIT_APEDEMAK_EXTRA_COAL',		'Amount',		1),
		('P0K_TRAIT_APEDEMAK_EXTRA_URANIUM',	'ResourceType',	'RESOURCE_URANIUM'),
		('P0K_TRAIT_APEDEMAK_EXTRA_URANIUM',	'Amount',		1);

-- Reverting April 2021 changes
UPDATE	ModifierArguments
SET		Value = 50
WHERE	ModifierId IN 
		('TRAIT_ANCIENT_RANGED_UNIT_PRODUCTION',
		'TRAIT_CLASSICAL_RANGED_UNIT_PRODUCTION',
		'TRAIT_MEDIEVAL_RANGED_UNIT_PRODUCTION',
		'TRAIT_RENAISSANCE_RANGED_UNIT_PRODUCTION',
		'TRAIT_INDUSTRIAL_RANGED_UNIT_PRODUCTION',
		'TRAIT_MODERN_RANGED_UNIT_PRODUCTION',
		'TRAIT_ATOMIC_RANGED_UNIT_PRODUCTION',
		'TRAIT_INFORMATION_RANGED_UNIT_PRODUCTION')
AND		Name = 'Amount';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_TA_SETI' AND ModifierId IN 
('TRAIT_BONUS_MINE_GOLD','TRAIT_LUXURY_MINE_GOLD','TRAIT_STRATEGIC_MINE_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_GRANT_MINING'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_MINE_GOLD'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_MINE_PRODUCTION'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_EXTRA_IRON'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_EXTRA_NITER'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_EXTRA_ALUMINUM'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_EXTRA_COAL'),
		('TRAIT_CIVILIZATION_TA_SETI',	'P0K_TRAIT_APEDEMAK_EXTRA_URANIUM');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: RESTORATION OF MEROE (REWORK)
--=============================================================================================================
-- +100% Production towards Builders.
-- +50% Production towards the first specialty district in each city, and +25% Production towards the second.
-- Domestic Trade Routes gain +1 Faith and +1 Food for each specialty district in the destination city.
-- May use Faith to purchase the buildings of the first specialty district constructed in each city.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType,								Inverse)
VALUES	('P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT',	'REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS',	1),
		('P0K_NUBIA_REQUIRES_CITY_HAS_ENTERTAINMENT_COMPLEX',		'REQUIREMENT_CITY_HAS_DISTRICT',				0),
		('P0K_NUBIA_REQUIRES_CITY_HAS_WATER_PARK',					'REQUIREMENT_CITY_HAS_DISTRICT',				0);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,					Value)
VALUES	('P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT',	'Amount',				2),
		('P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT',	'MustBeFunctioning',	0),
		('P0K_NUBIA_REQUIRES_CITY_HAS_ENTERTAINMENT_COMPLEX',		'DistrictType',			'DISTRICT_ENTERTAINMENT_COMPLEX'),
		('P0K_NUBIA_REQUIRES_CITY_HAS_WATER_PARK',					'DistrictType',			'DISTRICT_WATER_ENTERTAINMENT_COMPLEX');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_NUBIA_CITY_HAS_CAMPUS_FIRST',					'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_THEATER_FIRST',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_HOLY_SITE_FIRST',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_ENCAMPMENT_FIRST',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_INDUSTRIAL_ZONE_FIRST',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_HARBOR_FIRST',					'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_COMMERCIAL_HUB_FIRST',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_ENTERTAINMENT_COMPLEX_FIRST',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_WATER_PARK_FIRST',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NUBIA_CITY_HAS_GOV_PLAZA_FIRST',				'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('P0K_NUBIA_CITY_HAS_CAMPUS_FIRST',					'REQUIRES_CITY_HAS_CAMPUS'),
		('P0K_NUBIA_CITY_HAS_CAMPUS_FIRST',					'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_CAMPUS_FIRST',					'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_THEATER_FIRST',				'REQUIRES_CITY_HAS_THEATER_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_THEATER_FIRST',				'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_THEATER_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_HOLY_SITE_FIRST',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('P0K_NUBIA_CITY_HAS_HOLY_SITE_FIRST',				'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_HOLY_SITE_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_ENCAMPMENT_FIRST',				'REQUIRES_CITY_HAS_ENCAMPMENT'),
		('P0K_NUBIA_CITY_HAS_ENCAMPMENT_FIRST',				'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_ENCAMPMENT_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_INDUSTRIAL_ZONE_FIRST',		'REQUIRES_CITY_HAS_INDUSTRIAL_ZONE'),
		('P0K_NUBIA_CITY_HAS_INDUSTRIAL_ZONE_FIRST',		'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_INDUSTRIAL_ZONE_FIRST',		'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_HARBOR_FIRST',					'REQUIRES_CITY_HAS_HARBOR'),
		('P0K_NUBIA_CITY_HAS_HARBOR_FIRST',					'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_HARBOR_FIRST',					'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_COMMERCIAL_HUB_FIRST',			'REQUIRES_CITY_HAS_COMMERCIAL_HUB'),
		('P0K_NUBIA_CITY_HAS_COMMERCIAL_HUB_FIRST',			'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_COMMERCIAL_HUB_FIRST',			'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_ENTERTAINMENT_COMPLEX_FIRST',	'P0K_NUBIA_REQUIRES_CITY_HAS_ENTERTAINMENT_COMPLEX'),
		('P0K_NUBIA_CITY_HAS_ENTERTAINMENT_COMPLEX_FIRST',	'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_ENTERTAINMENT_COMPLEX_FIRST',	'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_WATER_PARK_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_WATER_PARK'),
		('P0K_NUBIA_CITY_HAS_WATER_PARK_FIRST',				'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_WATER_PARK_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_GOV_PLAZA_FIRST',				'REQUIRES_CITY_HAS_GOV_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_GOV_PLAZA_FIRST',				'REQUIRES_CITY_HAS_1_SPECIALTY_DISTRICT'),
		('P0K_NUBIA_CITY_HAS_GOV_PLAZA_FIRST',				'P0K_NUBIA_REQUIRES_CITY_HAS_ONLY_1_SPECIALTY_DISTRICT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,																	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_DOUBLE_BUILDER_PRODUCTION',							'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',									0,			NULL),
		('P0K_TRAIT_PRODUCTION_TOWARDS_FIRST_DISTRICT',					'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',					0,			'CITY_HAS_0_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('P0K_TRAIT_PRODUCTION_TOWARDS_SECOND_DISTRICT',				'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',					0,			'CITY_HAS_1_SPECIALTY_DISTRICT'),	
		('P0K_TRAIT_DOMESTIC_TRADE_FAITH_PER_DISTRICT',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC',	0,			NULL),
		('P0K_TRAIT_DOMESTIC_TRADE_FOOD_PER_DISTRICT',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC',	0,			NULL),
		('P0K_TRAIT_FAITH_BUY_CAMPUS_BUILDINGS_FIRST',					'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_CAMPUS_FIRST'),
		('P0K_TRAIT_FAITH_BUY_THEATER_BUILDINGS_FIRST',					'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_THEATER_FIRST'),
		('P0K_TRAIT_FAITH_BUY_HOLY_SITE_BUILDINGS_FIRST',				'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_HOLY_SITE_FIRST'),	
		('P0K_TRAIT_FAITH_BUY_ENCAMPMENT_BUILDINGS_FIRST',				'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_ENCAMPMENT_FIRST'),
		('P0K_TRAIT_FAITH_BUY_INDUSTRIAL_ZONE_BUILDINGS_FIRST',			'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_INDUSTRIAL_ZONE_FIRST'),
		('P0K_TRAIT_FAITH_BUY_HARBOR_BUILDINGS_FIRST',					'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_HARBOR_FIRST'),
		('P0K_TRAIT_FAITH_BUY_COMMERCIAL_HUB_BUILDINGS_FIRST',			'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_COMMERCIAL_HUB_FIRST'),
		('P0K_TRAIT_FAITH_BUY_ENTERTAINMENT_COMPLEX_BUILDINGS_FIRST',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_ENTERTAINMENT_COMPLEX_FIRST'),
		('P0K_TRAIT_FAITH_BUY_WATER_PARK_BUILDINGS_FIRST',				'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_WATER_PARK_FIRST'),
		('P0K_TRAIT_FAITH_BUY_GOV_PLAZA_BUILDINGS_FIRST',				'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',						1,			'P0K_NUBIA_CITY_HAS_GOV_PLAZA_FIRST');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value)
VALUES	('P0K_TRAIT_DOUBLE_BUILDER_PRODUCTION',							'UnitType',		'UNIT_BUILDER'),
		('P0K_TRAIT_DOUBLE_BUILDER_PRODUCTION',							'Amount',		100),
		('P0K_TRAIT_PRODUCTION_TOWARDS_FIRST_DISTRICT',					'Amount',		100),
		('P0K_TRAIT_PRODUCTION_TOWARDS_SECOND_DISTRICT',				'Amount',		50),
		('P0K_TRAIT_DOMESTIC_TRADE_FAITH_PER_DISTRICT',					'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_DOMESTIC_TRADE_FAITH_PER_DISTRICT',					'Amount',		1),
		('P0K_TRAIT_DOMESTIC_TRADE_FOOD_PER_DISTRICT',					'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_DOMESTIC_TRADE_FOOD_PER_DISTRICT',					'Amount',		1),
		('P0K_TRAIT_FAITH_BUY_CAMPUS_BUILDINGS_FIRST',					'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_TRAIT_FAITH_BUY_THEATER_BUILDINGS_FIRST',					'DistrictType',	'DISTRICT_THEATER'),
		('P0K_TRAIT_FAITH_BUY_HOLY_SITE_BUILDINGS_FIRST',				'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_FAITH_BUY_ENCAMPMENT_BUILDINGS_FIRST',				'DistrictType',	'DISTRICT_ENCAMPMENT'),
		('P0K_TRAIT_FAITH_BUY_INDUSTRIAL_ZONE_BUILDINGS_FIRST',			'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_FAITH_BUY_HARBOR_BUILDINGS_FIRST',					'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_FAITH_BUY_COMMERCIAL_HUB_BUILDINGS_FIRST',			'DistrictType',	'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_FAITH_BUY_ENTERTAINMENT_COMPLEX_BUILDINGS_FIRST',	'DistrictType',	'DISTRICT_ENTERTAINMENT_COMPLEX'),
		('P0K_TRAIT_FAITH_BUY_WATER_PARK_BUILDINGS_FIRST',				'DistrictType',	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'),
		('P0K_TRAIT_FAITH_BUY_GOV_PLAZA_BUILDINGS_FIRST',				'DistrictType',	'DISTRICT_GOVERNMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_KANDAKE_OF_MEROE' AND ModifierId IN
('TRAIT_BASE_DISTRICT_PRODUCTION_MODIFIER', 'TRAIT_PYRAMID_DISTRICT_PRODUCTION_MODIFIER');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_DOUBLE_BUILDER_PRODUCTION'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_PRODUCTION_TOWARDS_FIRST_DISTRICT'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_PRODUCTION_TOWARDS_SECOND_DISTRICT'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_DOMESTIC_TRADE_FAITH_PER_DISTRICT'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_DOMESTIC_TRADE_FOOD_PER_DISTRICT'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_CAMPUS_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_THEATER_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_HOLY_SITE_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_ENCAMPMENT_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_INDUSTRIAL_ZONE_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_HARBOR_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_COMMERCIAL_HUB_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_ENTERTAINMENT_COMPLEX_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_WATER_PARK_BUILDINGS_FIRST'),
		('TRAIT_LEADER_KANDAKE_OF_MEROE',	'P0K_TRAIT_FAITH_BUY_GOV_PLAZA_BUILDINGS_FIRST');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: FUNERARY PYRAMID (ENHANCEMENT)
--=============================================================================================================
-- Can be built on all terrain except Snow.
-- Can be built on Floodplains, Oases, Marsh, and Volcanic Soil.
-- Cannot be built next to another Funerary Pyramid.
-- Provides Tourism from Faith after unlocking Flight.
-- +1 Food for each adjacent Aqueduct or Dam (remove City Center adjacency).
-- (Add the Encampment as a Production adjacency).
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements
SET SameAdjacentValid = 0
WHERE ImprovementType = 'IMPROVEMENT_PYRAMID';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,											Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict)
VALUES	('p0k_Pyramid_AqueductAdjacency',				'Placeholder',	'YIELD_FOOD',		1,				1,				'DISTRICT_AQUEDUCT'),
		('p0k_Pyramid_DamAdjacency',					'Placeholder',	'YIELD_FOOD',		1,				1,				'DISTRICT_DAM'),
		('p0k_Pyramid_EncampmentAdjacency',				'Placeholder',	'YIELD_PRODUCTION',	1,				1,				'DISTRICT_ENCAMPMENT');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------	
DELETE FROM Improvement_Adjacencies
WHERE YieldChangeId = 'Pyramid_CityCenterAdjacency';

INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_PYRAMID',	'p0k_Pyramid_AqueductAdjacency'),
		('IMPROVEMENT_PYRAMID',	'p0k_Pyramid_DamAdjacency'),	
		('IMPROVEMENT_PYRAMID',	'p0k_Pyramid_EncampmentAdjacency');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_PYRAMID',	'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_PYRAMID',	'FEATURE_FLOODPLAINS_PLAINS'),
		('IMPROVEMENT_PYRAMID',	'FEATURE_OASIS'),
		('IMPROVEMENT_PYRAMID',	'FEATURE_MARSH'),
		('IMPROVEMENT_PYRAMID',	'FEATURE_VOLCANIC_SOIL');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,		TerrainType)
VALUES	('IMPROVEMENT_PYRAMID',	'TERRAIN_GRASS'),
		('IMPROVEMENT_PYRAMID',	'TERRAIN_GRASS_HILLS'),
		('IMPROVEMENT_PYRAMID',	'TERRAIN_PLAINS'),
		('IMPROVEMENT_PYRAMID',	'TERRAIN_PLAINS_HILLS'),
		('IMPROVEMENT_PYRAMID',	'TERRAIN_TUNDRA'),
		('IMPROVEMENT_PYRAMID',	'TERRAIN_TUNDRA_HILLS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,		TourismSource,			PrereqTech,		ScalingFactor)
VALUES	('IMPROVEMENT_PYRAMID',	'TOURISMSOURCE_FAITH',	'TECH_FLIGHT',	100);