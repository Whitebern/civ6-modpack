/* 
	Civilizations Expanded: Norway
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: FROM SEA TO SUMMIT 
--=============================================================================================================
-- +2 Faith and +2 Production to City Centers adjacent to a Water tile.
-- Sea resources receive +1 of the appropriate yield from specialty districts within 3 tiles.
-- Tiles with Breathtaking Appeal that are adjacent to Water tiles provide +1 Culture, +1 Food, and +1 Gold.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_NORWAY_REQUIRES_PLOT_HAS_CITY_CENTER',			'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_CAMPUS',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),	
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_THEATER',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),		
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HOLY_SITE',			'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),		
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_INDUSTRIAL_ZONE',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),				
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_COMMERCIAL_HUB',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),		
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HARBOR',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,			Value)
VALUES	('P0K_NORWAY_REQUIRES_PLOT_HAS_CITY_CENTER',			'DistrictType',	'DISTRICT_CITY_CENTER'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_CAMPUS',				'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_CAMPUS',				'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_CAMPUS',				'MaxRange',		3),	
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_THEATER',			'DistrictType',	'DISTRICT_THEATER'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_THEATER',			'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_THEATER',			'MaxRange',		3),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HOLY_SITE',			'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HOLY_SITE',			'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HOLY_SITE',			'MaxRange',		3),		
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_INDUSTRIAL_ZONE',	'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_INDUSTRIAL_ZONE',	'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_INDUSTRIAL_ZONE',	'MaxRange',		3),	
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_COMMERCIAL_HUB',		'DistrictType',	'DISTRICT_COMMERCIAL_HUB'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_COMMERCIAL_HUB',		'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_COMMERCIAL_HUB',		'MaxRange',		3),	
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HARBOR',				'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HARBOR',				'MinRange',		0),
		('P0K_NORWAY_REQUIRES_WITHIN_THREE_HARBOR',				'MaxRange',		3);				
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,														RequirementSetType)
VALUES	('P0K_NORWAY_COASTAL_CITY_CENTER',										'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_CAMPUS',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_THEATER',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HOLY_SITE',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_INDUSTRIAL_ZONE',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_COMMERCIAL_HUB',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_NORWAY_BREATHTAKING_ADJACENT_TO_WATER',							'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,														RequirementId)
VALUES	('P0K_NORWAY_COASTAL_CITY_CENTER',										'P0K_NORWAY_REQUIRES_PLOT_HAS_CITY_CENTER'),
		('P0K_NORWAY_COASTAL_CITY_CENTER',										'REQUIRES_PLOT_ADJACENT_TO_COAST'),
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_CAMPUS',				'P0K_NORWAY_REQUIRES_WITHIN_THREE_CAMPUS'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_CAMPUS',				'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_CAMPUS',				'REQUIRES_TERRAIN_COAST'),			
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_THEATER',			'P0K_NORWAY_REQUIRES_WITHIN_THREE_THEATER'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_THEATER',			'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_THEATER',			'REQUIRES_TERRAIN_COAST'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HOLY_SITE',			'P0K_NORWAY_REQUIRES_WITHIN_THREE_HOLY_SITE'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HOLY_SITE',			'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HOLY_SITE',			'REQUIRES_TERRAIN_COAST'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_INDUSTRIAL_ZONE',	'P0K_NORWAY_REQUIRES_WITHIN_THREE_INDUSTRIAL_ZONE'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_INDUSTRIAL_ZONE',	'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_INDUSTRIAL_ZONE',	'REQUIRES_TERRAIN_COAST'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_COMMERCIAL_HUB',		'P0K_NORWAY_REQUIRES_WITHIN_THREE_COMMERCIAL_HUB'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_COMMERCIAL_HUB',		'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_COMMERCIAL_HUB',		'REQUIRES_TERRAIN_COAST'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HARBOR',				'P0K_NORWAY_REQUIRES_WITHIN_THREE_HARBOR'),	
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HARBOR',				'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),		
		('P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HARBOR',				'REQUIRES_TERRAIN_COAST'),	
		('P0K_NORWAY_BREATHTAKING_ADJACENT_TO_WATER',							'REQUIRES_PLOT_BREATHTAKING_APPEAL'),
		('P0K_NORWAY_BREATHTAKING_ADJACENT_TO_WATER',							'REQUIRES_PLOT_IS_ADJACENT_TO_COAST');
---------------------------------------------------------------------------------------------------------------						
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,							SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_FAITH',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_COASTAL_CITY_CENTER'),
		('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_COASTAL_CITY_CENTER'),	
		('P0K_TRAIT_SEA_RESOURCE_COAST_SCIENCE',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_CAMPUS'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_CULTURE',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_THEATER'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_FAITH',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HOLY_SITE'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_PRODUCTION',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_COMMERCIAL_HUB',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_COMMERCIAL_HUB'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_HARBOR',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_SEA_RESOURCE_COAST_PLOT_THREE_INCLUDE_HARBOR'),
		('P0K_TRAIT_BREATHTAKING_COASTAL_CULTURE',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_BREATHTAKING_ADJACENT_TO_WATER'),
		('P0K_TRAIT_BREATHTAKING_COASTAL_FOOD',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_NORWAY_BREATHTAKING_ADJACENT_TO_WATER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_FAITH',			'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_FAITH',			'Amount',		2),
		('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_PRODUCTION',	'Amount',		2),
		('P0K_TRAIT_SEA_RESOURCE_COAST_SCIENCE',					'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_SCIENCE',					'Amount',		1),
		('P0K_TRAIT_SEA_RESOURCE_COAST_CULTURE',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_CULTURE',					'Amount',		1),
		('P0K_TRAIT_SEA_RESOURCE_COAST_FAITH',						'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_FAITH',						'Amount',		1),
		('P0K_TRAIT_SEA_RESOURCE_COAST_PRODUCTION',					'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_PRODUCTION',					'Amount',		1),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_COMMERCIAL_HUB',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_COMMERCIAL_HUB',		'Amount',		1),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_HARBOR',				'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_HARBOR',				'Amount',		1),
		('P0K_TRAIT_BREATHTAKING_COASTAL_CULTURE',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_BREATHTAKING_COASTAL_CULTURE',					'Amount',		1),
		('P0K_TRAIT_BREATHTAKING_COASTAL_FOOD',						'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_BREATHTAKING_COASTAL_FOOD',						'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION' AND ModifierId IN
('TRAIT_EARLY_OCEAN_NAVIGATION', 'TRAIT_IGNORE_EMBARK_DISEMBARK_COST', 'TRAIT_MELEE_NAVAL_HEAL_NEUTRAL');

INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_FAITH'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_TO_SUMMIT_COAST_CITY_CENTER_PRODUCTION'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_SCIENCE'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_CULTURE'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_FAITH'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_PRODUCTION'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_COMMERCIAL_HUB'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_SEA_RESOURCE_COAST_GOLD_HARBOR'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_BREATHTAKING_COASTAL_CULTURE'),
		('TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION',	'P0K_TRAIT_BREATHTAKING_COASTAL_FOOD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: THUNDERBOLT OF THE NORTH 
--=============================================================================================================
-- Combat victories grant Gold equal to 50% of the Combat Strength of the defeated unit.
-- +25% Production towards Harbors and Commercial Hubs.
-- Naval melee units can perform coastal raids and can heal in neutral territory.
-- Pillaging or raiding Mines grants bonus Science; pillaging or raiding Quarries, Pastures, Plantations, and Camps grants bonus Culture.
-- Gain the Viking Longship unique unit.
--=============================================================================================================	
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_TRAIT_GOLD_KILLS',						'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD'),
		('P0K_TRAIT_BOOST_COMMERCIAL_HUB_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION'),
		('P0K_TRAIT_BOOST_HARBOR_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	('P0K_TRAIT_GOLD_KILLS',						'YieldType',				'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_KILLS',						'PercentDefeatedStrength',	50),
		('P0K_TRAIT_BOOST_COMMERCIAL_HUB_PRODUCTION',	'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_BOOST_COMMERCIAL_HUB_PRODUCTION',	'Amount',					25),
		('P0K_TRAIT_BOOST_HARBOR_PRODUCTION',			'DistrictType',				'DISTRICT_HARBOR'),
		('P0K_TRAIT_BOOST_HARBOR_PRODUCTION',			'Amount',					25);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_MELEE_COASTAL_RAIDS' AND ModifierId IN
('TRAIT_ANCIENT_NAVAL_MELEE_PRODUCTION', 'TRAIT_ATOMIC_NAVAL_MELEE_PRODUCTION', 'TRAIT_CLASSICAL_NAVAL_MELEE_PRODUCTION',
'TRAIT_INDUSTRIAL_NAVAL_MELEE_PRODUCTION', 'TRAIT_INFORMATION_NAVAL_MELEE_PRODUCTION', 'TRAIT_MEDIEVAL_NAVAL_MELEE_PRODUCTION',
'TRAIT_MODERN_NAVAL_MELEE_PRODUCTION', 'TRAIT_RENAISSANCE_NAVAL_MELEE_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_MELEE_COASTAL_RAIDS',	'TRAIT_IGNORE_EMBARK_DISEMBARK_COST'),
		('TRAIT_LEADER_MELEE_COASTAL_RAIDS',	'TRAIT_MELEE_NAVAL_HEAL_NEUTRAL'),
		('TRAIT_LEADER_MELEE_COASTAL_RAIDS',	'P0K_TRAIT_GOLD_KILLS'),
		('TRAIT_LEADER_MELEE_COASTAL_RAIDS',	'P0K_TRAIT_BOOST_COMMERCIAL_HUB_PRODUCTION'),
		('TRAIT_LEADER_MELEE_COASTAL_RAIDS',	'P0K_TRAIT_BOOST_HARBOR_PRODUCTION');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: STAVE CHURCH (REWORK)
--=============================================================================================================
-- +0.5 Housing.
-- +2 Faith.
-- Adjacencies:
-- +1 Faith for each adjacent Holy Site.
-- +1 Faith for each adjacent Mountain.
-- +1 Food for every 2 Water tiles.
-- +1 Food for each adjacent Natural Wonder tile.
-- +1 Production for each adjacent Forest.
-- +1 Gold for each adjacent Sea resource tile.
-- Bonus Yields:
-- +1 Faith with Reformed Church.
-- Canot be built next to another Stave Church.
--=============================================================================================================
-- First, housekeeping. 
--=============================================================================================================
DELETE FROM Traits
WHERE TraitType = 'TRAIT_CIVILIZATION_BUILDING_STAVE_CHURCH';

DELETE FROM CivilizationTraits
WHERE TraitType = 'TRAIT_CIVILIZATION_BUILDING_STAVE_CHURCH';

DELETE FROM Types 
WHERE Type = 'BUILDING_STAVE_CHURCH';

DELETE FROM BuildingReplaces 
WHERE CivUniqueBuildingType = 'BUILDING_STAVE_CHURCH';

DELETE FROM Buildings 
WHERE BuildingType = 'BUILDING_STAVE_CHURCH';

DELETE FROM BuildingPrereqs 
WHERE Building = 'BUILDING_STAVE_CHURCH';

DELETE FROM Building_YieldChanges 
WHERE BuildingType = 'BUILDING_STAVE_CHURCH';

DELETE FROM Building_GreatPersonPoints 
WHERE BuildingType = 'BUILDING_STAVE_CHURCH';

DELETE FROM Building_GreatWorks 
WHERE BuildingType = 'BUILDING_STAVE_CHURCH';

DELETE FROM BuildingModifiers 
WHERE BuildingType = 'BUILDING_STAVE_CHURCH';
--=============================================================================================================
-- Now we can add the Improvement.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,												Kind)
VALUES	('P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH',	'KIND_TRAIT'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',					'KIND_IMPROVEMENT');
---------------------------------------------------------------------------------------------------------------
-- Traits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,											Name)
VALUES	('P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH',	'LOC_P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH_NAME');
---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
---------------------------------------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(CivilizationType,		TraitType)
VALUES	('CIVILIZATION_NORWAY',	'P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH');
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,										Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentSeaResource,	AdjacentTerrain,			AdjacentFeature,	AdjacentRiver,	AdjacentNaturalWonder,	AdjacentDistrict)
VALUES	('p0k_StaveChurch_GrassMountain_Faith',		'Placeholder',	'YIELD_FAITH',		1,				1,				0,						'TERRAIN_GRASS_MOUNTAIN',	NULL,				0,				0,						NULL),
		('p0k_StaveChurch_PlainsMountain_Faith',	'Placeholder',	'YIELD_FAITH',		1,				1,				0,						'TERRAIN_PLAINS_MOUNTAIN',	NULL,				0,				0,						NULL),
		('p0k_StaveChurch_DesertMountain_Faith',	'Placeholder',	'YIELD_FAITH',		1,				1,				0,						'TERRAIN_DESERT_MOUNTAIN',	NULL,				0,				0,						NULL),
		('p0k_StaveChurch_TundraMountain_Faith',	'Placeholder',	'YIELD_FAITH',		1,				1,				0,						'TERRAIN_TUNDRA_MOUNTAIN',	NULL,				0,				0,						NULL),
		('p0k_StaveChurch_SnowMountain_Faith',		'Placeholder',	'YIELD_FAITH',		1,				1,				0,						'TERRAIN_SNOW_MOUNTAIN',	NULL,				0,				0,						NULL),
		('p0k_StaveChurch_SeaResource_Gold',		'Placeholder',	'YIELD_GOLD',		1,				1,				1,						NULL,						NULL,				0,				0,						NULL),
		('p0k_StaveChurch_NaturalWonder_Food',		'Placeholder',	'YIELD_FOOD',		1,				1,				0,						NULL,						NULL,				0,				1,						NULL),
		('p0k_StaveChurch_Woods_Production',		'Placeholder',	'YIELD_PRODUCTION',	1,				1,				0,						NULL,						'FEATURE_FOREST',	0,				0,						NULL),
		('p0k_StaveChurch_Coast_Food',				'Placeholder',	'YIELD_FOOD',		1,				2,				0,						'TERRAIN_COAST',			NULL,				0,				0,						NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvements
		(ImprovementType,					
		Name,										
		PrereqCivic,		
		Buildable,	
		Description,									
		PlunderType,		
		PlunderAmount,	
		Icon,									
		TraitType,	
		Housing,	
		TilesRequired,	
		SameAdjacentValid,	
		Workable)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',					-- ImprovementType
		'LOC_P0K_IMPROVEMENT_STAVE_CHURCH_NAME',			-- Name
		'CIVIC_MYSTICISM',									-- PrereqCivic
		1,													-- Buildable
		'LOC_P0K_IMPROVEMENT_STAVE_CHURCH_DESCRIPTION',		-- Description 	
		'PLUNDER_FAITH',									-- PlunderType
		25,													-- PlunderAmount
		'ICON_P0K_IMPROVEMENT_STAVE_CHURCH',				-- Icon
		'P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH',	-- TraitType,
		1,													-- Housing
		2,													-- TilesRequired
		0,													-- SameAdjacentvalid
		1);													-- Workable	
---------------------------------------------------------------------------------------------------------------
-- MomentIllustrations
---------------------------------------------------------------------------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'P0K_IMPROVEMENT_STAVE_CHURCH',	'Moment_Infrastructure_Norway.dds');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,					TerrainType)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_GRASS'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_PLAINS'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_TUNDRA'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_SNOW'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_GRASS_HILLS'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_PLAINS_HILLS'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_TUNDRA_HILLS'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'TERRAIN_SNOW_HILLS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,					FeatureType)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'FEATURE_VOLCANIC_SOIL'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'FEATURE_MARSH');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,					UnitType)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'UNIT_BUILDER');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,					YieldType,			YieldChange)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'YIELD_FAITH',		1),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'YIELD_FOOD',		0),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'YIELD_PRODUCTION',	0),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'YIELD_GOLD',		0);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,		BonusYieldChange,	PrereqCivic)
VALUES	('55',	'P0K_IMPROVEMENT_STAVE_CHURCH',	'YIELD_FAITH',	1,					'CIVIC_REFORMED_CHURCH');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,					YieldChangeId)
 VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_GrassMountain_Faith'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_PlainsMountain_Faith'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_DesertMountain_Faith'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_TundraMountain_Faith'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_SnowMountain_Faith'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_SeaResource_Gold'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_NaturalWonder_Food'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_Woods_Production'),
		('P0K_IMPROVEMENT_STAVE_CHURCH',	'p0k_StaveChurch_Coast_Food');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,					TourismSource,			PrereqTech,		ScalingFactor)
VALUES	('P0K_IMPROVEMENT_STAVE_CHURCH',	'TOURISMSOURCE_FAITH',	'TECH_FLIGHT',	100);
--=============================================================================================================
-- LEADER UNIQUE UNIT: BERSERKER (ENHANCEMENT)
--=============================================================================================================
-- Purchased with Faith.
--=============================================================================================================
-- Units 
---------------------------------------------------------------------------------------------------------------
UPDATE	Units
SET		PurchaseYield = 'YIELD_FAITH'
WHERE	UnitType = 'UNIT_NORWEGIAN_BERSERKER';