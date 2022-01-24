/* 
	Civilizations Expanded: Russia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: MOTHER RUSSIA (ENHANCEMENT)
--=============================================================================================================
-- (Faith and Production bonuses apply to Snow and mountains as well, and double for City Centers).
-- Each city receives a free Builder upon acquiring its first Tundra or Snow tile.
-- Strategic resource accumulation rate is +100% in Tundra and Snow terrain (from Canada).
-- (Increase bonus tiles upon founding a new city back to 8 instead of 5 from the April 2021 patch).
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType,							Inverse)
VALUES	('P0K_RUSSIA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',		'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',	0),				
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_HILLS',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',	0),			
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',	0),
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_CITY_CENTER',			'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',	0),
		('P0K_RUSSIA_REQUIRES_TUNDRA_SNOW_CITY_REQUIREMENTS',	'REQUIREMENT_REQUIREMENTSET_IS_MET',		0),
		('P0K_RUSSIA_REQUIRES_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'REQUIREMENT_COLLECTION_COUNT_ATLEAST',		0);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	('P0K_RUSSIA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN',		'TerrainType',		'TERRAIN_TUNDRA_MOUNTAIN'),								
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_HILLS',				'TerrainType',		'TERRAIN_SNOW_HILLS'),									
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN',			'TerrainType',		'TERRAIN_SNOW_MOUNTAIN'),
		('P0K_RUSSIA_REQUIRES_PLOT_HAS_CITY_CENTER',			'DistrictType',		'DISTRICT_CITY_CENTER'),	
		('P0K_RUSSIA_REQUIRES_TUNDRA_SNOW_CITY_REQUIREMENTS',	'RequirementSetId',	'P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS'),
		('P0K_RUSSIA_REQUIRES_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'CollectionType',	'COLLECTION_CITY_PLOT_YIELDS'),	
		('P0K_RUSSIA_REQUIRES_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'Count',			1),
		('P0K_RUSSIA_REQUIRES_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'RequirementSetId',	'P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'REQUIREMENTSET_TEST_ANY'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_CENTER',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_RUSSIA_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'REQUIRES_PLOT_HAS_TUNDRA'),											
		('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'REQUIRES_PLOT_HAS_TUNDRA_HILLS'),										
		('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'P0K_RUSSIA_REQUIRES_PLOT_HAS_TUNDRA_MOUNTAIN'),								
		('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'REQUIRES_PLOT_HAS_SNOW'),												
		('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_HILLS'),									
		('P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS',			'P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_MOUNTAIN'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS',	'REQUIRES_PLOT_HAS_TUNDRA'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS',	'REQUIRES_PLOT_HAS_TUNDRA_HILLS'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS',	'REQUIRES_PLOT_HAS_SNOW'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_REQUIREMENTS',	'P0K_RUSSIA_REQUIRES_PLOT_HAS_SNOW_HILLS'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_CENTER',			'P0K_RUSSIA_REQUIRES_TUNDRA_SNOW_CITY_REQUIREMENTS'),
		('P0K_RUSSIA_TUNDRA_SNOW_CITY_CENTER',			'P0K_RUSSIA_REQUIRES_PLOT_HAS_CITY_CENTER'),
		('P0K_RUSSIA_CITY_HAS_ANY_TUNDRA_OR_SNOW',		'P0K_RUSSIA_REQUIRES_CITY_HAS_ANY_TUNDRA_OR_SNOW');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_RUSSIA_TUNDRA_SNOW_REQUIREMENTS'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH_CITY_CENTER',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_RUSSIA_TUNDRA_SNOW_CITY_CENTER'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION_CITY_CENTER',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		0,			0,			'P0K_RUSSIA_TUNDRA_SNOW_CITY_CENTER'),
		('P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	0,			1,			'P0K_RUSSIA_CITY_HAS_ANY_TUNDRA_OR_SNOW'),
		('P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER_MODIFIER',		'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY',	1,			1,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH',					'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH',					'Amount',		1),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION',				'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION',				'Amount',		1),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH_CITY_CENTER',		'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH_CITY_CENTER',		'Amount',		1),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION_CITY_CENTER',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION_CITY_CENTER',	'Amount',		1),
		('P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER',				'ModifierId',	'P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER_MODIFIER'),
		('P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER_MODIFIER',		'UnitType',		'UNIT_BUILDER'),
		('P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER_MODIFIER',		'Amount',		1);

-- Reverting April 2021 changes
UPDATE	ModifierArguments
SET		Value = 8
WHERE	ModifierId = 'TRAIT_INCREASED_TILES'
AND		Name = 'Amount';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers
WHERE (ModifierId = 'TRAIT_INCREASED_TUNDRA_FAITH' 
OR ModifierId = 'TRAIT_INCREASED_TUNDRA_HILLS_FAITH'
OR ModifierId = 'TRAIT_INCREASED_TUNDRA_HILLS_PRODUCTION' 
OR ModifierId = 'TRAIT_INCREASED_TUNDRA_PRODUCTION')
AND TraitType = 'TRAIT_CIVILIZATION_MOTHER_RUSSIA';

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'P0K_TRAIT_INCREASED_TUNDRA_SNOW_FAITH_CITY_CENTER'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'P0K_TRAIT_INCREASED_TUNDRA_SNOW_PRODUCTION_CITY_CENTER'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'P0K_TRAIT_TUNDRA_SNOW_GRANT_FREE_BUILDER'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'SNOW_HILLS_RESOURCE_EXTRACTION'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'SNOW_RESOURCE_EXTRACTION'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'TUNDRA_HILLS_RESOURCE_EXTRACTION'),
		('TRAIT_CIVILIZATION_MOTHER_RUSSIA',	'TUNDRA_RESOURCE_EXTRACTION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: PETRINE REFORMATION (REWORK)
--=============================================================================================================
-- Trade Routes to other civilizations provide +1 Science and +1 Culture after constructing the Government Plaza, and an additional +1 Science and +1 Culture for each Government Plaza building.
-- +50% Production towards buildings in the city with the Government Plaza.
-- Constructing a building grants a burst of Faith equal to 15% of the Production cost. 
-- May purchase districts with Faith in cities with a Governor.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																	Kind)
VALUES	('P0K_MODIFIER_PLAYER_GOVERNORS_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,															CollectionType,					EffectType)
VALUES	('P0K_MODIFIER_PLAYER_GOVERNORS_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS',	'COLLECTION_PLAYER_GOVERNORS',	'EFFECT_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_TALL_REQUIREMENT'),				
		('P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_WIDE_REQUIREMENT'),	
		('P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_CONQUEST_REQUIREMENT'),								
		('P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_CITYSTATES_REQUIREMENT'),				
		('P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_FAITH_REQUIREMENT'),	
		('P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_SPIES_REQUIREMENT'),								
		('P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_MILITARY_REQUIREMENT'),				
		('P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_SCIENCE_REQUIREMENT'),	
		('P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS',	'PLAYER_HAS_GOV_BUILDING_CULTURE_REQUIREMENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,															Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOV_PLAZA_BOOST_BUILDING_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',			0,			'CITY_HAS_GOV_DISTRICT'),
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_SCIENCE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'PLAYER_HAS_GOVERNMENT_DISTRICT_REQUIREMENTS'),	
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_SCIENCE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS'),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_SCIENCE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS'),	
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_SCIENCE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS'),	
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_CULTURE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'PLAYER_HAS_GOVERNMENT_DISTRICT_REQUIREMENTS'),		
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_CULTURE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_1_GOV_PLAZA_REQUIREMENTS'),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_CULTURE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_2_GOV_PLAZA_REQUIREMENTS'),
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_CULTURE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			0,			'P0K_RUSSIA_TIER_3_GOV_PLAZA_REQUIREMENTS'),
		('P0K_TRAIT_FAITH_PER_COMPLETED_BUILDING',					'MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_BUILDING_COST',					0,			NULL),
		('P0K_TRAIT_GOVERNOR_FAITH_PURCHASE_DISTRICTS',				'P0K_MODIFIER_PLAYER_GOVERNORS_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS',	1,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value)
VALUES	('P0K_TRAIT_GOV_PLAZA_BOOST_BUILDING_PRODUCTION',			'Amount',						50),
		('P0K_TRAIT_GOV_PLAZA_BOOST_BUILDING_PRODUCTION',			'IsWonder',						0),
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_SCIENCE',		'YieldType',					'YIELD_SCIENCE'),
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_SCIENCE',		'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_SCIENCE',	'YieldType',					'YIELD_SCIENCE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_SCIENCE',	'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_SCIENCE',	'YieldType',					'YIELD_SCIENCE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_SCIENCE',	'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_SCIENCE',	'YieldType',					'YIELD_SCIENCE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_SCIENCE',	'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_CULTURE',		'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_CULTURE',		'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_CULTURE',	'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_CULTURE',	'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_CULTURE',	'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_CULTURE',	'Amount',						1),
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_CULTURE',	'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_CULTURE',	'Amount',						1),
		('P0K_TRAIT_FAITH_PER_COMPLETED_BUILDING',					'YieldType',					'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_PER_COMPLETED_BUILDING',					'BuildingProductionPercent',	15),
		('P0K_TRAIT_FAITH_PER_COMPLETED_BUILDING',					'IncludeWonder',				0),
		('P0K_TRAIT_GOVERNOR_FAITH_PURCHASE_DISTRICTS',				'CanPurchase',					1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_GRAND_EMBASSY' AND ModifierId = 'TRAIT_ADJUST_PROGRESS_DIFF_TRADE_BONUS';

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_BOOST_BUILDING_PRODUCTION'),		
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_SCIENCE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_SCIENCE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_SCIENCE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_SCIENCE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_DISTRICT_TRADE_ROUTE_CULTURE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_1_BUILDING_TRADE_ROUTE_CULTURE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_2_BUILDING_TRADE_ROUTE_CULTURE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOV_PLAZA_TIER_3_BUILDING_TRADE_ROUTE_CULTURE'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_FAITH_PER_COMPLETED_BUILDING'),
		('TRAIT_LEADER_GRAND_EMBASSY',	'P0K_TRAIT_GOVERNOR_FAITH_PURCHASE_DISTRICTS');
--=============================================================================================================
-- UNIQUE DISTRICT: LAVRA (ENHANCEMENT)
--=============================================================================================================
-- +1 Gold to Forest tiles.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
SELECT	'P0K_LAVRA_REQUIRES_CITY_HAS_' ||BuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
SELECT	'P0K_LAVRA_REQUIRES_CITY_HAS_' ||BuildingType,		'BuildingType',	BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_LAVRA_PLOT_IS_FOREST',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_LAVRA_CITY_HAS_WORSHIP_BUILDING',		'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_LAVRA_PLOT_IS_FOREST',				'PLOT_IS_FOREST_REQUIREMENT');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'P0K_LAVRA_CITY_HAS_WORSHIP_BUILDING',		'P0K_LAVRA_REQUIRES_CITY_HAS_' ||BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,				ModifierType,									SubjectRequirementSetId)
VALUES	('P0K_LAVRA_FOREST_GOLD',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'P0K_LAVRA_PLOT_IS_FOREST');

UPDATE	Modifiers --update the Requirement for the GPP modifiers so that it captures all modded Tier 3 religious buildings
SET		SubjectRequirementSetId = 'P0K_LAVRA_CITY_HAS_WORSHIP_BUILDING'
WHERE	ModifierId = 'TRAIT_TIER3_MUSICIAN_POINTS';
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('P0K_LAVRA_FOREST_GOLD',						'YieldType',			'YIELD_GOLD'),
		('P0K_LAVRA_FOREST_GOLD',						'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,		ModifierId)
VALUES	('DISTRICT_LAVRA',	'P0K_LAVRA_FOREST_GOLD');