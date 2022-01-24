/* 
	Civilizations Expanded: Macedon
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: HELLENISTIC FUSION (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Bronze Working technology unlocked.
-- +25% Production towards Encampments and their buildings.
-- Upgrading military units costs 50% less Gold and uses 50% fewer resources. 
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)						
VALUES	('P0K_TRAIT_FREE_BRONZE_WORKING',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION'),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BUILDING_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'),
		('P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_GOLD_DISCOUNT',		'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_DISCOUNT_PERCENT'),
		('P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_RESOUCE_DISCOUNT',	'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_RESOURCE_COST_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_FREE_BRONZE_WORKING',						'TechType',		'TECH_BRONZE_WORKING'),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BOOST',			'DistrictType',	'DISTRICT_ENCAMPMENT'),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BOOST',			'Amount',		25),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BUILDING_BOOST',	'DistrictType',	'DISTRICT_ENCAMPMENT'),
		('P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BUILDING_BOOST',	'Amount',		25),
		('P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_GOLD_DISCOUNT',		'Amount',		50),
		('P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_RESOUCE_DISCOUNT',	'Amount',		50);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_HELLENISTIC_FUSION',	'P0K_TRAIT_FREE_BRONZE_WORKING'),
		('TRAIT_CIVILIZATION_HELLENISTIC_FUSION',	'P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BOOST'),
		('TRAIT_CIVILIZATION_HELLENISTIC_FUSION',	'P0K_TRAIT_ARGEAD_LEGACY_ENCAMPMENT_BUILDING_BOOST'),
		('TRAIT_CIVILIZATION_HELLENISTIC_FUSION',	'P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_GOLD_DISCOUNT'),
		('TRAIT_CIVILIZATION_HELLENISTIC_FUSION',	'P0K_TRAIT_ARGEAD_LEGACY_UPGRADE_RESOUCE_DISCOUNT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: TO THE WORLD'S END (REWORK)
--=============================================================================================================
-- +100% Great General points.
-- Units receive +1 Movement outside of Macedonian territory.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,												Kind)
VALUES	('P0K_MACEDON_ABILITY_TO_WORLDS_END',				'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_MACEDON_ABILITY_TO_WORLDS_END',	'CLASS_ALL_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,											Inactive)
VALUES	('P0K_MACEDON_ABILITY_TO_WORLDS_END',	'LOC_P0K_MACEDON_ABILITY_TO_WORLDS_END_NAME',	'LOC_P0K_MACEDON_ABILITY_TO_WORLDS_END_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_WORLDS_END_ABILITY_EXTRA_MOVEMENT',		'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'),	
		('P0K_TRAIT_WORLDS_END_MOVEMENT_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					NULL),
		('P0K_TRAIT_WORLDS_END_DOUBLE_GENERAL_POINTS',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('P0K_WORLDS_END_ABILITY_EXTRA_MOVEMENT',		'Amount',				1),
		('P0K_TRAIT_WORLDS_END_MOVEMENT_ABILITY',		'AbilityType',			'P0K_MACEDON_ABILITY_TO_WORLDS_END'),
		('P0K_TRAIT_WORLDS_END_DOUBLE_GENERAL_POINTS',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'),
		('P0K_TRAIT_WORLDS_END_DOUBLE_GENERAL_POINTS',	'Amount',				100);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('P0K_MACEDON_ABILITY_TO_WORLDS_END',	'P0K_WORLDS_END_ABILITY_EXTRA_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_TO_WORLDS_END',	'P0K_TRAIT_WORLDS_END_MOVEMENT_ABILITY'),
		('TRAIT_LEADER_TO_WORLDS_END',	'P0K_TRAIT_WORLDS_END_DOUBLE_GENERAL_POINTS');
--=============================================================================================================
-- UNIQUE BUILDING: BASILIKOI PAIDES (ENHANCEMENT)
--=============================================================================================================
-- +1 Housing and +1 Amenity.
-- Fix bug causing Basilikoi to not receive the Barracks XP modifier.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE	Buildings 
SET		Housing = Housing + 1, Entertainment = Entertainment + 1 
WHERE	BuildingType = 'BUILDING_BASILIKOI_PAIDES';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE	Modifiers
SET		ModifierType = 'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER'
WHERE	ModifierId = 'BASILIKOI_TRAINED_UNIT_XP'
AND		ModifierType = 'MODIFIER_CITY_TRAINED_UNITS_ADJUST_XP_BONUS';