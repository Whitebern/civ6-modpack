/* 
	Civilizations Expanded: Mali
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SONGS OF THE JELI (ENHANCEMENT)
--=============================================================================================================
-- (remove City Center Food/Faith bonus)
-- +1 Food and +1 Faith from all Desert tiles, doubling for City-Centers.
-- Each city immediately receives a Trading Post and a free heavy cavalry unit upon acquiring its first Desert terrain tile.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('P0K_MALI_MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,		EffectType)
VALUES	('P0K_MALI_MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS',	'COLLECTION_OWNER',	'EFFECT_GRANT_UNIT_BY_CLASS');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType,							Inverse)
VALUES	('P0K_MALI_PLOT_HAS_DESERT_MOUNTAIN',					'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',	0),
		('P0K_MALI_PLOT_DESERT_OR_DESERT_HILLS_REQUIREMENTS',	'REQUIREMENT_REQUIREMENTSET_IS_MET',		0),
		('P0K_MALI_PLOT_HAS_CITY_CENTER',						'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',	0),
		('P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT',				'REQUIREMENT_COLLECTION_COUNT_ATLEAST',		0),
		('P0K_MALI_REQUIRES_PLAYER_DOES_NOT_HAVE_WHEEL',		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY',		1),
		('P0K_MALI_REQUIRES_PLAYER_HAS_WHEEL',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY',		0);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	('P0K_MALI_PLOT_HAS_DESERT_MOUNTAIN',					'TerrainType',		'TERRAIN_DESERT_MOUNTAIN'),
		('P0K_MALI_PLOT_DESERT_OR_DESERT_HILLS_REQUIREMENTS',	'RequirementSetId',	'P0K_MALI_DESERT_CITY_REQUIREMENTS'),
		('P0K_MALI_PLOT_HAS_CITY_CENTER',						'DistrictType',		'DISTRICT_CITY_CENTER'),
		('P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT',				'CollectionType',	'COLLECTION_CITY_PLOT_YIELDS'),
		('P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT',				'Count',			1),
		('P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT',				'RequirementSetId',	'P0K_MALI_DESERT_REQUIREMENTS'),
		('P0K_MALI_REQUIRES_PLAYER_DOES_NOT_HAVE_WHEEL',		'TechnologyType',	'TECH_THE_WHEEL'),
		('P0K_MALI_REQUIRES_PLAYER_HAS_WHEEL',					'TechnologyType',	'TECH_THE_WHEEL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_MALI_DESERT_REQUIREMENTS',			'REQUIREMENTSET_TEST_ANY'),
		('P0K_MALI_DESERT_CITY_REQUIREMENTS',		'REQUIREMENTSET_TEST_ANY'),
		('P0K_MALI_DESERT_HAS_CITY_CENTER',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_MALI_CITY_HAS_ANY_DESERT',			'REQUIREMENTSET_TEST_ALL'),
		('P0K_MALI_CITY_HAS_ANY_DESERT_NO_WHEEL',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MALI_CITY_HAS_ANY_DESERT_WHEEL',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_MALI_DESERT_REQUIREMENTS',			'REQUIRES_PLOT_HAS_DESERT'),
		('P0K_MALI_DESERT_REQUIREMENTS',			'REQUIRES_PLOT_HAS_DESERT_HILLS'),
		('P0K_MALI_DESERT_REQUIREMENTS',			'P0K_MALI_PLOT_HAS_DESERT_MOUNTAIN'),
		('P0K_MALI_DESERT_CITY_REQUIREMENTS',		'REQUIRES_PLOT_HAS_DESERT'),
		('P0K_MALI_DESERT_CITY_REQUIREMENTS',		'REQUIRES_PLOT_HAS_DESERT_HILLS'),
		('P0K_MALI_DESERT_HAS_CITY_CENTER',			'P0K_MALI_PLOT_DESERT_OR_DESERT_HILLS_REQUIREMENTS'),
		('P0K_MALI_DESERT_HAS_CITY_CENTER',			'P0K_MALI_PLOT_HAS_CITY_CENTER'),
		('P0K_MALI_CITY_HAS_ANY_DESERT',			'P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT'),
		('P0K_MALI_CITY_HAS_ANY_DESERT_NO_WHEEL',	'P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT'),
		('P0K_MALI_CITY_HAS_ANY_DESERT_NO_WHEEL',	'P0K_MALI_REQUIRES_PLAYER_DOES_NOT_HAVE_WHEEL'),
		('P0K_MALI_CITY_HAS_ANY_DESERT_WHEEL',		'P0K_MALI_REQUIRES_CITY_HAS_ANY_DESERT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,															RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_DESERT_FAITH',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									0,			0,			'P0K_MALI_DESERT_REQUIREMENTS'),
		('P0K_TRAIT_DESERT_FOOD',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									0,			0,			'P0K_MALI_DESERT_REQUIREMENTS'),
		('P0K_TRAIT_DESERT_CITY_CENTER_FAITH',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									0,			0,			'P0K_MALI_DESERT_HAS_CITY_CENTER'),
		('P0K_TRAIT_DESERT_CITY_CENTER_FOOD',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									0,			0,			'P0K_MALI_DESERT_HAS_CITY_CENTER'),
		('P0K_TRAIT_DESERT_CITY_TRADING_POST',				'MODIFIER_PLAYER_CITIES_GRANT_TRADING_POST',							0,			0,			'P0K_MALI_CITY_HAS_ANY_DESERT'), -- No argument
		('P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',								0,			1,			'P0K_MALI_CITY_HAS_ANY_DESERT_NO_WHEEL'),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL_MODIFIER',	'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY',								1,			1,			NULL),
		('P0K_TRAIT_DESERT_CITY_CAVALRY',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',								0,			1,			'P0K_MALI_CITY_HAS_ANY_DESERT_WHEEL'),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_MODIFIER',			'P0K_MALI_MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS',					1,			1,			NULL),
		('P0K_TRAIT_TRADE_ROUTE_ERA_SCORE',					'MODIFIER_PLAYER_ADJUST_PLAYER_ERA_SCORE_PER_TRADE_ROUTE_COMPLETED',	0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	('P0K_TRAIT_DESERT_FAITH',							'YieldType',				'YIELD_FAITH'),
		('P0K_TRAIT_DESERT_FAITH',							'Amount',					1),
		('P0K_TRAIT_DESERT_FOOD',							'YieldType',				'YIELD_FOOD'),
		('P0K_TRAIT_DESERT_FOOD',							'Amount',					1),
		('P0K_TRAIT_DESERT_CITY_CENTER_FAITH',				'YieldType',				'YIELD_FAITH'),
		('P0K_TRAIT_DESERT_CITY_CENTER_FAITH',				'Amount',					1),
		('P0K_TRAIT_DESERT_CITY_CENTER_FOOD',				'YieldType',				'YIELD_FOOD'),
		('P0K_TRAIT_DESERT_CITY_CENTER_FOOD',				'Amount',					1),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL',			'ModifierId',				'P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL_MODIFIER'),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL_MODIFIER',	'UnitType',					'UNIT_HEAVY_CHARIOT'),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL_MODIFIER',	'Amount',					1),
		('P0K_TRAIT_DESERT_CITY_CAVALRY',					'ModifierId',				'P0K_TRAIT_DESERT_CITY_CAVALRY_MODIFIER'),
		('P0K_TRAIT_DESERT_CITY_CAVALRY_MODIFIER',			'UnitPromotionClassType',	'PROMOTION_CLASS_HEAVY_CAVALRY'),
		('P0K_TRAIT_TRADE_ROUTE_ERA_SCORE',					'Amount',					1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_MALI_GOLD_DESERT' AND ModifierId IN 
('TRAIT_DESERT_CITY_CENTER_FAITH', 'TRAIT_DESERT_CITY_CENTER_FOOD', 'TRAIT_DESERT_HILLS_CITY_CENTER_FAITH', 
'TRAIT_DESERT_HILLS_CITY_CENTER_FOOD');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_FAITH'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_FOOD'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_CITY_CENTER_FAITH'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_CITY_CENTER_FOOD'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_CITY_TRADING_POST'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_CITY_CAVALRY_NO_WHEEL'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_DESERT_CITY_CAVALRY'),
		('TRAIT_CIVILIZATION_MALI_GOLD_DESERT',	'P0K_TRAIT_TRADE_ROUTE_ERA_SCORE');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: SAHEL MERCHANTS (ENHANCEMENT)
--=============================================================================================================
-- Increase Golden Age Trade Route bonus to +2.
-- Add +1 Food to the Trade Route bonus.
-- Traders generate +1 Great Merchant Point when traveling on or adjacent to Desert terrain.
-- May purchase districts with Gold.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_CAN_PURCHASE_DISTRICTS',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_CAN_PURCHASE_DISTRICTS',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_CAN_PURCHASE_DISTRICTS');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT',			'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),			
		('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_HILLS',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES'),		
		('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_MOUNTAIN',	'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES');	
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT',			'TerrainType',	'TERRAIN_DESERT'),
		('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_HILLS',	'TerrainType',	'TERRAIN_DESERT_HILLS'),
		('P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_MOUNTAIN',	'TerrainType',	'TERRAIN_DESERT_MOUNTAIN');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT'),
		('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_HILLS'),
		('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'P0K_MALI_REQUIRES_PLOT_ADJACENT_DESERT_MOUNTAIN'),
		('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'REQUIRES_PLOT_HAS_DESERT'),
		('P0K_MALI_TRADER_DESERT_REQUIREMENTS',	'REQUIRES_PLOT_HAS_DESERT_HILLS');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_TERRAIN_INTERNATIONAL',	NULL),
		('P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT',				'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',								'UNIT_IS_TRADER'),
		('P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT_MODIFIER',		'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',							'P0K_MALI_TRADER_DESERT_REQUIREMENTS'),
		('P0K_TRAIT_GOLD_PURCHASE_DISTRICTS',					'P0K_MODIFIER_PLAYER_CITIES_ADJUST_CAN_PURCHASE_DISTRICTS',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 2 WHERE ModifierId = 'GOLDEN_AGE_TRADE_ROUTE' AND Name = 'Amount'; 

INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value)
VALUES	('P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN',			'Origin',				1),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN',			'TerrainType',			'TERRAIN_DESERT'),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN',			'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN',			'Amount',				1),
		('P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT',				'ModifierId',			'P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT_MODIFIER'),
		('P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT_MODIFIER',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'),
		('P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT_MODIFIER',		'Amount',				1),
		('P0K_TRAIT_GOLD_PURCHASE_DISTRICTS',					'CanPurchase',			1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_SAHEL_MERCHANTS',	'P0K_TRAIT_TRADE_ROUTE_FOOD_DESERT_ORIGIN'),
		('TRAIT_LEADER_SAHEL_MERCHANTS',	'P0K_TRAIT_TRADER_DESERT_MERCHANT_POINT'),
		('TRAIT_LEADER_SAHEL_MERCHANTS',	'P0K_TRAIT_GOLD_PURCHASE_DISTRICTS');
--=============================================================================================================
-- UNIQUE DISTRICT: SUGUBA (ENHANCEMENT)
-- +1 Amenity and +1 Housing.
--=============================================================================================================
-- Districts
---------------------------------------------------------------------------------------------------------------'
UPDATE Districts SET Housing = 1, Entertainment = 1 WHERE DistrictType = 'DISTRICT_SUGUBA';