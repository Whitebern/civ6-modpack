/* 
	Civilizations Expanded: Canada
	By p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: THE LAST BEST WEST (REWORK + REASSIGNMENT FROM LEADER TRAIT)
--=============================================================================================================
-- Begin the game with a free Governor Title.
-- Cities with a Governor gain +25% Production towards Builders, Settlers, Traders, and City-Center buildings.
-- +1 Food and +1 Production from all Tundra and Snow tiles, doubling for City Centers.
-- Water tiles adjacent to Tundra or Snow provide +1 Food and +1 Production.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,													RequirementType)
VALUES	('P0K_CANADA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),				
		('P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_HILLS',						'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),			
		('P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN',					'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_HAS_CITY_CENTER',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_TUNDRA_SNOW_REQUIREMENTS',				'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA',					'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_HILLS',			'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_MOUNTAIN',		'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW',					'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_HILLS',				'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_MOUNTAIN',			'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),
		('P0K_CANADA_REQUIRES_ADJACENT_TO_TUNDRA_OR_SNOW_REQUIREMENTS',	'REQUIREMENT_REQUIREMENTSET_IS_MET');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,													Name,				Value)
VALUES	('P0K_CANADA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',				'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),								
		('P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_HILLS',						'TerrainType',		'TERRAIN_SNOW_HILLS'),									
		('P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN',					'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_CANADA_REQUIRES_PLOT_HAS_CITY_CENTER',					'DistrictType',		'DISTRICT_CITY_CENTER'),
		('P0K_CANADA_REQUIRES_TUNDRA_SNOW_REQUIREMENTS',				'RequirementSetId',	'P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS'),
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA',					'TerrainType',		'TERRAIN_TUNDRA'),	
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_HILLS',			'TerrainType',		'TERRAIN_TUNDRA_HILLS'),	
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_MOUNTAIN',		'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),	
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW',					'TerrainType',		'TERRAIN_SNOW'),	
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_HILLS',				'TerrainType',		'TERRAIN_SNOW_HILLS'),	
		('P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_MOUNTAIN',			'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),	
		('P0K_CANADA_REQUIRES_ADJACENT_TO_TUNDRA_OR_SNOW_REQUIREMENTS',	'RequirementSetId',	'P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW');																				
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'REQUIREMENTSET_TEST_ANY'),
		('P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_CANADA_TUNDRA_SNOW_CITY_CENTER_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'REQUIRES_PLOT_HAS_TUNDRA'),											
		('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'REQUIRES_PLOT_HAS_TUNDRA_HILLS'),										
		('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'P0K_CANADA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN'),								
		('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'REQUIRES_PLOT_HAS_SNOW'),												
		('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_HILLS'),									
		('P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS',				'P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN'),
		('P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS',	'REQUIRES_PLOT_HAS_TUNDRA'),
		('P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS',	'REQUIRES_PLOT_HAS_TUNDRA_HILLS'),
		('P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS',	'REQUIRES_PLOT_HAS_SNOW'),
		('P0K_CANADA_TUNDRA_SNOW_NO_MOUNTAIN_REQUIREMENTS',	'P0K_CANADA_REQUIRES_PLOT_HAS_SNOW_HILLS'),
		('P0K_CANADA_TUNDRA_SNOW_CITY_CENTER_REQUIREMENTS',	'P0K_CANADA_REQUIRES_TUNDRA_SNOW_REQUIREMENTS'),
		('P0K_CANADA_TUNDRA_SNOW_CITY_CENTER_REQUIREMENTS',	'P0K_CANADA_REQUIRES_PLOT_HAS_CITY_CENTER'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_HILLS'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_TUNDRA_MOUNTAIN'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_HILLS'),
		('P0K_CANADA_PLOT_IS_ADJACENT_TO_TUNDRA_OR_SNOW',	'P0K_CANADA_REQUIRES_PLOT_ADJACENT_TO_SNOW_MOUNTAIN'),
		('P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW',		'P0K_CANADA_REQUIRES_ADJACENT_TO_TUNDRA_OR_SNOW_REQUIREMENTS'),
		('P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW',		'REQUIRES_TERRAIN_COAST');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,											Runonce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FREE_GOVERNOR_CAPITAL',							'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',				1,			1,			'PLAYER_HAS_ONE_CITY'),
		('P0K_LAST_BEST_WEST_GOVERNOR_BUILDER_BOOST',				'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION',		0,			0,			'CITY_HAS_GOVERNOR'),
		('P0K_LAST_BEST_WEST_GOVERNOR_TRADER_BOOST',				'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION',		0,			0,			'CITY_HAS_GOVERNOR'),	
		('P0K_LAST_BEST_WEST_GOVERNOR_SETTLER_BOOST',				'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION',		0,			0,			'CITY_HAS_GOVERNOR'),			
		('P0K_LAST_BEST_WEST_GOVERNOR_CITY_CENTER_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	0,			0,			'CITY_HAS_GOVERNOR'),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_FOOD',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS'),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_PRODUCTION',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_TUNDRA_SNOW_REQUIREMENTS'),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_FOOD',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_TUNDRA_SNOW_CITY_CENTER_REQUIREMENTS'),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_TUNDRA_SNOW_CITY_CENTER_REQUIREMENTS'),
		('P0K_COAST_TUNDRA_SNOW_FOOD',								'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW'),
		('P0K_COAST_TUNDRA_SNOW_PRODUCTION',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW'),
		('P0K_COAST_TUNDRA_SNOW_GOLD',								'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'P0K_CANADA_WATER_ADJACENT_TO_TUNDRA_OR_SNOW');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_FREE_GOVERNOR_CAPITAL',							'Delta',		1),
		('P0K_LAST_BEST_WEST_GOVERNOR_BUILDER_BOOST',				'UnitType',		'UNIT_BUILDER'),
		('P0K_LAST_BEST_WEST_GOVERNOR_BUILDER_BOOST',				'Amount',		25),
		('P0K_LAST_BEST_WEST_GOVERNOR_TRADER_BOOST',				'UnitType',		'UNIT_TRADER'),
		('P0K_LAST_BEST_WEST_GOVERNOR_TRADER_BOOST',				'Amount',		25),
		('P0K_LAST_BEST_WEST_GOVERNOR_SETTLER_BOOST',				'UnitType',		'UNIT_SETTLER'),
		('P0K_LAST_BEST_WEST_GOVERNOR_SETTLER_BOOST',				'Amount',		25),
		('P0K_LAST_BEST_WEST_GOVERNOR_CITY_CENTER_BOOST',			'DistrictType',	'DISTRICT_CITY_CENTER'),
		('P0K_LAST_BEST_WEST_GOVERNOR_CITY_CENTER_BOOST',			'Amount',		25),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_FOOD',			'YieldType',	'YIELD_FOOD'),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_FOOD',			'Amount',		1),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_PRODUCTION',		'Amount',		1),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_FOOD',			'YieldType',	'YIELD_FOOD'),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_FOOD',			'Amount',		1),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_PRODUCTION',	'Amount',		1),
		('P0K_COAST_TUNDRA_SNOW_FOOD',								'YieldType',	'YIELD_FOOD'),
		('P0K_COAST_TUNDRA_SNOW_FOOD',								'Amount',		1),
		('P0K_COAST_TUNDRA_SNOW_PRODUCTION',						'YieldType',	'YIELD_PRODUCTION'),
		('P0K_COAST_TUNDRA_SNOW_PRODUCTION',						'Amount',		1),
		('P0K_COAST_TUNDRA_SNOW_GOLD',								'YieldType',	'YIELD_GOLD'),
		('P0K_COAST_TUNDRA_SNOW_GOLD',								'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_FACES_OF_PEACE' AND ModifierId IN
('TRAIT_EMERGENCY_FAVOR_MODIFIER', 'TRAIT_NO_SUPRISE_WAR_FOR_CANADA', 'TRAIT_TOURISM_INTO_FAVOR');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_TRAIT_FREE_GOVERNOR_CAPITAL'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_GOVERNOR_BUILDER_BOOST'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_GOVERNOR_TRADER_BOOST'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_GOVERNOR_SETTLER_BOOST'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_GOVERNOR_CITY_CENTER_BOOST'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_FOOD'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_INCREASED_TUNDRA_SNOW_PRODUCTION'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_FOOD'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_LAST_BEST_WEST_CITY_CENTER_TUNDRA_SNOW_PRODUCTION'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_COAST_TUNDRA_SNOW_FOOD'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_COAST_TUNDRA_SNOW_PRODUCTION'),
		('TRAIT_CIVILIZATION_FACES_OF_PEACE',	'P0K_COAST_TUNDRA_SNOW_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: THE SUNNY WAY (REWORK)
--=============================================================================================================
-- Woods provide +1 Science.
-- If next to a River, Woods also provide +2 Gold and +1 Production.
-- Specialty districts gain a Standard adjacency bonus from Woods.
-- Completing a Harbor or Industrial Zone grants +1 Envoy.
--=============================================================================================================
-- ExcludedAdjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO ExcludedAdjacencies
		(TraitType,						YieldChangeId)
VALUES	('TRAIT_LEADER_LAST_BEST_WEST',	'Forest_Faith');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_CANADA_PLOT_IS_FOREST',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_CANADA_FOREST_ON_RIVER',			'REQUIREMENTSET_TEST_ALL'),		
		('P0K_CANADA_CITY_HAS_HARBOR',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_CANADA_CITY_HAS_INDUSTRIAL_ZONE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_CANADA_PLOT_IS_FOREST',			'PLOT_IS_FOREST_REQUIREMENT'),
		('P0K_CANADA_FOREST_ON_RIVER',			'PLOT_IS_FOREST_REQUIREMENT'),
		('P0K_CANADA_FOREST_ON_RIVER',			'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('P0K_CANADA_CITY_HAS_HARBOR',			'REQUIRES_CITY_HAS_HARBOR'),
		('P0K_CANADA_CITY_HAS_INDUSTRIAL_ZONE',	'REQUIRES_CITY_HAS_INDUSTRIAL_ZONE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SCIENCE_FROM_FOREST',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_CANADA_PLOT_IS_FOREST'),
		('P0K_TRAIT_GOLD_FROM_FOREST_RIVER',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_CANADA_FOREST_ON_RIVER'),
		('P0K_TRAIT_PRODUCTION_FROM_FOREST_RIVER',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_CANADA_FOREST_ON_RIVER'),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	0,			0,			NULL),
		('P0K_TRAIT_HARBOR_INFLUENCE_TOKEN',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	0,			0,			'P0K_CANADA_CITY_HAS_HARBOR'),
		('P0K_TRAIT_HARBOR_INFLUENCE_TOKEN_MODIFIER',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	1,			1,			NULL),
		('P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	0,			0,			'P0K_CANADA_CITY_HAS_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN_MODIFIER',	'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	1,			1,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_SCIENCE_FROM_FOREST',						'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_FROM_FOREST',						'Amount',		1),
		('P0K_TRAIT_GOLD_FROM_FOREST_RIVER',					'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_FROM_FOREST_RIVER',					'Amount',		2),
		('P0K_TRAIT_PRODUCTION_FROM_FOREST_RIVER',				'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_FROM_FOREST_RIVER',				'Amount',		1),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'Amount',		1),
		('P0K_TRAIT_CAMPUS_WOODS_ADJACENCY',					'Description',	'LOC_P0K_DISTRICT_FOREST_2_SCIENCE'),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'DistrictType',	'DISTRICT_THEATER'),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'Amount',		1),
		('P0K_TRAIT_THEATER_WOODS_ADJACENCY',					'Description',	'LOC_P0K_DISTRICT_FOREST_2_CULTURE'),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'Amount',		1),
		('P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY',					'Description',	'LOC_P0K_DISTRICT_FOREST_2_FAITH'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'Amount',		1),
		('P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY',			'Description',	'LOC_P0K_DISTRICT_FOREST_2_PRODUCTION'),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'DistrictType',	'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'Amount',		1),
		('P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY',			'Description',	'LOC_P0K_DISTRICT_FOREST_2_GOLD'),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'FeatureType',	'FEATURE_FOREST'),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'Amount',		1),
		('P0K_TRAIT_HARBOR_WOODS_ADJACENCY',					'Description',	'LOC_P0K_DISTRICT_FOREST_2_GOLD'),
		('P0K_TRAIT_HARBOR_INFLUENCE_TOKEN',					'ModifierId',	'P0K_TRAIT_HARBOR_INFLUENCE_TOKEN_MODIFIER'),
		('P0K_TRAIT_HARBOR_INFLUENCE_TOKEN_MODIFIER',			'Amount',		1),
		('P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN',			'ModifierId',	'P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN_MODIFIER'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN_MODIFIER',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_LEADER_LAST_BEST_WEST' 
AND			ModifierId IN
			('TUNDRA_FARMS',
			'TUNDRA_HILLS_FARMS',
			'TUNDRA_CAMPS_FOOD', 
			'TUNDRA_FARMS_FOOD',
			'TUNDRA_HILLS_CAMPS_FOOD',
			'TUNDRA_HILLS_FARMS_FOOD',
			'TUNDRA_HILLS_LUMBER_MILLS_PRODUCTION',
			'TUNDRA_HILLS_MINES_PRODUCTION',
			'TUNDRA_HILLS_PLOT_COST',
			'TUNDRA_HILLS_RESOURCE_EXTRACTION',
			'TUNDRA_LUMBER_MILLS_PRODUCTION',
			'TUNDRA_MINES_PRODUCTION',
			'TUNDRA_PLOT_COST',
			'TUNDRA_RESOURCE_EXTRACTION',
			'SNOW_CAMPS_FOOD', 
			'SNOW_FARMS_FOOD',
			'SNOW_HILLS_CAMPS_FOOD',
			'SNOW_HILLS_FARMS_FOOD',
			'SNOW_HILLS_LUMBER_MILLS_PRODUCTION',
			'SNOW_HILLS_MINES_PRODUCTION',
			'SNOW_HILLS_PLOT_COST',
			'SNOW_HILLS_RESOURCE_EXTRACTION',
			'SNOW_LUMBER_MILLS_PRODUCTION',
			'SNOW_MINES_PRODUCTION',
			'SNOW_PLOT_COST',
			'SNOW_RESOURCE_EXTRACTION');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_SCIENCE_FROM_FOREST'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_GOLD_FROM_FOREST_RIVER'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_PRODUCTION_FROM_FOREST_RIVER'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_CAMPUS_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_THEATER_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_HOLY_SITE_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_INDUSTRIAL_ZONE_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_COMMERCIAL_HUB_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_HARBOR_WOODS_ADJACENCY'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_HARBOR_INFLUENCE_TOKEN'),
		('TRAIT_LEADER_LAST_BEST_WEST',	'P0K_TRAIT_INDUSTRIAL_ZONE_INFLUENCE_TOKEN');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: ICE HOCKEY RINK (ENHANCEMENT)
--=============================================================================================================
-- +1 Housing.
-- +1 Food, +1 Production, and +1 Gold
-- Additional +2 Gold at Professional Sports.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET Housing = 1 WHERE ImprovementType = 'IMPROVEMENT_ICE_HOCKEY_RINK';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_ICE_HOCKEY_RINK'
AND (YieldType = 'YIELD_FOOD' OR YieldType = 'YIELD_PRODUCTION');

INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange)
VALUES	('IMPROVEMENT_ICE_HOCKEY_RINK',	'YIELD_GOLD',		1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,		BonusYieldChange,	PrereqCivic)
VALUES	(126,	'IMPROVEMENT_ICE_HOCKEY_RINK',	'YIELD_GOLD',	2,					'CIVIC_PROFESSIONAL_SPORTS');
--=============================================================================================================
-- UNIQUE UNIT: MOUNTIE (ENHANCEMENT)
--=============================================================================================================
-- Replaces Cavalry (with Cost, Combat Strength, Maintenance, etc. adjusted accordingly.) and upgrades to Helicopter like Cavalry.
-- Unlocked with the Nationalism civic now.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units SET 
	Combat = 61, 
	Cost = 380, 
	PrereqCivic = 'CIVIC_NATIONALISM', 
	StrategicResource = 'RESOURCE_HORSES',
	Maintenance = 4,
	AdvisorType = 'ADVISOR_CONQUEST'
WHERE UnitType = 'UNIT_CANADA_MOUNTIE'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType)
SELECT	'UNIT_CANADA_MOUNTIE',	'UNIT_CAVALRY'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitUpgrades
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitUpgrades
		(Unit,					UpgradeUnit)
SELECT	'UNIT_CANADA_MOUNTIE',	'UNIT_HELICOPTER'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
 

