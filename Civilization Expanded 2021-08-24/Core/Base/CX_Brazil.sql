/* 
	Civilizations Expanded: Brazil
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: AMAZON RAINFOREST (ENHANCEMENT)
--=============================================================================================================
-- Rainforests provide +1 Science.
-- If next to a River, Rainforests provide +1 Food and +1 Production.
-- (Give the Rainforest adjacency bonus to Industrial Zones and Harbors as well.)
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType)
VALUES	('P0K_BRAZIL_JUNGLE_ON_RIVER',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
VALUES	('P0K_BRAZIL_JUNGLE_ON_RIVER',	'REQUIRES_PLOT_HAS_JUNGLE'),
		('P0K_BRAZIL_JUNGLE_ON_RIVER',	'REQUIRES_PLOT_ADJACENT_TO_RIVER');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SCIENCE_FROM_JUNGLE',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'PLOT_HAS_JUNGLE_REQUIREMENTS'),
		('P0K_TRAIT_FOOD_FROM_JUNGLE_RIVER',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'P0K_BRAZIL_JUNGLE_ON_RIVER'),
		('P0K_TRAIT_PRODUCTION_FROM_JUNGLE_RIVER',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'P0K_BRAZIL_JUNGLE_ON_RIVER'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	NULL),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_TRAIT_SCIENCE_FROM_JUNGLE',			'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_FROM_JUNGLE',			'Amount',		1),
		('P0K_TRAIT_FOOD_FROM_JUNGLE_RIVER',		'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_FOOD_FROM_JUNGLE_RIVER',		'Amount',		1),
		('P0K_TRAIT_PRODUCTION_FROM_JUNGLE_RIVER',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_FROM_JUNGLE_RIVER',	'Amount',		1),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'FeatureType',	'FEATURE_JUNGLE'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'Amount',		1),
		('P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY',		'Description',	'LOC_P0K_DISTRICT_JUNGLE_2_PRODUCTION'),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'FeatureType',	'FEATURE_JUNGLE'),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'Amount',		1),
		('P0K_TRAIT_HARBOR_ADJACENCY',				'Description',	'LOC_DISTRICT_JUNGLE_2_GOLD');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_AMAZON',	'P0K_TRAIT_SCIENCE_FROM_JUNGLE'),
		('TRAIT_CIVILIZATION_AMAZON',	'P0K_TRAIT_FOOD_FROM_JUNGLE_RIVER'),
		('TRAIT_CIVILIZATION_AMAZON',	'P0K_TRAIT_PRODUCTION_FROM_JUNGLE_RIVER'),
		('TRAIT_CIVILIZATION_AMAZON',	'P0K_TRAIT_INDUSTRIAL_ZONE_ADJACENCY'),
		('TRAIT_CIVILIZATION_AMAZON',	'P0K_TRAIT_HARBOR_ADJACENCY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: MAGNANIMOUS (ENHANCEMENT)
--=============================================================================================================
-- Receive +2% Science for each Great Person ever earned, up to a maximum of 30%.
-- +25% Production towards specialty district projects in the Capital.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_ALL_PROJECTS_PRODUCTION',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,						EffectType)
VALUES	('MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_ALL_PROJECTS_PRODUCTION',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_ALL_PROJECTS_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_TRAIT_SCIENCE_FROM_EARNED_GREAT_PEOPLE',	'MODIFIER_PLAYER_ADJUST_YIELD_MODIFIER_PER_EARNED_GREAT_PERSON'),
		('P0K_TRAIT_CAPITAL_BOOST_PROJECT_PRODUCTION',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_ALL_PROJECTS_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_SCIENCE_FROM_EARNED_GREAT_PEOPLE',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_FROM_EARNED_GREAT_PEOPLE',	'Amount',		2),
		('P0K_TRAIT_CAPITAL_BOOST_PROJECT_PRODUCTION',	'Amount',		50);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_MAGNANIMOUS',	'P0K_TRAIT_SCIENCE_FROM_EARNED_GREAT_PEOPLE'),
		('TRAIT_LEADER_MAGNANIMOUS',	'P0K_TRAIT_CAPITAL_BOOST_PROJECT_PRODUCTION');
--=============================================================================================================
-- UNIQUE DISTRICT: STREET CARNIVAL & COPACOBANA (ENHANCEMENT)
--=============================================================================================================
-- +2 Housing.
--=============================================================================================================
-- Districts
---------------------------------------------------------------------------------------------------------------
UPDATE Districts 
SET Housing = 2 
WHERE DistrictType = 'DISTRICT_STREET_CARNIVAL';

UPDATE Districts 
SET Housing = 2 
WHERE DistrictType = 'DISTRICT_WATER_STREET_CARNIVAL';
