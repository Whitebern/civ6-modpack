/* 
	Civilizations Expanded: Sweden
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: NOBEL PRIZE (REWORK)
--=============================================================================================================
-- (Decouple the Nobel Prize from Sweden).
-- Campus districts provide Production equal to their Science adjacency bonus.
-- +25% Great Person points in cities with at least three specialty districts.
-- Earning a Great Person grants 50 Diplomatic Favor.
-- +20% Production towards district projects.
-- +1 Amenity while a district project is active.
--=============================================================================================================								
-- RequirementSetRequirements (NOTE: Decouple the Nobel Prize from Sweden)
---------------------------------------------------------------------------------------------------------------
DELETE FROM RequirementSetRequirements WHERE RequirementSetId = 'NOBEL_PRIZE_TARGET_REQUIREMENTS' AND RequirementId = 'REQUIRES_GAME_HAS_NOBEL_PRIZE_TRAIT'; 
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_SWEDEN_REQUIRES_CITY_IS_PRODUCING_PROJECT',	'REQUIREMENT_CITY_IS_PRODUCING_PROJECT'); -- no argument
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_SWEDEN_CITY_IS_PRODUCING_PROJECT',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_SWEDEN_CITY_IS_PRODUCING_PROJECT',	'P0K_SWEDEN_REQUIRES_CITY_IS_PRODUCING_PROJECT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,														SubjectRequirementSetId)
VALUES	('P0K_TRAIT_PRODUCTION_FROM_CAMPUS',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',	NULL),
		('P0K_TRAIT_MORE_GREAT_PERSON_POINTS',	'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT_BONUS',			'CITY_HAS_3_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('P0K_TRAIT_PROJECT_PRODUCTION_BONUS',	'MODIFIER_PLAYER_CITIES_ADJUST_ALL_PROJECTS_PRODUCTION',			NULL),
		('P0K_TRAIT_AMENITY_DURING_PROJECT',	'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',						'P0K_SWEDEN_CITY_IS_PRODUCING_PROJECT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,					Value)
VALUES	('P0K_TRAIT_PRODUCTION_FROM_CAMPUS',	'YieldTypeToGrant',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_FROM_CAMPUS',	'YieldTypeToMirror',	'YIELD_SCIENCE'),
		('P0K_TRAIT_MORE_GREAT_PERSON_POINTS',	'Amount',				25),
		('P0K_TRAIT_PROJECT_PRODUCTION_BONUS',	'Amount',				20),
		('P0K_TRAIT_AMENITY_DURING_PROJECT',	'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_NOBEL_PRIZE' AND ModifierId IN
('TRAIT_GREAT_ENGINEER_FACTORY_MODIFIER', 'TRAIT_GREAT_SCIENTIST_UNIVERSITY_MODIFIER');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_CIVILIZATION_NOBEL_PRIZE',	'P0K_TRAIT_PRODUCTION_FROM_CAMPUS'), 
		('TRAIT_CIVILIZATION_NOBEL_PRIZE',	'P0K_TRAIT_MORE_GREAT_PERSON_POINTS'),
		('TRAIT_CIVILIZATION_NOBEL_PRIZE',	'P0K_TRAIT_PROJECT_PRODUCTION_BONUS'),
		('TRAIT_CIVILIZATION_NOBEL_PRIZE',	'P0K_TRAIT_AMENITY_DURING_PROJECT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: MINERVA OF THE NORTH (ENHANCEMENT)
--=============================================================================================================
-- +50% Production towards the first building in each specialty district. 
-- Bonuses from these buildings are doubled.
--=============================================================================================================
-- Preparation
---------------------------------------------------------------------------------------------------------------
CREATE TEMPORARY TABLE "p0kMinervaData"(
	"BuildingType" TEXT NOT NULL,
	"YieldType" TEXT NOT NULL,
	"YieldChange" INTEGER NOT NULL
);

INSERT INTO p0kMinervaData			
		(BuildingType,				YieldType,				YieldChange)
SELECT	BuildingType,				YieldType,				YieldChange
FROM Building_YieldChanges WHERE BuildingType IN(
	SELECT BuildingType FROM Buildings WHERE PrereqDistrict IN ('DISTRICT_CAMPUS', 'DISTRICT_THEATER', 'DISTRICT_HOLY_SITE', 'DISTRICT_ENCAMPMENT',	'DISTRICT_INDUSTRIAL_ZONE',	'DISTRICT_HARBOR', 'DISTRICT_COMMERCIAL_HUB')
	AND BuildingType NOT IN (SELECT Building FROM BuildingPrereqs UNION SELECT CivUniqueBuildingType FROM BuildingReplaces)
);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
				(RequirementId,										RequirementType)
SELECT DISTINCT 'P0K_SWEDEN_REQUIRES_MINERVA_HAS_' ||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
				(RequirementId,										Name,			Value)
SELECT DISTINCT	'P0K_SWEDEN_REQUIRES_MINERVA_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
				(RequirementSetId,							RequirementSetType)
SELECT DISTINCT 'P0K_SWEDEN_MINERVA_HAS_' ||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
				(RequirementSetId,							RequirementId)
SELECT DISTINCT 'P0K_SWEDEN_MINERVA_HAS_' ||BuildingType,	'P0K_SWEDEN_REQUIRES_MINERVA_HAS_' ||BuildingType
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT DISTINCT	'P0K_TRAIT_MINERVA_' ||BuildingType,				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'
FROM p0kMinervaData;

INSERT INTO Modifiers	
		(ModifierId,											ModifierType,										SubjectRequirementSetId)
SELECT	'P0K_TRAIT_MINERVA_' ||BuildingType || '_' ||YieldType,	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'P0K_SWEDEN_MINERVA_HAS_' ||BuildingType
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_MINERVA_' ||BuildingType,				'Amount',		50
FROM p0kMinervaData;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_MINERVA_' ||BuildingType,				'BuildingType',	BuildingType
FROM p0kMinervaData;

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_MINERVA_' ||BuildingType || '_' ||YieldType,	'YieldType',	YieldType
FROM p0kMinervaData;

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_MINERVA_' ||BuildingType || '_' ||YieldType,	'Amount',		YieldChange
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
SELECT DISTINCT 'TRAIT_LEADER_KRISTINA_AUTO_THEME', 'P0K_TRAIT_MINERVA_' ||BuildingType
FROM p0kMinervaData;

INSERT INTO TraitModifiers			
		(TraitType,							ModifierId)
SELECT 'TRAIT_LEADER_KRISTINA_AUTO_THEME', 	'P0K_TRAIT_MINERVA_' ||BuildingType || '_' ||YieldType
FROM p0kMinervaData;
---------------------------------------------------------------------------------------------------------------
-- Cleanup
---------------------------------------------------------------------------------------------------------------
DROP Table p0kMinervaData;
--=============================================================================================================
-- LEADER UNIQUE BUILDING: QUEEN'S BIBLIOTHEQUE
--=============================================================================================================
-- +2 Amenities and 2+ Housing.
-- Grants one extra Wildcard policy slot in any Government.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET Housing = 2, Entertainment = 2 WHERE BuildingType = 'BUILDING_QUEENS_BIBLIOTHEQUE';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType)
VALUES	('P0K_QUEENS_BIBLOTHEQUE_WILDCARD_SLOT',	'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,					Value)
VALUES	('P0K_QUEENS_BIBLOTHEQUE_WILDCARD_SLOT',	'GovernmentSlotType',	'SLOT_WILDCARD');
--------------------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
			(BuildingType,						ModifierId)
VALUES		('BUILDING_QUEENS_BIBLIOTHEQUE',	'P0K_QUEENS_BIBLOTHEQUE_WILDCARD_SLOT');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: OPEN-AIR MUSEUM (ENHANCEMENT)
--=============================================================================================================
-- Provides +1 Amenity instead of +2 Loyalty.
-- +1 Gold for each unique terrain.
-- Allow it to be built on Oases, Marsh, and Volcanic Soil.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)
VALUES	('P0K_OPEN_AIR_MUSEUM_GOLD_FOR_TERRAIN_CLASS_CITIES',	'MODIFIER_SINGLE_CITY_ADJUST_YIELD_FOR_TERRAIN_CLASS_CITIES_IMPROVEMENT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('P0K_OPEN_AIR_MUSEUM_GOLD_FOR_TERRAIN_CLASS_CITIES',	'ImprovementType',	'IMPROVEMENT_OPEN_AIR_MUSEUM'),
		('P0K_OPEN_AIR_MUSEUM_GOLD_FOR_TERRAIN_CLASS_CITIES',	'YieldType',		'YIELD_GOLD'),
		('P0K_OPEN_AIR_MUSEUM_GOLD_FOR_TERRAIN_CLASS_CITIES',	'Amount',			1);
---------------------------------------------------------------------------------------------------------------
-- ImprovementModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM ImprovementModifiers WHERE ImprovementType = 'IMPROVEMENT_OPEN_AIR_MUSEUM' AND ModifierID = 'OPEN_AIR_MUSEUM_LOYALTY';

INSERT INTO ImprovementModifiers
		(ImprovementType,				ModifierID)
VALUES	('IMPROVEMENT_OPEN_AIR_MUSEUM',	'GOLFCOURSE_AMENITY'),
		('IMPROVEMENT_OPEN_AIR_MUSEUM',	'P0K_OPEN_AIR_MUSEUM_GOLD_FOR_TERRAIN_CLASS_CITIES');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,				FeatureType)
VALUES	('IMPROVEMENT_OPEN_AIR_MUSEUM',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_OPEN_AIR_MUSEUM',	'FEATURE_OASIS'),
		('IMPROVEMENT_OPEN_AIR_MUSEUM',	'FEATURE_MARSH');