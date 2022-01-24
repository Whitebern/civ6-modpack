/* 
	Civilizations Expanded: Khmer
	Author: Sukritact
*/
--==========================================================================================================================
-- Districts
--==========================================================================================================================
-- Types
-----------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('DISTRICT_SUK_BARAY',			'KIND_DISTRICT');
-----------------------------------------------------------------------------------
-- Districts
-----------------------------------------------------------------------------------
INSERT INTO Districts
	(
		DistrictType,
		Name,
		Description,

		TraitType,
		PrereqTech,
		PrereqCivic,

		Cost,
		CostProgressionModel,
		CostProgressionParam1,

		Housing,
		Entertainment,

		PlunderType,
		PlunderAmount,
		CaptureRemovesDistrict,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,

		AdvisorType,

		RequiresPlacement,
		RequiresPopulation,

		Aqueduct,
		NoAdjacentCity,
		InternalOnly,
		ZOC,
		MilitaryDomain
	)
SELECT
		'DISTRICT_SUK_BARAY',
		'LOC_DISTRICT_SUK_BARAY_NAME',
		'LOC_DISTRICT_SUK_BARAY_DESCRIPTION',

		'TRAIT_CIVILIZATION_DISTRICT_SUK_BARAY',
		PrereqTech,
		PrereqCivic,

		Cost,
		CostProgressionModel,
		CostProgressionParam1,

		2,
		2,

		PlunderType,
		PlunderAmount,
		1,
		CaptureRemovesBuildings,
		CaptureRemovesCityDefenses,

		AdvisorType,

		RequiresPlacement,
		RequiresPopulation,

		0,
		NoAdjacentCity,
		InternalOnly,
		ZOC,
		MilitaryDomain
		
FROM Districts WHERE DistrictType = 'DISTRICT_BATH';
-----------------------------------------------------------------------------------
-- DistrictReplaces
-----------------------------------------------------------------------------------
INSERT INTO DistrictReplaces
			(CivUniqueDistrictType,					ReplacesDistrictType)
VALUES		('DISTRICT_SUK_BARAY',					'DISTRICT_AQUEDUCT');
-----------------------------------------------------------------------------------
-- District_ValidTerrains
-----------------------------------------------------------------------------------
INSERT INTO District_ValidTerrains
			(DistrictType,							TerrainType)
VALUES 		('DISTRICT_SUK_BARAY',					'TERRAIN_PLAINS'),
			('DISTRICT_SUK_BARAY',					'TERRAIN_GRASS'),
			('DISTRICT_SUK_BARAY',					'TERRAIN_TUNDRA'),
			('DISTRICT_SUK_BARAY',					'TERRAIN_SNOW'),			
			('DISTRICT_SUK_BARAY',					'TERRAIN_DESERT');
-------------------------------------
-- District_BuildChargeProductions
-------------------------------------
INSERT INTO District_BuildChargeProductions
			(DistrictType,							UnitType,	PercentProductionPerCharge)
SELECT 		'DISTRICT_SUK_BARAY',					UnitType,	PercentProductionPerCharge
FROM District_BuildChargeProductions WHERE DistrictType = 'DISTRICT_BATH';
-----------------------------------------------------------------------------------
-- District_Adjacencies
-----------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
			(DistrictType,					YieldChangeId)
SELECT 		'DISTRICT_SUK_BARAY',			YieldChangeId
FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_BATH';

INSERT INTO District_Adjacencies
			(DistrictType,					YieldChangeId)
VALUES		('DISTRICT_INDUSTRIAL_ZONE',	'Suk_Baray_Production');
-------------------------------------
-- Adjacency_YieldChanges
-------------------------------------
INSERT OR REPLACE INTO Adjacency_YieldChanges
	(
		ID,
		Description,

		YieldType,
		YieldChange,

		AdjacentResourceClass,
		AdjacentImprovement,
		AdjacentDistrict,
		TilesRequired
	)
VALUES	
	(
		'Suk_Baray_Production',
		'LOC_DISTRICT_SUK_BARAY_PRODUCTION',

		'YIELD_PRODUCTION',
		2,

		NULL,
		NULL,
		'DISTRICT_SUK_BARAY',
		1
	);
--==========================================================================================================================
-- XP1/XP2 Stuff
--==========================================================================================================================
INSERT INTO Districts_XP2	
		(DistrictType,					PreventsDrought)
VALUES	('DISTRICT_SUK_BARAY',			1);

INSERT INTO MomentIllustrations
		(MomentIllustrationType, 						MomentDataType,					GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_DISTRICT', 		'MOMENT_DATA_DISTRICT',			'DISTRICT_SUK_BARAY',		'Moment_Infrastructure_Suk_Baray');
--==========================================================================================================================
-- +1 [ICON_Housing] Housing from adjacent Farms and Wonders.
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('SUK_BARAY_IS_INGAME_AND_ADJACENT',	'REQUIREMENTSET_TEST_ALL'),
		('SUK_IS_BARAY_ADJACENT_TO_OWNER',		'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SUK_BARAY_IS_INGAME_AND_ADJACENT',	'REQUIRES_SUK_BARAY_IS_INGAME'),
		('SUK_BARAY_IS_INGAME_AND_ADJACENT',	'REQUIRES_SUK_BARAY_IS_ADJACENT'),

		('SUK_IS_BARAY_ADJACENT_TO_OWNER',		'ADJACENT_TO_OWNER'),
		('SUK_IS_BARAY_ADJACENT_TO_OWNER',		'REQUIRES_DISTRICT_IS_SUK_BARAY');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 						RequirementType)
VALUES	('REQUIRES_SUK_BARAY_IS_INGAME',		'REQUIREMENT_GAME_HAS_CIVILIZATION_OR_LEADER_TRAIT'),
		('REQUIRES_SUK_BARAY_IS_ADJACENT',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('REQUIRES_DISTRICT_IS_SUK_BARAY',		'REQUIREMENT_DISTRICT_TYPE_MATCHES');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 						Name,						Value)
VALUES	('REQUIRES_SUK_BARAY_IS_INGAME', 		'TraitType',				'TRAIT_CIVILIZATION_DISTRICT_SUK_BARAY'),
		('REQUIRES_SUK_BARAY_IS_ADJACENT', 		'DistrictType',				'DISTRICT_SUK_BARAY'),
		('REQUIRES_DISTRICT_IS_SUK_BARAY', 		'DistrictType',				'DISTRICT_SUK_BARAY');
-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO Types
			(Type,													Kind)
VALUES		('MODIFIER_SUK_BARAY_ALL_DISTRICTS_ADJUST_HOUSING',		'KIND_MODIFIER');

INSERT INTO	DynamicModifiers
			(ModifierType,											CollectionType,											EffectType)
VALUES		('MODIFIER_SUK_BARAY_ALL_DISTRICTS_ADJUST_HOUSING',		'COLLECTION_ALL_DISTRICTS',								'EFFECT_ADJUST_DISTRICT_HOUSING');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,											OwnerRequirementSetId,					SubjectRequirementSetId)
VALUES	('SUK_BARAY_ADJACENT_HOUSING',		'MODIFIER_SUK_BARAY_ALL_DISTRICTS_ADJUST_HOUSING',		'SUK_BARAY_IS_INGAME_AND_ADJACENT',		'SUK_IS_BARAY_ADJACENT_TO_OWNER');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,					Value)
VALUES	('SUK_BARAY_ADJACENT_HOUSING',		'Amount',				1);
-------------------------------------
-- ImprovementModifiers/BuildingModifiers
-------------------------------------
INSERT INTO ImprovementModifiers			
		(ImprovementType,				ModifierId)
VALUES	('IMPROVEMENT_FARM', 			'SUK_BARAY_ADJACENT_HOUSING');

INSERT INTO BuildingModifiers
			(BuildingType,				ModifierId)
SELECT		BuildingType,				'SUK_BARAY_ADJACENT_HOUSING'
FROM Buildings WHERE IsWonder = 1;
--==========================================================================================================================
-- Adjacent Farms receive an additional +2 [ICON_Food] Food, +1 [ICON_Faith] Faith.
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('SUK_IS_FARM_ADJACENT_TO_BARAY',		'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SUK_IS_FARM_ADJACENT_TO_BARAY',		'REQUIRES_PLOT_HAS_FARM'),
		('SUK_IS_FARM_ADJACENT_TO_BARAY',		'ADJACENT_TO_OWNER');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,								OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('SUK_BARAY_ADJACENT_FARM_FOOD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		NULL,						'SUK_IS_FARM_ADJACENT_TO_BARAY'),
		('SUK_BARAY_ADJACENT_FARM_FAITH',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		NULL,						'SUK_IS_FARM_ADJACENT_TO_BARAY');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,					Value)
VALUES	('SUK_BARAY_ADJACENT_FARM_FOOD',		'YieldType',			'YIELD_FOOD'),
		('SUK_BARAY_ADJACENT_FARM_FOOD',		'Amount',				2),

		('SUK_BARAY_ADJACENT_FARM_FAITH',		'YieldType',			'YIELD_FAITH'),
		('SUK_BARAY_ADJACENT_FARM_FAITH',		'Amount',				1);
-------------------------------------
-- DistrictModifiers
-------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,					ModifierId)
VALUES	('DISTRICT_SUK_BARAY', 			'SUK_BARAY_ADJACENT_FARM_FOOD'),
		('DISTRICT_SUK_BARAY', 			'SUK_BARAY_ADJACENT_FARM_FAITH');
