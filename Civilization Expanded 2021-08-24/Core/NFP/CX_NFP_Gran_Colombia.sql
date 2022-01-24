/* 
	Civilizations Expanded: Gran Colombia
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: CONGRESS OF CUCUTA (REWORK)
--=============================================================================================================
-- When in a Dark Age or Normal Age, Citizens exert Loyalty pressure as if in a Golden Age.
-- +20% Production towards districts and buildings when in a Golden Age.
-- +1 Science, +1 Culture, +1 Faith, +1 Food, +1 Production, and +1 Gold from the Government Plaza and each of its buildings. 
-- +1 Culture and +1 Gold from each Envoy sent to a City-State.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType,						Inverse)
VALUES	('P0K_COLOMBIA_REQUIRES_PLAYER_HAS_NOT_DARK_AGE',	'REQUIREMENT_PLAYER_HAS_DARK_AGE',		1),	-- No argument
		('P0K_COLOMBIA_REQUIRES_PLAYER_HAS_NOT_GOLDEN_AGE',	'REQUIREMENT_PLAYER_HAS_GOLDEN_AGE',	1);	-- No argument
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_COLOMBIA_PLAYER_HAS_NORMAL_AGE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_COLOMBIA_PLAYER_HAS_NORMAL_AGE',	'P0K_COLOMBIA_REQUIRES_PLAYER_HAS_NOT_DARK_AGE'),
		('P0K_COLOMBIA_PLAYER_HAS_NORMAL_AGE',	'P0K_COLOMBIA_REQUIRES_PLAYER_HAS_NOT_GOLDEN_AGE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,													SubjectRequirementSetId)									
VALUES	('P0K_TRAIT_DARK_AGE_EXTRA_LOYALTY',				'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_CITIZEN',			'PLAYER_HAS_DARK_AGE'),
		('P0K_TRAIT_NORMAL_AGE_EXTRA_LOYALTY',				'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_CITIZEN',			'P0K_COLOMBIA_PLAYER_HAS_NORMAL_AGE'),
		('P0K_TRAIT_GOLDEN_AGE_DISTRICT_PRODUCTION',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',	'PLAYER_HAS_GOLDEN_AGE'),
		('P0K_TRAIT_GOLDEN_AGE_BUILDING_PRODUCTION',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',	'PLAYER_HAS_GOLDEN_AGE'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_ALL_YIELDS',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE',			'CITY_HAS_GOV_DISTRICT'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_ALL_YIELDS',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE',			'BUILDING_IS_TIER1'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_ALL_YIELDS',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE',			'BUILDING_IS_TIER2'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_ALL_YIELDS',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE',			'BUILDING_IS_TIER3'),
		('P0K_TRAIT_CULTURE_FROM_ENVOYS',					'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_USED_INFLUENCE_TOKEN',	NULL),	
		('P0K_TRAIT_GOLD_FROM_ENVOYS',						'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_USED_INFLUENCE_TOKEN',	NULL);	
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_DARK_AGE_EXTRA_LOYALTY',				'Amount',		1.0),
		('P0K_TRAIT_NORMAL_AGE_EXTRA_LOYALTY',				'Amount',		0.5),
		('P0K_TRAIT_GOLDEN_AGE_DISTRICT_PRODUCTION',		'Amount',		20),
		('P0K_TRAIT_GOLDEN_AGE_BUILDING_PRODUCTION',		'Amount',		20),
		('P0K_TRAIT_GOLDEN_AGE_BUILDING_PRODUCTION',		'IsWonder',		0),
		('P0K_TRAIT_GOVERNMENT_PLAZA_ALL_YIELDS',			'Amount',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_ALL_YIELDS',	'Amount',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_ALL_YIELDS',	'Amount',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_ALL_YIELDS',	'Amount',		1),
		('P0K_TRAIT_CULTURE_FROM_ENVOYS',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_FROM_ENVOYS',					'Amount',		1),
		('P0K_TRAIT_GOLD_FROM_ENVOYS',						'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_FROM_ENVOYS',						'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_EJERCITO_PATRIOTA' AND ModifierId IN
('TRAIT_EJERCITO_PATRIOTA_EXTRA_MOVEMENT', 'TRAIT_PROMOTE_NO_FINISH_MOVES');

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_DARK_AGE_EXTRA_LOYALTY'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_NORMAL_AGE_EXTRA_LOYALTY'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOLDEN_AGE_DISTRICT_PRODUCTION'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOLDEN_AGE_BUILDING_PRODUCTION'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOVERNMENT_PLAZA_ALL_YIELDS'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_ALL_YIELDS'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_ALL_YIELDS'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_ALL_YIELDS'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_CULTURE_FROM_ENVOYS'),
		('TRAIT_CIVILIZATION_EJERCITO_PATRIOTA',	'P0K_TRAIT_GOLD_FROM_ENVOYS');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: PATRIA GRANDE (REWORK)
--=============================================================================================================
-- All units receive +1 Movement on Gran Colombia's home continent. 
-- Activating a unit Promotion does not end that unit's turn. 
-- Receive two free Envoys upon unlocking a Diplomatic policy card. 
-- Entering a new Era grants a free Libertador, a unique type of Great Person. 
-- Gain access to the Liberation War casus belli after unlocking the Political Philosophy civic
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_COLOMBIA_PATRIA_GRANDE_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_COLOMBIA_PATRIA_GRANDE_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_AT_LEAST_NO_CITY'),
		('P0K_COLOMBIA_PATRIA_GRANDE_REQUIREMENTS',	'REQUIRES_UNIT_ON_HOME_CONTINENT');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
SELECT  'P0K_COLOMBIA_REQUIRES_PLAYER_HAS_' ||PolicyType,	'REQUIREMENT_PLAYER_HAS_CIVIC'
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
SELECT 	'P0K_COLOMBIA_REQUIRES_PLAYER_HAS_' ||PolicyType,	'CivicType',	PrereqCivic
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
SELECT 	'P0K_COLOMBIA_PLAYER_HAS_' ||PolicyType,	'REQUIREMENTSET_TEST_ALL'
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'P0K_COLOMBIA_PLAYER_HAS_' ||PolicyType,	'P0K_COLOMBIA_REQUIRES_PLAYER_HAS_' ||PolicyType
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_COLOMBIA_PATRIA_GRANDE_REQUIREMENTS'
WHERE ModifierId = 'EJERCITO_PATRIOTA_EXTRA_MOVEMENT';

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
SELECT	'P0K_TRAIT_' ||PolicyType|| '_ENVOY',	'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	1,			1,			'P0K_COLOMBIA_PLAYER_HAS_' ||PolicyType
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';

INSERT INTO Modifiers
		(ModifierId,									ModifierType)				
VALUES	('P0K_TRAIT_LIBERATION_WAR_PREREQ_OVERRIDE',	'MODIFIER_PLAYER_ADD_DIPLOMATIC_ACTION_OVERRIDE');	
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,		Value)
SELECT	'P0K_TRAIT_' ||PolicyType|| '_ENVOY',	'Amount',	2
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';

INSERT INTO ModifierArguments
		(ModifierId,									Name,				Value)
VALUES	('P0K_TRAIT_LIBERATION_WAR_PREREQ_OVERRIDE',	'DiplomaticAction',	'DIPLOACTION_DECLARE_LIBERATION_WAR'),
		('P0K_TRAIT_LIBERATION_WAR_PREREQ_OVERRIDE',	'CivicType',		'CIVIC_POLITICAL_PHILOSOPHY');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_CAMPANA_ADMIRABLE',	'P0K_TRAIT_' ||PolicyType|| '_ENVOY'
FROM Policies WHERE GovernmentSlotType = 'SLOT_DIPLOMATIC';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_CAMPANA_ADMIRABLE',	'TRAIT_EJERCITO_PATRIOTA_EXTRA_MOVEMENT'),
		('TRAIT_LEADER_CAMPANA_ADMIRABLE',	'TRAIT_PROMOTE_NO_FINISH_MOVES'),
		('TRAIT_LEADER_CAMPANA_ADMIRABLE',	'P0K_TRAIT_LIBERATION_WAR_PREREQ_OVERRIDE');
--=============================================================================================================
-- LEADER UNIQUE UNIT: LIBERTADOR (ENHANCEMENT)
--=============================================================================================================
-- Add 8 more Libertadores.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1',	'KIND_GREAT_PERSON_INDIVIDUAL'), 
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'KIND_GREAT_PERSON_INDIVIDUAL'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9',	'KIND_GREAT_PERSON_INDIVIDUAL');
---------------------------------------------------------------------------------------------------------------
-- GreatPersonIndividuals
---------------------------------------------------------------------------------------------------------------
DELETE FROM GreatPersonIndividuals WHERE GreatPersonClassType = 'GREAT_PERSON_CLASS_COMANDANTE_GENERAL';

INSERT INTO GreatPersonIndividuals
		(GreatPersonIndividualType,						Name,													GreatPersonClassType,						EraType,		ActionCharges,	ActionRequiresOwnedTile,	ActionRequiresUnownedTile,	ActionRequiresAdjacentOwnedTile,	ActionRequiresAdjacentBarbarianUnit,	ActionNameTextOverride,				ActionEffectTileHighlighting,	AreaHighlightRadius,	Gender)	
VALUES	('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Random Tech
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Random Civic
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Free Envoys
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Wildcard Policy
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Spies
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Builders
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	1,				0,							0,							0,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	0,								2,						'M'),	-- Settler
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	3,				0,							1,							1,									0,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	1,								NULL,					'M'),	-- Claim 3 tiles
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9',	'LOC_P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9_NAME',	'GREAT_PERSON_CLASS_COMANDANTE_GENERAL',	'ERA_ANCIENT',	2,				0,							0,							0,									1,										'LOC_P0K_LIBERTADOR_ACTION_NAME',	1,								2,						'M');	-- Convert adjacent barbarians
---------------------------------------------------------------------------------------------------------------
-- GreatPersonIndividualBirthModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO GreatPersonIndividualBirthModifiers
		(GreatPersonIndividualType,						ModifierId)
VALUES	('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9',	'GREATPERSON_COMANDANTE_MOVEMENT_AOE_LAND'),
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9',	'GREATPERSON_COMANDANTE_STRENGTH_AOE_LAND');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,												RunOnce,	Permanent)
VALUES	('P0K_LIBERTADOR_RANDOM_TECH',		'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY',					1,			1),
		('P0K_LIBERTADOR_RANDOM_CIVIC',		'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC',						1,			1),
		('P0K_LIBERTADOR_FREE_ENVOYS',		'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',					1,			1),
		('P0K_LIBERTADOR_WILDCARD_SLOT',	'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',	1,			1),
		('P0K_LIBERTADOR_SPY_CAPACITY',		'MODIFIER_PLAYER_GRANT_SPY',								1,			1),
		('P0K_LIBERTADOR_FREE_SPY_UNIT',	'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			1,			1),
		('P0K_LIBERTADOR_FREE_BUILDERS',	'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			1,			1),
		('P0K_LIBERTADOR_FREE_SETTLER',		'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			1,			1);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,					Value)	
VALUES	('P0K_LIBERTADOR_RANDOM_TECH',		'Amount',				1),
		('P0K_LIBERTADOR_RANDOM_CIVIC',		'Amount',				1),
		('P0K_LIBERTADOR_FREE_ENVOYS',		'Amount',				3),
		('P0K_LIBERTADOR_WILDCARD_SLOT',	'GovernmentSlotType',	'SLOT_WILDCARD'),
		('P0K_LIBERTADOR_SPY_CAPACITY',		'Amount',				1),
		('P0K_LIBERTADOR_FREE_SPY_UNIT',	'UnitType',				'UNIT_SPY'),
		('P0K_LIBERTADOR_FREE_SPY_UNIT',	'Amount',				1),
		('P0K_LIBERTADOR_FREE_BUILDERS',	'UnitType',				'UNIT_BUILDER'),
		('P0K_LIBERTADOR_FREE_BUILDERS',	'Amount',				2),
		('P0K_LIBERTADOR_FREE_SETTLER',		'UnitType',				'UNIT_SETTLER'),
		('P0K_LIBERTADOR_FREE_SETTLER',		'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- ModifierStrings
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,						Context,	Text)
VALUES	('P0K_LIBERTADOR_RANDOM_TECH',		'Summary',	'LOC_P0K_LIBERTADOR_RANDOM_TECH'),
		('P0K_LIBERTADOR_RANDOM_CIVIC',		'Summary',	'LOC_P0K_LIBERTADOR_RANDOM_CIVIC'),
		('P0K_LIBERTADOR_FREE_ENVOYS',		'Summary',	'LOC_P0K_LIBERTADOR_FREE_ENVOYS'),
		('P0K_LIBERTADOR_WILDCARD_SLOT',	'Summary',	'LOC_P0K_LIBERTADOR_WILDCARD_SLOT'),
		('P0K_LIBERTADOR_SPY_CAPACITY',		'Summary',	'LOC_P0K_LIBERTADOR_SPY_CAPACITY'),
		('P0K_LIBERTADOR_FREE_BUILDERS',	'Summary',	'LOC_P0K_LIBERTADOR_FREE_BUILDERS'),
		('P0K_LIBERTADOR_FREE_SETTLER',		'Summary',	'LOC_P0K_LIBERTADOR_FREE_SETTLER');
---------------------------------------------------------------------------------------------------------------
-- GreatPersonIndividualActionModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO GreatPersonIndividualActionModifiers
		(GreatPersonIndividualType,						ModifierId,						AttachmentTargetType)
VALUES	('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_1',	'P0K_LIBERTADOR_RANDOM_TECH',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),			-- Random Tech
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_2',	'P0K_LIBERTADOR_RANDOM_CIVIC',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),			-- Random Civic
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_3',	'P0K_LIBERTADOR_FREE_ENVOYS',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),			-- Free Envoys
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_4',	'P0K_LIBERTADOR_WILDCARD_SLOT',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),			-- Wildcard Policy
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'P0K_LIBERTADOR_SPY_CAPACITY',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),			-- Spy capacity
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_5',	'P0K_LIBERTADOR_FREE_SPY_UNIT',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),	-- Spy unit
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_6',	'P0K_LIBERTADOR_FREE_BUILDERS',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),	-- Free Builders
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_7',	'P0K_LIBERTADOR_FREE_SETTLER',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),	-- Free Settler
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'GREATPERSON_GRANT_PLOT',		'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),	-- Claim tiles
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_8',	'GREATPERSON_GOLD_TINY',		'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),	-- Small amount of Gold
		('P0K_GREAT_PERSON_INDIVIDUAL_LIBERTADOR_9',	'GREATPERSON_BOUDICA_ACTIVE',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON');	-- Convert adjacent barbarians
--=============================================================================================================
-- UNIQUE IMPROVEMENT: FINCA (ENHANCEMENT)
--=============================================================================================================
-- Unlock at Guilds.
-- +1 Housing instead of +0.5.
-- Make the Food adjacencies active at Steam Power instead of Replaceable Parts.
-- Make the Production adjacencies active at Civil Engineering instead of Rapid Deployment.
-- Allow it to be built on Volcanic Soil, Marsh, and Oases.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET PrereqTech = NULL, PrereqCivic = 'CIVIC_GUILDS', TilesRequired = 1 WHERE ImprovementType = 'IMPROVEMENT_HACIENDA';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Adjacency_YieldChanges SET ObsoleteTech = 'TECH_STEAM_POWER'				
WHERE ID = 'Hacienda_PlantationAdjacency';

UPDATE Adjacency_YieldChanges SET PrereqTech = 'TECH_STEAM_POWER'				
WHERE ID = 'Hacienda_MechanizedPlantationAdjacency';

UPDATE Adjacency_YieldChanges SET ObsoleteCivic = 'CIVIC_CIVIL_ENGINEERING'		
WHERE ID = 'Hacienda_HaciendaAdjacency';

UPDATE Adjacency_YieldChanges SET PrereqCivic = 'CIVIC_CIVIL_ENGINEERING'		
WHERE ID = 'Hacienda_AdvancedHaciendaAdjacency';

UPDATE Adjacency_YieldChanges SET ObsoleteCivic = 'CIVIC_CIVIL_ENGINEERING'		
WHERE ID = 'Plantation_HaciendaAdjacency';

UPDATE Adjacency_YieldChanges SET PrereqCivic = 'CIVIC_CIVIL_ENGINEERING'		
WHERE ID = 'Plantation_AdvancedHaciendaAdjacency';
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_HACIENDA',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_HACIENDA',	'FEATURE_MARSH'),
		('IMPROVEMENT_HACIENDA',	'FEATURE_OASIS');