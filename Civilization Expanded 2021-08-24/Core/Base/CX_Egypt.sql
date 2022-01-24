/* 
	Civilizations Expanded: Egypt
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SEASON OF INUNDATION (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Irrigation technology unlocked.
-- +2 Gold and +1 Culture from resources adjacent to a River.
-- Floods provide +1 Food, +1 Production, and +1 Gold to affected tiles.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FOR_FLOOD',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FOR_FLOOD',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_YIELD_PER_FLOOD');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_EGYPT_PLOT_HAS_RESOURCE_REQUIREMENTS',	'REQUIREMENT_REQUIREMENTSET_IS_MET');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value)
VALUES	('P0K_EGYPT_PLOT_HAS_RESOURCE_REQUIREMENTS',	'RequirementSetId',		'P0K_EGYPT_PLOT_HAS_RESOURCE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_EGYPT_PLOT_HAS_RESOURCE',			'REQUIREMENTSET_TEST_ANY'),
		('P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_EGYPT_PLOT_HAS_RESOURCE',			'REQUIRES_PLOT_HAS_BONUS'),
		('P0K_EGYPT_PLOT_HAS_RESOURCE',			'REQUIRES_PLOT_HAS_LUXURY'),
		('P0K_EGYPT_PLOT_HAS_RESOURCE',			'REQUIRES_PLOT_HAS_STRATEGIC'),
		('P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE',	'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
		('P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE',	'P0K_EGYPT_PLOT_HAS_RESOURCE_REQUIREMENTS'),
		('P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE',	'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,											SubjectRequirementSetId)										
VALUES	('P0K_TRAIT_GRANT_IRRIGATION',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',			NULL),		
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_GOLD',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_CULTURE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					'P0K_EGYPT_PLOT_HAS_RIVER_RESOURCE'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_FOOD',		'P0K_MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FOR_FLOOD',	NULL),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_PRODUCTION',	'P0K_MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FOR_FLOOD',	NULL),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_GOLD',		'P0K_MODIFIER_PLAYER_CITIES_ADJUST_YIELD_FOR_FLOOD',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments 
SET Value = 20
WHERE ModifierId = 'TRAIT_RIVER_FASTER_BUILDTIME_DISTRICT'
AND Name = 'Amount';

UPDATE ModifierArguments 
SET Value = 20
WHERE ModifierId = 'TRAIT_RIVER_FASTER_BUILDTIME_WONDER'
AND Name = 'Amount';

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_GRANT_IRRIGATION',						'TechType',		'TECH_IRRIGATION'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_GOLD',	'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_GOLD',	'Amount',		2),
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_CULTURE',	'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_CULTURE',	'Amount',		1),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_FOOD',		'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_FOOD',		'Amount',		1),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_PRODUCTION',	'Amount',		1),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_GOLD',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_GOLD',		'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_GRANT_IRRIGATION'),
		('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_GOLD'),
		('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_SEASON_OF_INUNDATION_RESOURCE_CULTURE'),
		('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_FOOD'),
		('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_PRODUCTION'),
		('TRAIT_CIVILIZATION_ITERU',	'P0K_TRAIT_SEASON_OF_INUNDATION_FLOOD_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: BRIDE OF THE MEDITERRANEAN (ENHANCEMENT)
--=============================================================================================================
-- +25% Culture, Production, Gold, and Faith in the Capital.
-- Gain +1 Trade Route capacity and a free Trader upon unlocking the Foreign Trade civic.
-- (Remove the double Alliance points).
-- (Add +2 Production bonus for Trade Routes.)
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_EGYPT_REQUIRES_PLAYER_HAS_FOREIGN_TRADE',	'REQUIREMENT_PLAYER_HAS_CIVIC');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('P0K_EGYPT_REQUIRES_PLAYER_HAS_FOREIGN_TRADE',	'CivicType',	'CIVIC_FOREIGN_TRADE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_EGYPT_PLAYER_HAS_FOREIGN_TRADE_AND_CAPITAL',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('P0K_EGYPT_PLAYER_HAS_FOREIGN_TRADE_AND_CAPITAL',	'REQUIRES_CAPITAL_CITY'),
		('P0K_EGYPT_PLAYER_HAS_FOREIGN_TRADE_AND_CAPITAL',	'P0K_EGYPT_REQUIRES_PLAYER_HAS_FOREIGN_TRADE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,													RunOnce,	Permanent,	OwnerRequirementSetId,								SubjectRequirementSetId)						
VALUES	('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_CULTURE',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER',		0,			0,			NULL,												NULL),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_PRODUCTION',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER',		0,			0,			NULL,												NULL),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_GOLD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER',		0,			0,			NULL,												NULL),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_FAITH',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER',		0,			0,			NULL,												NULL),
		('P0K_TRAIT_FOREIGN_TRADE_TRADE_ROUTE',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',					0,			0,			NULL,												'P0K_EGYPT_PLAYER_HAS_FOREIGN_TRADE_AND_CAPITAL'),
		('P0K_TRAIT_FOREIGN_TRADE_ADD_TRADER',					'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',						1,			1,			'P0K_EGYPT_PLAYER_HAS_FOREIGN_TRADE_AND_CAPITAL',	NULL),
		('P0K_TRAIT_INTERNATIONAL_TRADE_GAIN_PRODUCTION',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	0,			0,			NULL,												NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value)
VALUES	('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_CULTURE',		'YieldType',			'YIELD_CULTURE'),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_CULTURE',		'Amount',				25),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_PRODUCTION',	'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_PRODUCTION',	'Amount',				25),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_GOLD',			'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_GOLD',			'Amount',				25),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_FAITH',			'YieldType',			'YIELD_FAITH'),
		('P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_FAITH',			'Amount',				25),
		('P0K_TRAIT_FOREIGN_TRADE_TRADE_ROUTE',					'Amount',				1),
		('P0K_TRAIT_FOREIGN_TRADE_ADD_TRADER',					'UnitType',				'UNIT_TRADER'),
		('P0K_TRAIT_FOREIGN_TRADE_ADD_TRADER',					'AllowUniqueOverride',	0),
		('P0K_TRAIT_FOREIGN_TRADE_ADD_TRADER',					'Amount',				1),
		('P0K_TRAIT_INTERNATIONAL_TRADE_GAIN_PRODUCTION',		'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_INTERNATIONAL_TRADE_GAIN_PRODUCTION',		'Amount',				2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_MEDITERRANEAN' AND ModifierId = 'TRAIT_ALLIANCE_POINTS_FROM_TRADE';

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_CULTURE'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_PRODUCTION'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_GOLD'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_MEDITERRANEAN_BRIDE_CAPITAL_FAITH'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_FOREIGN_TRADE_TRADE_ROUTE'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_FOREIGN_TRADE_ADD_TRADER'),
		('TRAIT_LEADER_MEDITERRANEAN',	'P0K_TRAIT_INTERNATIONAL_TRADE_GAIN_PRODUCTION');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: SPHINX (ENHANCEMENT)
--=============================================================================================================
-- Change the "+2 Faith if next to a Wonder" bonus to an adjacency so it can stack, and include Natural Wonders.
-- +1 Culture if on Desert OR Floodplains, not just Floodplains.
-- +1 Gold for each adjacent Luxury resource.
-- Can now be built on Marsh and Volcanic Soil.
--=============================================================================================================
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentWonder,	AdjacentNaturalWonder,	AdjacentResourceClass)
VALUES	('p0k_SphinxWonder_Faith',			'Placeholder',	'YIELD_FAITH',	2,				1,				1,				0,						'NO_RESOURCECLASS'),
		('p0k_SphinxNaturalWonder_Faith',	'Placeholder',	'YIELD_FAITH',	2,				1,				0,				1,						'NO_RESOURCECLASS'),
		('p0k_SphinxLuxury_Gold',			'Placeholder',	'YIELD_GOLD',	1,				1,				0,				0,						'RESOURCECLASS_LUXURY');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,		YieldType,		YieldChange)
VALUES	('IMPROVEMENT_SPHINX',	'YIELD_GOLD',	0);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_SPHINX',	'p0k_SphinxWonder_Faith'),
		('IMPROVEMENT_SPHINX',	'p0k_SphinxNaturalWonder_Faith'),
		('IMPROVEMENT_SPHINX',	'p0k_SphinxLuxury_Gold');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_SPHINX',	'FEATURE_MARSH'),
		('IMPROVEMENT_SPHINX',	'FEATURE_VOLCANIC_SOIL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('P0K_EGYPT_SPHINX_DESERT_OR_FLOODPLAINS_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('P0K_EGYPT_SPHINX_DESERT_OR_FLOODPLAINS_REQUIREMENTS',	'REQUIRES_PLOT_HAS_FLOODPLAINS_TAG'),
		('P0K_EGYPT_SPHINX_DESERT_OR_FLOODPLAINS_REQUIREMENTS',	'REQUIRES_PLOT_HAS_DESERT'),
		('P0K_EGYPT_SPHINX_DESERT_OR_FLOODPLAINS_REQUIREMENTS',	'REQUIRES_PLOT_HAS_DESERT_HILLS');
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM ImprovementModifiers
WHERE ImprovementType = 'IMPROVEMENT_SPHINX'
AND ModifierID = 'SPHINX_WONDERADJACENCY_FAITH';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers
SET SubjectRequirementSetId = 'P0K_EGYPT_SPHINX_DESERT_OR_FLOODPLAINS_REQUIREMENTS'
WHERE ModifierId = 'SPHINX_FLOODPLAINS_CULTURE';
--=============================================================================================================
-- UNIQUE UNIT: MARYANNU CHARIOT ARCHER (ALTERATION)
--=============================================================================================================
-- Reduce cost from 90 to 85.
-- Replaces the Heavy Chariot again.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units SET Cost = 85 WHERE UnitType = 'UNIT_EGYPTIAN_CHARIOT_ARCHER'
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,				ReplacesUnitType)
SELECT	'UNIT_EGYPTIAN_CHARIOT_ARCHER',	'UNIT_HEAVY_CHARIOT'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');