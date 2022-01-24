/* 
	p0kiehl's Better Aqueduct
	Author: p0kiehl
*/
--========================================================================
-- Great People Points: Provide +1 Great Engineer Point per turn.
--========================================================================
-- District_GreatPersonPoints
--------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
		(DistrictType,			GreatPersonClassType,			PointsPerTurn)
VALUES	('DISTRICT_AQUEDUCT',	'GREAT_PERSON_CLASS_ENGINEER',	1);

INSERT INTO District_GreatPersonPoints
		(DistrictType,			GreatPersonClassType,			PointsPerTurn)
SELECT	CivUniqueDistrictType,	'GREAT_PERSON_CLASS_ENGINEER',	1 FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';
--========================================================================
-- Adjacencies: +0.5 Food for adjacent districts. +1 Food for adjacent Oases and Rivers.
--========================================================================
-- Adjacency_YieldChanges
--------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,							YieldType,		YieldChange,	TilesRequired,	OtherDistrictAdjacent,	AdjacentFeature,	AdjacentRiver)
VALUES	('p0k_BA_Aqueduct_District_Food',	'LOC_P0K_BA_AQUEDUCT_DISTRICT_FOOD',	'YIELD_FOOD',	1,				2,				'1',					NULL,				'0'),
		('p0k_BA_Aqueduct_River_Food',		'LOC_P0K_BA_AQUEDUCT_RIVER_FOOD',		'YIELD_FOOD',	1,				1,				'0',					NULL,				'1'),
		('p0K_BA_Aqueduct_Oasis_Food',		'LOC_P0K_BA_AQUEDUCT_OASIS_FOOD',		'YIELD_FOOD',	1,				1,				'0',					'FEATURE_OASIS',	'0');
--------------------------------------------------------------------------
-- District_Adjacencies
--------------------------------------------------------------------------
INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
VALUES	('DISTRICT_AQUEDUCT',	'p0k_BA_Aqueduct_District_Food'),
		('DISTRICT_AQUEDUCT',	'p0k_BA_Aqueduct_River_Food'),
		('DISTRICT_AQUEDUCT',	'p0K_BA_Aqueduct_Oasis_Food');

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
SELECT	CivUniqueDistrictType,	'p0k_BA_Aqueduct_District_Food' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
SELECT	CivUniqueDistrictType,	'p0k_BA_Aqueduct_River_Food' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
SELECT	CivUniqueDistrictType,	'p0K_BA_Aqueduct_Oasis_Food' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';
--========================================================================
-- Modifiers: +1 Food to Farms over resources in this city. +1 Housing if placed on a tile with at least Charming appeal.
--========================================================================
-- Types
--------------------------------------------------------------------------
INSERT INTO Types
		(Type,													Kind)
VALUES	('P0K_BA_MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_HOUSING',	'KIND_MODIFIER');
--------------------------------------------------------------------------
-- DynamicModifiers
--------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,		EffectType)
VALUES	('P0K_BA_MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_HOUSING',	'COLLECTION_OWNER',	'EFFECT_ADJUST_DISTRICT_HOUSING');
--------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_BA_FARM_RESOURCE_REQUIREMENT',	'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements 
		(RequirementSetId,						RequirementId) 
VALUES	('P0K_BA_FARM_RESOURCE_REQUIREMENT',	'REQUIRES_PLOT_HAS_FARM'),
		('P0K_BA_FARM_RESOURCE_REQUIREMENT',	'REQUIRES_PLOT_HAS_BONUS');
--------------------------------------------------------------------------
-- Modifiers 
--------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_BA_AQUEDUCT_FOOD',					'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',			'P0K_BA_FARM_RESOURCE_REQUIREMENT'),
		('P0K_BA_AQUEDUCT_BREATHTAKING_HOUSING',	'P0K_BA_MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_HOUSING',	'PLOT_CHARMING_APPEAL');
--------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_BA_AQUEDUCT_FOOD',					'YieldType',	'YIELD_FOOD'),
		('P0K_BA_AQUEDUCT_FOOD',					'Amount',		1),
		('P0K_BA_AQUEDUCT_BREATHTAKING_HOUSING',	'Amount',		1);
--------------------------------------------------------------------------
-- DistrictModifiers
--------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
VALUES	('DISTRICT_AQUEDUCT',						'P0K_BA_AQUEDUCT_FOOD'),
		('DISTRICT_AQUEDUCT',						'P0K_BA_AQUEDUCT_BREATHTAKING_HOUSING');

INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
SELECT	CivUniqueDistrictType,						'P0K_BA_AQUEDUCT_FOOD' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';

INSERT INTO DistrictModifiers
		(DistrictType,								ModifierId)
SELECT	CivUniqueDistrictType,						'P0K_BA_AQUEDUCT_BREATHTAKING_HOUSING' FROM DistrictReplaces WHERE ReplacesDistrictType = 'DISTRICT_AQUEDUCT';

