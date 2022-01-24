--===================================
-- SQL by p0kiehl 
-- Idea adapted from PotatoMcWhiskey
--===================================
-- PopulationReference 
-- (thanks Chrisy15!)
-------------------------------------
CREATE TABLE IF NOT EXISTS PopulationReference
    (
    Size INT
    );
    
WITH RECURSIVE t(val) AS (SELECT 1 UNION ALL SELECT val + 1 FROM t LIMIT 50) 
INSERT INTO PopulationReference (Size) SELECT val FROM t;
-------------------------------------
-- Types
-------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('P0K_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'KIND_MODIFIER');
-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,		EffectType)
VALUES	('P0K_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_YIELD_PER_POPULATION');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_REQUIRES_CITY_HAS_'||Size||'_POPULATION',	'REQUIREMENT_CITY_HAS_X_POPULATION' FROM PopulationReference WHERE Size > 1;

INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_REQUIRES_ERA_IS_AT_LEAST_'||EraType,		'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION' FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,		Value)
SELECT	'P0K_REQUIRES_CITY_HAS_'||Size||'_POPULATION',	'Amount',	Size FROM PopulationReference WHERE Size > 1;

INSERT INTO RequirementArguments
		(RequirementId,									Name,		Value)
SELECT	'P0K_REQUIRES_ERA_IS_AT_LEAST_'||EraType,		'EraType',	EraType FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
SELECT	'P0K_CITY_HAS_'||Size||'_POPULATION',	'REQUIREMENTSET_TEST_ALL' FROM PopulationReference WHERE Size > 1;

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
SELECT	'P0K_ERA_IS_AT_LEAST_'||EraType,		'REQUIREMENTSET_TEST_ALL' FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_CITY_HAS_'||Size||'_POPULATION',	'P0K_REQUIRES_CITY_HAS_'||Size||'_POPULATION' FROM PopulationReference WHERE Size > 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_ERA_IS_AT_LEAST_'||EraType,		'P0K_REQUIRES_ERA_IS_AT_LEAST_'||EraType FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_PRODUCTION_FROM_POPULATION_BASELINE',		'P0K_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	NULL);

INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
SELECT	'P0K_PRODUCTION_FROM_'||Size||'_POPULATION',	'P0K_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'P0K_CITY_HAS_'||Size||'_POPULATION' FROM PopulationReference WHERE Size > 1;

INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
SELECT	'P0K_PRODUCTION_FROM_'||EraType,				'P0K_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'P0K_ERA_IS_AT_LEAST_'||EraType FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_PRODUCTION_FROM_POPULATION_BASELINE',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_PRODUCTION_FROM_POPULATION_BASELINE',		'Amount',		0.5);

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
SELECT	'P0K_PRODUCTION_FROM_'||Size||'_POPULATION',	'YieldType',	'YIELD_PRODUCTION' FROM PopulationReference WHERE Size > 1;

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
SELECT	'P0K_PRODUCTION_FROM_'||Size||'_POPULATION',	'Amount',		0.05 FROM PopulationReference WHERE Size > 1;

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
SELECT	'P0K_PRODUCTION_FROM_'||EraType,				'YieldType',	'YIELD_PRODUCTION' FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
SELECT	'P0K_PRODUCTION_FROM_'||EraType,				'Amount',		0.1 FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- DistrictModifiers
-------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,				ModifierId)
VALUES	('DISTRICT_CITY_CENTER',	'P0K_PRODUCTION_FROM_POPULATION_BASELINE');

INSERT INTO DistrictModifiers
		(DistrictType,				ModifierId)
SELECT	'DISTRICT_CITY_CENTER',		'P0K_PRODUCTION_FROM_'||Size||'_POPULATION' FROM PopulationReference WHERE Size > 1;

INSERT INTO DistrictModifiers
		(DistrictType,				ModifierId)
SELECT	'DISTRICT_CITY_CENTER',		'P0K_PRODUCTION_FROM_'||EraType FROM Eras_XP1 WHERE EraType<>'ERA_ANCIENT';
-------------------------------------
-- PopulationReference
-------------------------------------
DROP TABLE PopulationReference