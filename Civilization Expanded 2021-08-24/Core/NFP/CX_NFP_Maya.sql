/* 
	Civilizations Expanded: Maya
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: BLESSINGS OF ITZAMNA (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Pottery technology unlocked.
-- Plantations provide +1 Housing and +1 Production.
-- +1 Amenity from improved Bonus resources (remove +1 Amenity for each adjacent Luxury resource).
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,			RequirementSetType)
VALUES	('P0K_MAYA_PLOT_HAS_BONUS',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,			RequirementId)
VALUES	('P0K_MAYA_PLOT_HAS_BONUS',	'REQUIRES_PLOT_HAS_BONUS');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GRANT_POTTERY',				'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',		NULL,						NULL),
		('P0K_TRAIT_PLANTATION_PRODUCTION',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				NULL,						'PLOT_HAS_PLANTATION_REQUIREMENTS'),
		('P0K_TRAIT_BONUS_RESOURCE_AMENITY',	'MODIFIER_CITY_OWNER_ADJUST_IMPROVEMENT_AMENITY',	'P0K_MAYA_PLOT_HAS_BONUS',	'MAYA_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('P0K_TRAIT_GRANT_POTTERY',				'TechType',		'TECH_POTTERY'),
		('P0K_TRAIT_PLANTATION_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PLANTATION_PRODUCTION',		'Amount',		1),
		('P0K_TRAIT_BONUS_RESOURCE_AMENITY',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_MAYAB' 
AND			ModifierId = 'TRAIT_ADD_AMENITY_PER_ADJACENT_LUXURY';


INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_MAYAB',	'P0K_TRAIT_GRANT_POTTERY'),
		('TRAIT_CIVILIZATION_MAYAB',	'P0K_TRAIT_PLANTATION_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO ImprovementModifiers
		(ImprovementType,			ModifierID)
VALUES	('IMPROVEMENT_PLANTATION',	'FARM_HOUSING_WITH_MAYAB_TRAIT');

INSERT INTO ImprovementModifiers
				(ImprovementType,		ModifierID)
SELECT DISTINCT	ImprovementType,		'P0K_TRAIT_BONUS_RESOURCE_AMENITY'
FROM			Improvement_ValidResources
WHERE			ResourceType 
IN				(SELECT ResourceType FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_BONUS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies
WHERE		ImprovementType = 'IMPROVEMENT_FARM'
AND			YieldChangeId = 'Farm_FoodObservatoryAdjacency';
--=============================================================================================================
-- LEADER UNIQUE ABILITY: IX MUTAL AJAW (ENHANCEMENT)
--=============================================================================================================
-- (Increase the range of the abilities to 9 and include the Capital).
-- Newly founded cities begin with a free Builder.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType)
VALUES	('P0K_MAYA_REQUIRES_OBJECT_9_TILES_FROM_CAPITAL',			'REQUIREMENT_PLOT_NEAR_CAPITAL'),
		('P0K_MAYA_REQUIRES_OBJECT_10_TILES_OR_MORE_FROM_CAPITAL',	'REQUIREMENT_PLOT_NEAR_CAPITAL');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
VALUES	('P0K_MAYA_REQUIRES_OBJECT_9_TILES_FROM_CAPITAL',			'MaxDistance',	9),
		('P0K_MAYA_REQUIRES_OBJECT_10_TILES_OR_MORE_FROM_CAPITAL',	'MinDistance',	10);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('P0K_MAYA_OBJECT_IS_9_TILES_FROM_CAPITAL',				'REQUIREMENTSET_TEST_ALL'),
		('P0K_MAYA_OBJECT_IS_10_TILES_OR_MORE_FROM_CAPITAL',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('P0K_MAYA_OBJECT_IS_9_TILES_FROM_CAPITAL',				'P0K_MAYA_REQUIRES_OBJECT_9_TILES_FROM_CAPITAL'),
		('P0K_MAYA_OBJECT_IS_10_TILES_OR_MORE_FROM_CAPITAL',	'P0K_MAYA_REQUIRES_OBJECT_10_TILES_OR_MORE_FROM_CAPITAL');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAYA_OBJECT_IS_9_TILES_FROM_CAPITAL' 
WHERE ModifierId IN ('TRAIT_LEADER_NEARBY_CITIES_GAIN_ABILITY',	'TRAIT_LEADER_NEARBY_CITIES_GAIN_YIELDS');

UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_MAYA_OBJECT_IS_10_TILES_OR_MORE_FROM_CAPITAL' 
WHERE ModifierId = 'TRAIT_LEADER_NEARBY_CITIES_LOSE_YIELDS';

INSERT INTO Modifiers
		(ModifierId,								ModifierType)
VALUES	('P0K_TRAIT_FOUNDED_CITIES_FREE_BUILDER',	'MODIFIER_PLAYER_BUILT_CITIES_GRANT_FREE_UNIT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_TRAIT_FOUNDED_CITIES_FREE_BUILDER',	'UnitType',		'UNIT_BUILDER'),
		('P0K_TRAIT_FOUNDED_CITIES_FREE_BUILDER',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_MUTAL' AND ModifierId = 'TRAIT_LEADER_NEARBY_CITIES_GAIN_BUILDER';

INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('TRAIT_LEADER_MUTAL',	'P0K_TRAIT_FOUNDED_CITIES_FREE_BUILDER');
--=============================================================================================================
-- UNIQUE DISTRICT: OBSERVATORY (ENHANCEMENT)
--=============================================================================================================
-- Unique district project: Venus Observations (credit to DarthStarkiller, Enigma, and Relic)
-- Project benefits: Science, Faith, Great Prophet points, and three random Eurekas. Can only be done once.
-- +1 Great Prophet point.
-- Buildings in this district can be purchased with Faith.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('P0K_PROJECT_VENUS_OBSERVATIONS',	'KIND_PROJECT');
---------------------------------------------------------------------------------------------------------------
-- Projects
---------------------------------------------------------------------------------------------------------------
INSERT INTO Projects
		(ProjectType,
		Name,
		ShortName,
		Description,
		PopupText,
		Cost,
		CostProgressionModel,
		CostProgressionParam1,
		PrereqTech,
		PrereqCivic,
		PrereqDistrict,
		VisualBuildingType,
		SpaceRace,
		OuterDefenseRepair,
		MaxPlayerInstances,
		AmenitiesWhileActive,
		PrereqResource,
		AdvisorType,
		WMD)
SELECT	'P0K_PROJECT_VENUS_OBSERVATIONS',
		'LOC_P0K_PROJECT_VENUS_OBSERVATIONS_NAME',
		'LOC_P0K_PROJECT_VENUS_OBSERVATIONS_SHORT_NAME',
		'LOC_P0K_PROJECT_VENUS_OBSERVATIONS_DESCRIPTION',
		PopupText, 
		Cost*4,
		CostProgressionModel,
		CostProgressionParam1/2,
		PrereqTech,
		PrereqCivic,
		'DISTRICT_OBSERVATORY',
		VisualBuildingType,
		SpaceRace,
		OuterDefenseRepair,
		1,
		AmenitiesWhileActive,
		PrereqResource,
		AdvisorType,
		WMD
FROM Projects WHERE ProjectType = 'PROJECT_ENHANCE_DISTRICT_CAMPUS';
---------------------------------------------------------------------------------------------------------------
-- Project_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO Project_GreatPersonPoints
		(ProjectType,						GreatPersonClassType,			Points,	PointProgressionModel,				PointProgressionParam1)
VALUES	('P0K_PROJECT_VENUS_OBSERVATIONS',	'GREAT_PERSON_CLASS_PROPHET',	15,		'COST_PROGRESSION_GAME_PROGRESS',	800);
---------------------------------------------------------------------------------------------------------------
-- Project_YieldConversions
---------------------------------------------------------------------------------------------------------------
INSERT INTO Project_YieldConversions
		(ProjectType,						YieldType,			PercentOfProductionRate)
VALUES	('P0K_PROJECT_VENUS_OBSERVATIONS',	'YIELD_SCIENCE',	15),
		('P0K_PROJECT_VENUS_OBSERVATIONS',	'YIELD_FAITH',		15);
---------------------------------------------------------------------------------------------------------------
-- District_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
		(DistrictType,				GreatPersonClassType,			PointsPerTurn)
VALUES	('DISTRICT_OBSERVATORY',	'GREAT_PERSON_CLASS_PROPHET',	1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_OBSERVATORY_FAITH_PURCHASE_BUILDINGS',	'MODIFIER_CITY_ENABLE_BUILDING_FAITH_PURCHASE'),
		('P0K_VENUS_OBSERVATIONS_RANDOM_EUREKA',		'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_OBSERVATORY_FAITH_PURCHASE_BUILDINGS',	'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_VENUS_OBSERVATIONS_RANDOM_EUREKA',		'Amount',		3);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,				ModifierId)
VALUES	('DISTRICT_OBSERVATORY',	'P0K_OBSERVATORY_FAITH_PURCHASE_BUILDINGS');
---------------------------------------------------------------------------------------------------------------
--ProjectCompletionModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO ProjectCompletionModifiers
		(ProjectType,						ModifierId)
VALUES	('P0K_PROJECT_VENUS_OBSERVATIONS',	'P0K_VENUS_OBSERVATIONS_RANDOM_EUREKA');
--=============================================================================================================
-- START BIASES
--=============================================================================================================
-- Update to remove all non-Plantation or non-Farm luxuries because the new UA has nothing to do with settling near Luxuries.
-- Also updating to include modded resources.
-- Leave their Tier 1 terrain biases alone (Grass and Plains) but delete the Tier 3 ones.
--=============================================================================================================
-- StartBiasResources
---------------------------------------------------------------------------------------------------------------
DELETE FROM StartBiasResources
WHERE		CivilizationType = 'CIVILIZATION_MAYA';

-- Plantation Luxuries
INSERT INTO StartBiasResources
		(CivilizationType,		ResourceType,	Tier)
SELECT	'CIVILIZATION_MAYA',	ResourceType,	2
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY'
AND		ResourceType IN (
SELECT	ResourceType 
FROM	Improvement_ValidResources
WHERE	ImprovementType = 'IMPROVEMENT_PLANTATION');

-- Maize
INSERT INTO StartBiasResources
		(CivilizationType,		ResourceType,		Tier)
VALUES	('CIVILIZATION_MAYA',	'RESOURCE_MAIZE',	2);
---------------------------------------------------------------------------------------------------------------
-- StartBiasTerrains
---------------------------------------------------------------------------------------------------------------
DELETE FROM StartBiasTerrains
WHERE		CivilizationType = 'CIVILIZATION_MAYA'
AND			Tier = 3;