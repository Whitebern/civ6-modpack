/* 
	Civilizations Expanded: India (Chandragupta)
	Author: p0kiehl
*/
--=============================================================================================================
-- ARTHASHASTRA (REWORK)
--=============================================================================================================
-- +1 Culture and +1 Production from all districts.
-- Constructing buildings grants a burst of Culture equal to 15% of the Production cost.
-- Military units heal at the end of every turn when outside of Indian territory, even after moving or attacking.
-- Gain access to the War of Territorial Expansion cassus belli unlocking the Military Training civic. 
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('P0K_INDIA_ABILITY_ARTHASHASTRA',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('P0K_INDIA_ABILITY_ARTHASHASTRA', 'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description,										Inactive)
VALUES	('P0K_INDIA_ABILITY_ARTHASHASTRA',	'LOC_P0K_INDIA_ABILITY_ARTHASHASTRA_NAME',	'LOC_P0K_INDIA_ABILITY_ARTHASHASTRA_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											SubjectRequirementSetId)														
VALUES	('P0K_TRAIT_CULTURE_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',		NULL),
		('P0K_TRAIT_PRODUCTION_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',		NULL),
		('P0K_TRAIT_CULTURE_PER_COMPLETED_BUILDING',	'MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_BUILDING_COST',	NULL),
		('P0K_ABILITY_ARTHASHASTRA_HEALING',			'MODIFIER_PLAYER_UNIT_GRANT_HEAL_AFTER_ACTION',			'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'), -- no argument
		('P0K_TRAIT_GRANT_ARTHASHASTRA_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,							Value)
VALUES	('P0K_TRAIT_CULTURE_FROM_DISTRICTS',			'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_FROM_DISTRICTS',			'Amount',						1),
		('P0K_TRAIT_PRODUCTION_FROM_DISTRICTS',			'YieldType',					'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_FROM_DISTRICTS',			'Amount',						1),
		('P0K_TRAIT_CULTURE_PER_COMPLETED_BUILDING',	'YieldType',					'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_PER_COMPLETED_BUILDING',	'BuildingProductionPercent',	15),
		('P0K_TRAIT_CULTURE_PER_COMPLETED_BUILDING',	'IncludeWonder',				0),
		('P0K_TRAIT_GRANT_ARTHASHASTRA_ABILITY',		'AbilityType',					'P0K_INDIA_ABILITY_ARTHASHASTRA');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('P0K_INDIA_ABILITY_ARTHASHASTRA',	'P0K_ABILITY_ARTHASHASTRA_HEALING');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_ARTHASHASTRA' AND ModifierId IN -- keep "territorial war prereq override" modifier
('TRAIT_TERRITORIAL_WAR_COMBAT', 'TRAIT_TERRITORIAL_WAR_MOVEMENT');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_ARTHASHASTRA',	'P0K_TRAIT_CULTURE_FROM_DISTRICTS'),
		('TRAIT_LEADER_ARTHASHASTRA',	'P0K_TRAIT_PRODUCTION_FROM_DISTRICTS'),
		('TRAIT_LEADER_ARTHASHASTRA',	'P0K_TRAIT_CULTURE_PER_COMPLETED_BUILDING'),
		('TRAIT_LEADER_ARTHASHASTRA',	'P0K_TRAIT_GRANT_ARTHASHASTRA_ABILITY');