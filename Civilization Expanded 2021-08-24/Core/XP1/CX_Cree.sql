/* 
	Civilizations Expanded: Egypt
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: NIHITHAW (ENHANCEMENT)
--=============================================================================================================
-- (Increase the Trade Route and Trader at Pottery to 2)
-- Begin the game with a Recon unit.
-- Bonus resources provide +1 Production. Bonus resources on Water tiles provide +1 Food as well.
-- +1 Gold from foreign Trade Routes passing through Cree territory.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('P0K_MODIFIER_PLAYER_GRANT_UNIT',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,						CollectionType,		EffectType)
VALUES	('P0K_MODIFIER_PLAYER_GRANT_UNIT',	'COLLECTION_OWNER',	'EFFECT_GRANT_UNIT_BY_CLASS');					
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_CREE_PLOT_HAS_BONUS_RESOURCE',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_CREE_PLOT_HAS_BONUS_RESOURCE_WATER',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_CREE_PLOT_HAS_BONUS_RESOURCE',		'REQUIRES_PLOT_HAS_BONUS'),
		('P0K_CREE_PLOT_HAS_BONUS_RESOURCE_WATER',	'REQUIRES_PLOT_HAS_BONUS'),
		('P0K_CREE_PLOT_HAS_BONUS_RESOURCE_WATER',	'REQUIRES_PLOT_HAS_COAST');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,																		SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FREE_RECON_UNIT',							'MODIFIER_PLAYER_BUILT_CITIES_GRANT_FREE_UNIT',										'PLAYER_HAS_ONE_CITY'),
		('P0K_TRAIT_BONUS_RESOURCE_PRODUCTION',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',												'P0K_CREE_PLOT_HAS_BONUS_RESOURCE'),
		('P0K_TRAIT_BONUS_RESOURCE_WATER_FOOD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',												'P0K_CREE_PLOT_HAS_BONUS_RESOURCE_WATER'),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTES_PASSING_THROUGH',	'MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 2 WHERE Name = 'Amount' AND (ModifierId = 'TRAIT_POTTERY_TRADE_ROUTE' OR ModifierId = 'TRAIT_POTTERY_ADD_TRADER');

INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value)
VALUES	('P0K_TRAIT_FREE_RECON_UNIT',							'UnitType',				'UNIT_CREE_OKIHTCITAW'),
		('P0K_TRAIT_FREE_RECON_UNIT',							'Amount',				1),
		('P0K_TRAIT_BONUS_RESOURCE_PRODUCTION',					'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_BONUS_RESOURCE_PRODUCTION',					'Amount',				1),
		('P0K_TRAIT_BONUS_RESOURCE_WATER_FOOD',					'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_BONUS_RESOURCE_WATER_FOOD',					'Amount',				1),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTES_PASSING_THROUGH',	'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTES_PASSING_THROUGH',	'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers		
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES',	'P0K_TRAIT_FREE_RECON_UNIT'),
		('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES',	'P0K_TRAIT_BONUS_RESOURCE_PRODUCTION'),
		('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES',	'P0K_TRAIT_BONUS_RESOURCE_WATER_FOOD'),
		('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES',	'P0K_TRAIT_GOLD_FROM_TRADE_ROUTES_PASSING_THROUGH');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: LEGACY OF PEACE (ENHANCEMENT)
--=============================================================================================================
-- (Remove Alliance bonuses).
-- Cannot declare Surprise Wars or war on City-States.
-- Cannot be the target of a Surprise War.
-- Receive one extra Diplomatic policy slot in any Government after unlocking Political Philosophy.
-- +1 Diplomatic Favor per turn for each Diplomatic policy slot in the current Government.
-- (Add +1 Production to Trade Routes from Camps or Pastures at the destination city).
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_IMPROVEMENT_IN_TARGET',	NULL),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_IMPROVEMENT_IN_TARGET',	NULL),
		('P0K_TRAIT_DIPLOMATIC_GOVERNMENT_SLOT',		'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',				'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_TRAIT_DIPLOMATIC_FAVOR',					'MODIFIER_PLAYER_ADJUST_GOVERNMENT_SLOT_TYPE_GRANT_FAVOR',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 'CIVILIZATION_CREE' WHERE ModifierId = 'TRAIT_NO_SUPRISE_WAR_ON_CANADA' 
AND Name = 'CivilizationType';

INSERT INTO ModifierArguments		
		(ModifierId,									Name,					Value)
VALUES	('P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS',		'ImprovementType',		'IMPROVEMENT_CAMP'),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS',		'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS',		'Amount',				1),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS',		'Origin',				1),		
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES',	'ImprovementType',		'IMPROVEMENT_PASTURE'),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES',	'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES',	'Amount',				1),
		('P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES',	'Origin',				1),	
		('P0K_TRAIT_DIPLOMATIC_GOVERNMENT_SLOT',		'GovernmentSlotType',	'SLOT_DIPLOMATIC'),
		('P0K_TRAIT_DIPLOMATIC_FAVOR',					'GovernmentSlotType',	'SLOT_DIPLOMATIC'),
		('P0K_TRAIT_DIPLOMATIC_FAVOR',					'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_ALLIANCE_AND_TRADE' AND ModifierId = 'TRAIT_ALLIANCE_SHARED_VIS';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_ALLIANCE_AND_TRADE',	'P0K_TRAIT_TRADE_PRODUCTION_FROM_CAMPS'),
		('TRAIT_LEADER_ALLIANCE_AND_TRADE',	'P0K_TRAIT_TRADE_PRODUCTION_FROM_PASTURES'),
		('TRAIT_LEADER_ALLIANCE_AND_TRADE',	'TRAIT_NO_SUPRISE_WAR_FOR_CANADA'),
		('TRAIT_LEADER_ALLIANCE_AND_TRADE',	'P0K_TRAIT_DIPLOMATIC_GOVERNMENT_SLOT'),
		('TRAIT_LEADER_ALLIANCE_AND_TRADE',	'P0K_TRAIT_DIPLOMATIC_FAVOR');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: MEKEWAP (ENHANCEMENT)
--=============================================================================================================
-- Change the +1 Gold if adjacent to a Luxury resoruce into a proper adjacency.
-- +1 Food.
-- Allow it to be built Floodplains, Marsh, and Volcanic Soil.
-- Add Tourism from Food.
--=============================================================================================================
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,					Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentResourceClass)
VALUES	('p0k_Mekewap_Gold',	'Placeholder',	'YIELD_GOLD',	1,				1,				'RESOURCECLASS_LUXURY');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_MEKEWAP',	'p0k_Mekewap_Gold');	
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM ImprovementModifiers WHERE ModifierID = 'MEKEWAP_LUXURY_GOLD';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_MEKEWAP' AND YieldType = 'YIELD_FOOD';
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_MEKEWAP',	'FEATURE_MARSH'),
		('IMPROVEMENT_MEKEWAP',	'FEATURE_FLOODPLAINS'),
		('IMPROVEMENT_MEKEWAP',	'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_MEKEWAP',	'FEATURE_FLOODPLAINS_PLAINS'),
		('IMPROVEMENT_MEKEWAP',	'FEATURE_VOLCANIC_SOIL');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,		TourismSource,			PrereqTech,		ScalingFactor)
VALUES	('IMPROVEMENT_MEKEWAP',	'TOURISMSOURCE_FOOD',	'TECH_FLIGHT',	100);
--=============================================================================================================
-- START BIASES
--=============================================================================================================
-- Add start biases for Camps and Pastures.
---------------------------------------------------------------------------------------------------------------
-- StartBiasResources
---------------------------------------------------------------------------------------------------------------
-- Camp and Pasture resources
INSERT INTO StartBiasResources
		(CivilizationType,		ResourceType,	Tier)
SELECT	'CIVILIZATION_CREE',	ResourceType,	2
FROM	Improvement_ValidResources
WHERE	(ImprovementType = 'IMPROVEMENT_CAMP' OR ImprovementType = 'IMPROVEMENT_PASTURE');
