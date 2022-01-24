--=============================================================================================================
--	Civilizations Expanded: Indonesia
--	Author: p0kiehl
--=============================================================================================================
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SPICE ISLANDS ARCHIPELAGO (ENHANCEMENT)
--=============================================================================================================
-- +2 Gold, +1 Food, and +1 Production from Sea resources.
-- (Make water district adjacency standard rather than minor).
-- (Remove the Entertainment Complex bonus Amenity).
-- +100% Production towards Harbors and Water Parks.
-- +1 Great Merchant point from City-State tributaries with a Harbor.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_INDONESIA_HAS_RESOURCE_CLASS_REQUIREMENTS',		'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('P0K_INDONESIA_HAS_WATER_PLOT_REQUIREMENTS',			'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('P0K_INDONESIA_REQUIRES_LEADER_IS_GITARJA',			'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('P0K_INDONESIA_REQUIRES_PLAYER_HAS_HARBOR',			'REQUIREMENT_PLAYER_HAS_DISTRICT');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,					Value)
VALUES	('P0K_INDONESIA_HAS_RESOURCE_CLASS_REQUIREMENTS',		'RequirementSetId',		'P0K_INDONESIA_PLOT_IS_ALLOWED_RESOURCE'),
		('P0K_INDONESIA_HAS_WATER_PLOT_REQUIREMENTS',			'RequirementSetId',		'P0K_INDONESIA_PLOT_IS_WATER'),
		('P0K_INDONESIA_REQUIRES_LEADER_IS_GITARJA',			'LeaderType',			'LEADER_GITARJA'),
		('P0K_INDONESIA_REQUIRES_PLAYER_HAS_HARBOR',			'DistrictType',			'DISTRICT_HARBOR');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_INDONESIA_PLOT_IS_ALLOWED_RESOURCE',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_INDONESIA_PLOT_IS_WATER',				'REQUIREMENTSET_TEST_ANY'),
		('P0K_INDONESIA_SEA_RESOURCE',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_INDONESIA_COASTAL_LAND_RESOURCE',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_INDONESIA_CITY_HAS_HARBOR',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_INDONESIA_GITARJA_IS_SUZERAIN',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_INDONESIA_PLOT_IS_ALLOWED_RESOURCE',	'REQUIRES_PLOT_HAS_BONUS'),
		('P0K_INDONESIA_PLOT_IS_ALLOWED_RESOURCE',	'REQUIRES_PLOT_HAS_LUXURY'),
		('P0K_INDONESIA_PLOT_IS_ALLOWED_RESOURCE',	'REQUIRES_PLOT_HAS_STRATEGIC'),
		('P0K_INDONESIA_PLOT_IS_WATER',				'REQUIRES_TERRAIN_COAST'),
		('P0K_INDONESIA_PLOT_IS_WATER',				'REQUIRES_TERRAIN_OCEAN'),
		('P0K_INDONESIA_SEA_RESOURCE',				'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),
		('P0K_INDONESIA_SEA_RESOURCE',				'P0K_INDONESIA_HAS_RESOURCE_CLASS_REQUIREMENTS'),
		('P0K_INDONESIA_SEA_RESOURCE',				'P0K_INDONESIA_HAS_WATER_PLOT_REQUIREMENTS'),
		('P0K_INDONESIA_CITY_HAS_HARBOR',			'P0K_INDONESIA_REQUIRES_PLAYER_HAS_HARBOR'),
		('P0K_INDONESIA_GITARJA_IS_SUZERAIN',		'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_INDONESIA_GITARJA_IS_SUZERAIN',		'REQUIRES_PLAYER_IS_SUZERAIN_BONUS_ENABLED'),
		('P0K_INDONESIA_GITARJA_IS_SUZERAIN',		'REQUIRES_PLAYER_AT_PEACE'),
		('P0K_INDONESIA_GITARJA_IS_SUZERAIN',		'P0K_INDONESIA_REQUIRES_LEADER_IS_GITARJA');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,											OwnerRequirementSetId,				SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_GOLD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					NULL,								'P0K_INDONESIA_SEA_RESOURCE'),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_FOOD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					NULL,								'P0K_INDONESIA_SEA_RESOURCE'),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_PRODUCTION',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					NULL,								'P0K_INDONESIA_SEA_RESOURCE'),
		('P0K_TRAIT_NUSANTARA_HARBOR_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL,								NULL),
		('P0K_TRAIT_BOOST_WATER_PARK_PRODUCTION',						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL,								NULL),
		('P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'P0K_INDONESIA_CITY_HAS_HARBOR',	'P0K_INDONESIA_GITARJA_IS_SUZERAIN'),
		('P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES_MODIFIER',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',			NULL,								NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 1 WHERE
(ModifierId = 'TRAIT_NUSANTARA_COAST_CAMPUS' 
OR ModifierId = 'TRAIT_NUSANTARA_COAST_HOLY_SITE'
OR ModifierId = 'TRAIT_NUSANTARA_COAST_INDUSTRIAL_ZONE'
OR ModifierId = 'TRAIT_NUSANTARA_COAST_THEATER')
AND Name = 'TilesRequired'; 

INSERT INTO ModifierArguments
		(ModifierId,													Name,					Value)
VALUES	('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_GOLD',					'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_GOLD',					'Amount',				2),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_FOOD',					'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_FOOD',					'Amount',				1),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_PRODUCTION',				'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_PRODUCTION',				'Amount',				1),
		('P0K_TRAIT_NUSANTARA_HARBOR_BOOST',							'DistrictType',			'DISTRICT_HARBOR'),
		('P0K_TRAIT_NUSANTARA_HARBOR_BOOST',							'Amount',				100),
		('P0K_TRAIT_BOOST_WATER_PARK_PRODUCTION',						'DistrictType',			'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'),
		('P0K_TRAIT_BOOST_WATER_PARK_PRODUCTION',						'Amount',				100),
		('P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES',				'ModifierId',			'P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES_MODIFIER'),
		('P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'),
		('P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES_MODIFIER',	'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_INDONESIA_NUSANTARA' 
AND ModifierId = 'TRAIT_NUSANTARA_COAST_ENTERTAINMENT';

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_INDONESIA_NUSANTARA',	'P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_GOLD'),
		('TRAIT_CIVILIZATION_INDONESIA_NUSANTARA',	'P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_FOOD'),
		('TRAIT_CIVILIZATION_INDONESIA_NUSANTARA',	'P0K_TRAIT_SPICE_ISLANDS_SEA_RESOURCE_PRODUCTION'),
		('TRAIT_CIVILIZATION_INDONESIA_NUSANTARA',	'P0K_TRAIT_NUSANTARA_HARBOR_BOOST'),
		('TRAIT_CIVILIZATION_INDONESIA_NUSANTARA',	'P0K_TRAIT_BOOST_WATER_PARK_PRODUCTION'),
		('MINOR_CIV_DEFAULT_TRAIT',					'P0K_TRAIT_GREAT_MERCHANT_POINT_FROM_CITY_STATES');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EXALTED GODDESS OF THE THREE WORLDS (ENHANCEMENT)
--=============================================================================================================
-- Coastal cities gain +2 Faith and +1 Housing.
-- Coastal cities within 9 tiles of any Capital generate +1 City-State Influence point per turn and gain +1 Amenity.
-- May purchase Harbor and Water Park buildings with Faith.
-- (Embark/disembark bonus goes to all units now, not just religious)
--=============================================================================================================
-- TypeTags
---------------------------------------------------------------------------------------------------------------
UPDATE	TypeTags
SET		Tag = 'CLASS_ALL_UNITS'
WHERE	Type = 'ABILITY_GITARJA_RELIGIOUS_NO_EMBARK_DISEMBARK_COST';
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_INDONESIA_REQUIRES_PLOT_WITHIN_9_CAPITAL',	'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES'),
		('P0K_INDONESIA_REQUIRES_PLOT_HAS_CITY_CENTER',		'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('P0K_INDONESIA_REQUIRES_PLOT_WITHIN_9_CAPITAL',	'BuildingType',	'BUILDING_PALACE'),
		('P0K_INDONESIA_REQUIRES_PLOT_WITHIN_9_CAPITAL',	'MinRange',		0),
		('P0K_INDONESIA_REQUIRES_PLOT_WITHIN_9_CAPITAL',	'MaxRange',		9),
		('P0K_INDONESIA_REQUIRES_PLOT_HAS_CITY_CENTER',		'DistrictType',	'DISTRICT_CITY_CENTER');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_INDONESIA_COASTAL_CITY_WITHIN_9_CAPITAL',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_INDONESIA_COASTAL_CITY_CENTER',			'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_INDONESIA_COASTAL_CITY_WITHIN_9_CAPITAL',	'P0K_INDONESIA_REQUIRES_PLOT_WITHIN_9_CAPITAL'),	
		('P0K_INDONESIA_COASTAL_CITY_WITHIN_9_CAPITAL',	'REQUIRES_PLOT_ADJACENT_TO_COAST'),
		('P0K_INDONESIA_COASTAL_CITY_CENTER',			'P0K_INDONESIA_REQUIRES_PLOT_HAS_CITY_CENTER'),
		('P0K_INDONESIA_COASTAL_CITY_CENTER',			'REQUIRES_PLOT_ADJACENT_TO_COAST');
---------------------------------------------------------------------------------------------------------------						
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,														ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_EXALTED_GODDESS_FAITH',									'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						'P0K_INDONESIA_COASTAL_CITY_CENTER'),
		('P0K_TRAIT_EXALTED_GODDESS_HOUSING',								'MODIFIER_PLAYER_CITIES_ADJUST_WATER_HOUSING',				'PLOT_IS_COASTAL_LAND_REQUIREMENTS'),
		('P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					'P0K_INDONESIA_COASTAL_CITY_WITHIN_9_CAPITAL'),
		('P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS_MODIFIER',		'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN',			NULL),
		('P0K_TRAIT_COASTAL_AMENITY_NEARBY_CAPITALS',						'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',				'P0K_INDONESIA_COASTAL_CITY_WITHIN_9_CAPITAL'),
		('P0K_TRAIT_HARBOR_BUILDING_FAITH_PURCHASE',						'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL),
		('P0K_TRAIT_WATER_PARK_BUILDING_FAITH_PURCHASE',					'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,														Name,			Value)
VALUES	('P0K_TRAIT_EXALTED_GODDESS_FAITH',									'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_EXALTED_GODDESS_FAITH',									'Amount',		2),
		('P0K_TRAIT_EXALTED_GODDESS_HOUSING',								'Amount',		1),
		('P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS',				'ModifierId',	'P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS_MODIFIER'),
		('P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS_MODIFIER',		'Amount',		1),
		('P0K_TRAIT_COASTAL_AMENITY_NEARBY_CAPITALS',						'Amount',		1),
		('P0K_TRAIT_HARBOR_BUILDING_FAITH_PURCHASE',						'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_WATER_PARK_BUILDING_FAITH_PURCHASE',					'DistrictType',	'DISTRICT_WATER_ENTERTAINMENT_COMPLEX');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers
WHERE TraitType = 'TRAIT_LEADER_EXALTED_GODDESS' 
AND ModifierId IN ('TRAIT_FAITH_CITY_CENTER',
'TRAIT_NAVAL_CARRIER_FAITH',
'TRAIT_NAVAL_MELEE_FAITH',
'TRAIT_NAVAL_RAIDER_FAITH',
'TRAIT_NAVAL_RANGED_FAITH');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_EXALTED_GODDESS_FAITH'),
		('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_EXALTED_GODDESS_HOUSING'),
		('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_COASTAL_INFLUENCE_POINTS_NEARBY_CAPITALS'),
		('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_COASTAL_AMENITY_NEARBY_CAPITALS'),
		('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_HARBOR_BUILDING_FAITH_PURCHASE'),
		('TRAIT_LEADER_EXALTED_GODDESS',	'P0K_TRAIT_WATER_PARK_BUILDING_FAITH_PURCHASE');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: KAMPUNG (ENHANCEMENT)
--=============================================================================================================
-- +1 Gold for each adjacent Land tile.
-- Can be built on Reefs and Ocean.
--=============================================================================================================
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,		YieldType,		YieldChange)
VALUES	('IMPROVEMENT_KAMPUNG',	'YIELD_GOLD',	0);
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentTerrain)
SELECT	'p0k_Kampung_Gold_' ||TerrainType,	'Placeholder',	'YIELD_GOLD',	1,				1,				TerrainType
FROM Terrains WHERE Water = 0;
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
SELECT	'IMPROVEMENT_KAMPUNG',	'p0k_Kampung_Gold_' ||TerrainType
FROM Terrains WHERE Water = 0;
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_KAMPUNG',	'FEATURE_REEF');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,		TerrainType)
VALUES	('IMPROVEMENT_KAMPUNG',	'TERRAIN_OCEAN');