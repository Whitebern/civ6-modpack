--============================================================================================================= 
-- CIVILIZATIONS EXPANDED: VIETNAM
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: NINE DRAGON RIVER DELTA (ENHANCEMENT)
--=============================================================================================================
-- All specialty districts receive a minor adjacency bonus from Woods, Rainforest, and Marsh.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType)
VALUES	-- Campus
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		-- Theater Square
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		-- Holy Site
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		-- Industrial Zone
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',	'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',	'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',	'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		-- Commercial Hub
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',			'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		-- Harbor
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',					'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,				Value)
VALUES	-- Campus
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'DistrictType',		'DISTRICT_CAMPUS'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'FeatureType',		'FEATURE_FOREST'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'YieldType',		'YIELD_SCIENCE'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE',					'Description',		'LOC_P0K_VIETNAM_FOREST_SCIENCE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'DistrictType',		'DISTRICT_CAMPUS'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'YieldType',		'YIELD_SCIENCE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE',					'Description',		'LOC_P0K_VIETNAM_MARSH_SCIENCE'),
		-- Theater Square
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'FeatureType',		'FEATURE_FOREST'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE',			'Description',		'LOC_P0K_VIETNAM_FOREST_CULTURE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE',			'Description',		'LOC_P0K_VIETNAM_RAINFOREST_CULTURE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'DistrictType',		'DISTRICT_THEATER'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE',			'Description',		'LOC_P0K_VIETNAM_MARSH_CULTURE'),
		-- Holy Site
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'DistrictType',		'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'YieldType',		'YIELD_FAITH'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH',				'Description',		'LOC_P0K_VIETNAM_RAINFOREST_FAITH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'DistrictType',		'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'YieldType',		'YIELD_FAITH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH',					'Description',		'LOC_P0K_VIETNAM_MARSH_FAITH'),
		-- Industrial Zone
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'FeatureType',		'FEATURE_FOREST'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION',		'Description',		'LOC_P0K_VIETNAM_FOREST_PRODUCTION'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION',		'Description',		'LOC_P0K_VIETNAM_RAINFOREST_PRODUCTION'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION',		'Description',		'LOC_P0K_VIETNAM_MARSH_PRODUCTION'),
		-- Commercial Hub
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'FeatureType',		'FEATURE_FOREST'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD',			'Description',		'LOC_P0K_VIETNAM_FOREST_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD',			'Description',		'LOC_P0K_VIETNAM_RAINFOREST_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD',				'Description',		'LOC_P0K_VIETNAM_MARSH_GOLD'),
		-- Harbor
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'FeatureType',		'FEATURE_FOREST'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD',					'Description',		'LOC_P0K_VIETNAM_FOREST_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'FeatureType',		'FEATURE_JUNGLE'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD',					'Description',		'LOC_P0K_VIETNAM_RAINFOREST_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'DistrictType',		'DISTRICT_HARBOR'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'FeatureType',		'FEATURE_MARSH'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'TilesRequired',	2),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'Amount',			1),
		('P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD',						'Description',		'LOC_P0K_VIETNAM_MARSH_GOLD');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	-- Campus
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_FOREST_CAMPUS_SCIENCE'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_CAMPUS_SCIENCE'),
		-- Theater Square
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_FOREST_THEATER_SQUARE_CULTURE'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_JUNGLE_THEATER_SQUARE_CULTURE'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_THEATER_SQUARE_CULTURE'),
		-- Holy Site  
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_JUNGLE_HOLY_SITE_FAITH'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_HOLY_SITE_FAITH'),
		-- Industrial Zone
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_FOREST_INDUSTRIAL_ZONE_PRODUCTION'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_JUNGLE_INDUSTRIAL_ZONE_PRODUCTION'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_INDUSTRIAL_ZONE_PRODUCTION'),
		-- Commercial Hub
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_FOREST_COMMERCIAL_HUB_GOLD'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_JUNGLE_COMMERCIAL_HUB_GOLD'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_COMMERCIAL_HUB_GOLD'),
		-- Harbor
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_FOREST_HARBOR_GOLD'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_JUNGLE_HARBOR_GOLD'),
		('TRAIT_CIVILIZATION_VIETNAM',	'P0K_TRAIT_NINE_DRAGON_MARSH_HARBOR_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: ??? (ENHANCEMENT)
--=============================================================================================================
-- Military unit maintenance costs are reduced by 1 Gold per turn.
-- Earning a Great General grants a random Inspriation.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_TRAIT_REDUCED_MILITARY_MAINTENANCE',		'MODIFIER_PLAYER_ADJUST_UNIT_MAINTENANCE_DISCOUNT'),
		('P0K_TRAIT_GREAT_GENERAL_FREE_INSPIRATION',	'MODIFIER_PLAYER_GRANT_BOOST_WITH_GREAT_PERSON');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('P0K_TRAIT_REDUCED_MILITARY_MAINTENANCE',		'Amount',			1),
		('P0K_TRAIT_GREAT_GENERAL_FREE_INSPIRATION',	'GreatPersonClass',	'GREAT_PERSON_CLASS_GENERAL'),
		('P0K_TRAIT_GREAT_GENERAL_FREE_INSPIRATION',	'TechBoost',		0),
		('P0K_TRAIT_GREAT_GENERAL_FREE_INSPIRATION',	'OtherPlayers',		0);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('TRAIT_LEADER_TRIEU',	'P0K_TRAIT_REDUCED_MILITARY_MAINTENANCE'),
		('TRAIT_LEADER_TRIEU',	'P0K_TRAIT_GREAT_GENERAL_FREE_INSPIRATION');
--=============================================================================================================
-- UNIQUE DISTRICT: THANH (ENHANCEMENT)
--=============================================================================================================
-- Triggers a Culture Bomb, claiming adjacent tiles.
-- Instead of +2 Culture adjacency, +1 Culture and +1 Production.
-- +1 Great General point.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,				ModifierType)
VALUES	('P0K_THANH_CULTURE_BOMB',	'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,				Name,			Value)
VALUES	('P0K_THANH_CULTURE_BOMB',	'DistrictType',	'DISTRICT_THANH');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,	ModifierId)
VALUES	('TRAIT_CIVILIZATION_VIETNAM',	'P0K_THANH_CULTURE_BOMB');
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,						YieldType,			YieldChange,	TilesRequired,	OtherDistrictAdjacent)
VALUES	('p0k_Thanh_District_Culture',		'LOC_DISTRICT_DISTRICT_CULTURE',	'YIELD_CULTURE',	1,				1,				1),
		('p0k_Thanh_District_Production',	'LOC_DISTRICT_DISTRICT_PRODUCTION',	'YIELD_PRODUCTION',	1,				1,				1);
---------------------------------------------------------------------------------------------------------------
-- District_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_THANH' AND YieldChangeId = 'District_Culture_Major';

INSERT INTO District_Adjacencies
		(DistrictType,		YieldChangeId)
VALUES	('DISTRICT_THANH',	'p0k_Thanh_District_Culture'),
		('DISTRICT_THANH',	'p0k_Thanh_District_Production');
---------------------------------------------------------------------------------------------------------------
-- District_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
		(DistrictType,		GreatPersonClassType,			PointsPerTurn)
VALUES	('DISTRICT_THANH',	'GREAT_PERSON_CLASS_GENERAL',	1);