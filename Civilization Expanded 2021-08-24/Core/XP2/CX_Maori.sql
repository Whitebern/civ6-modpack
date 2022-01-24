/* 
	Civilizations Expanded: Maori
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: MANA (ENHANCEMENT)
--=============================================================================================================
-- Remove Great Writer and no harvesting maluses.
-- Change unimproved Woods and Rainforest bonus to apply regardless of being improved or not.
-- Give Reefs the Production bonus.
--=============================================================================================================
-- ExcludedGreatPersonClasses
---------------------------------------------------------------------------------------------------------------
DELETE FROM ExcludedGreatPersonClasses WHERE TraitType = 'TRAIT_CIVILIZATION_MAORI_MANA';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('P0K_MAORI_PLOT_HAS_FOREST_REQUIREMENTS',				'REQUIREMENTSET_TEST_ALL'), 
		('P0K_MAORI_PLOT_HAS_FOREST_MERCANTILISM_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_FOREST_CONSERVATION_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_REQUIREMENTS',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_MERCANTILISM_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_CONSERVATION_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_REEF_REQUIREMENTS',				'REQUIREMENTSET_TEST_ALL'), 
		('P0K_MAORI_PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAORI_PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('P0K_MAORI_PLOT_HAS_FOREST_REQUIREMENTS',				'PLOT_IS_FOREST_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_FOREST_MERCANTILISM_REQUIREMENTS',	'PLOT_IS_FOREST_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_FOREST_MERCANTILISM_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_MERCANTILISM'),
		('P0K_MAORI_PLOT_HAS_FOREST_CONSERVATION_REQUIREMENTS',	'PLOT_IS_FOREST_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_FOREST_CONSERVATION_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_CONSERVATION'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_REQUIREMENTS',				'PLOT_IS_JUNGLE_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_MERCANTILISM_REQUIREMENTS',	'PLOT_IS_JUNGLE_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_MERCANTILISM_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_MERCANTILISM'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_CONSERVATION_REQUIREMENTS',	'PLOT_IS_JUNGLE_REQUIREMENT'),
		('P0K_MAORI_PLOT_HAS_JUNGLE_CONSERVATION_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_CONSERVATION'),
		('P0K_MAORI_PLOT_HAS_REEF_REQUIREMENTS',				'REQUIRES_PLOT_HAS_REEF'),
		('P0K_MAORI_PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS',	'REQUIRES_PLOT_HAS_REEF'),
		('P0K_MAORI_PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_MERCANTILISM'),
		('P0K_MAORI_PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS',	'REQUIRES_PLOT_HAS_REEF'),
		('P0K_MAORI_PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_CONSERVATION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_FOREST_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_WOODS';

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_FOREST_MERCANTILISM_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_WOODS_MERCANTILISM';

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_FOREST_CONSERVATION_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_WOODS_CONSERVATION';

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_JUNGLE_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_RAINFOREST';

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_JUNGLE_MERCANTILISM_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_RAINFOREST_MERCANTILISM';

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAORI_PLOT_HAS_JUNGLE_CONSERVATION_REQUIREMENTS'
WHERE ModifierId = 'TRAIT_MAORI_PRODUCTION_RAINFOREST_CONSERVATION';

INSERT INTO Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId)
VALUES	('P0K_TRAIT_PRODUCTION_REEF',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_MAORI_PLOT_HAS_REEF_REQUIREMENTS'),
		('P0K_TRAIT_PRODUCTION_REEF_MERCANTILISM',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_MAORI_PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS'),
		('P0K_TRAIT_PRODUCTION_REEF_CONSERVATION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_MAORI_PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_TRAIT_PRODUCTION_REEF',				'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_REEF',				'Amount',		1),	
		('P0K_TRAIT_PRODUCTION_REEF_MERCANTILISM',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_REEF_MERCANTILISM',	'Amount',		1),	
		('P0K_TRAIT_PRODUCTION_REEF_CONSERVATION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_REEF_CONSERVATION',	'Amount',		2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_MAORI_MANA' AND ModifierId = 'TRAIT_MAORI_PREVENT_HARVEST';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_CIVILIZATION_MAORI_MANA',	'P0K_TRAIT_PRODUCTION_REEF'),
		('TRAIT_CIVILIZATION_MAORI_MANA',	'P0K_TRAIT_PRODUCTION_REEF_MERCANTILISM'),
		('TRAIT_CIVILIZATION_MAORI_MANA',	'P0K_TRAIT_PRODUCTION_REEF_CONSERVATION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: KUPE'S VOYAGE (ENHANCEMENT)
--=============================================================================================================
-- Add +2 Faith and +2 Gold per turn before settling.
-- Gain +3 Envoys upon settling the Capital.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('P0K_MAORI_MODIFIER_PLAYER_CAPITAL_ATTACH_MODIFIER',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------	
INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,						EffectType)
VALUES	('P0K_MAORI_MODIFIER_PLAYER_CAPITAL_ATTACH_MODIFIER',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ATTACH_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FAITH_PRESETTLEMENT',			'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE',					'PLAYER_HAS_NO_CITIES'),
		('P0K_TRAIT_GOLD_PRESETTLEMENT',			'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE',					'PLAYER_HAS_NO_CITIES'),
		('P0K_TRAIT_ENVOYS_PRESETTLEMENT',			'P0K_MAORI_MODIFIER_PLAYER_CAPITAL_ATTACH_MODIFIER',	NULL),
		('P0K_TRAIT_ENVOYS_PRESETTLEMENT_MODIFIER',	'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_TRAIT_FAITH_PRESETTLEMENT',			'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_PRESETTLEMENT',			'Amount',		2),
		('P0K_TRAIT_GOLD_PRESETTLEMENT',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_PRESETTLEMENT',			'Amount',		2),
		('P0K_TRAIT_ENVOYS_PRESETTLEMENT',			'ModifierId',	'P0K_TRAIT_ENVOYS_PRESETTLEMENT_MODIFIER'),
		('P0K_TRAIT_ENVOYS_PRESETTLEMENT_MODIFIER',	'Amount',		3);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_KUPES_VOYAGE',	'P0K_TRAIT_FAITH_PRESETTLEMENT'),
		('TRAIT_LEADER_KUPES_VOYAGE',	'P0K_TRAIT_GOLD_PRESETTLEMENT'),
		('TRAIT_LEADER_KUPES_VOYAGE',	'P0K_TRAIT_ENVOYS_PRESETTLEMENT');
--=============================================================================================================
-- UNIQUE BUILDING: MARAE (ENHANCEMENT)
--=============================================================================================================
-- +1 Gold maintenance to balance it out like the regular Amphitheater.
-- Restore Great Writer point and Great Work of Writing slot.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET Maintenance = 1 WHERE BuildingType = 'BUILDING_MARAE';
---------------------------------------------------------------------------------------------------------------
-- Building_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatPersonPoints
		(BuildingType,		GreatPersonClassType,			PointsPerTurn)
VALUES	('BUILDING_MARAE',	'GREAT_PERSON_CLASS_WRITER',	1);
---------------------------------------------------------------------------------------------------------------
-- Building_GreatWorks
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatWorks
		(BuildingType,		GreatWorkSlotType,	NumSlots)
SELECT	'BUILDING_MARAE',	GreatWorkSlotType,	NumSlots
FROM Building_GreatWorks WHERE BuildingType = 'BUILDING_AMPHITHEATER';