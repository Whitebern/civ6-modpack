/* 
	Civilizations Expanded: Germany
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: HANSEATIC LEAGUE (ENHANCEMENT)
--=============================================================================================================
-- Trade Routes to German cities gain +1 Food, +1 Production, and +1 Gold for each specialty district in the destination city.
-- +25% Production towards Universities, Factories, and Banks.
-- Universities, Factories, and Banks provide double yields.
-- These buildings also each grant +1 Amenity.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_MODIFIER_SINGLE_CITY_ADD_POPULATION',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,								CollectionType,		EffectType)
VALUES	('P0K_MODIFIER_SINGLE_CITY_ADD_POPULATION',	'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_POPULATION');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_GERMANY_REQUIRES_CITY_HAS_UNIVERSITY',	'REQUIREMENT_CITY_HAS_BUILDING'),
		('P0K_GERMANY_REQUIRES_CITY_HAS_BANK',			'REQUIREMENT_CITY_HAS_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value)
VALUES	('P0K_GERMANY_REQUIRES_CITY_HAS_UNIVERSITY',	'BuildingType',		'BUILDING_UNIVERSITY'),
		('P0K_GERMANY_REQUIRES_CITY_HAS_BANK',			'BuildingType',		'BUILDING_BANK');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_GERMANY_CITY_HAS_UNIVERSITY',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_GERMANY_CITY_HAS_BANK',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_GERMANY_CITY_HAS_UNIVERSITY',	'P0K_GERMANY_REQUIRES_CITY_HAS_UNIVERSITY'),
		('P0K_GERMANY_CITY_HAS_BANK',		'P0K_GERMANY_REQUIRES_CITY_HAS_BANK');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,																	SubjectRequirementSetId)												
VALUES	('P0K_GERMANY_TRADE_ROUTE_FOOD_PER_DISTRICT_DOMESTIC',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC',	NULL),
		('P0K_GERMANY_TRADE_ROUTE_PRODUCTION_PER_DISTRICT_DOMESTIC',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC',	NULL),
		('P0K_GERMANY_TRADE_ROUTE_GOLD_PER_DISTRICT_DOMESTIC',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC',	NULL),
		('P0K_TRAIT_UNIVERSITY_ADJUST_PRODUCTION',						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',							NULL),
		('P0K_TRAIT_FACTORY_ADJUST_PRODUCTION',							'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',							NULL),
		('P0K_TRAIT_BANK_ADJUST_PRODUCTION',							'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',							NULL),		
		('P0K_TRAIT_UNIVERSITY_SCIENCE_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',								'P0K_GERMANY_CITY_HAS_UNIVERSITY'),
		('P0K_TRAIT_FACTORY_PRODUCTION_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',								'BUILDING_IS_FACTORY'),
		('P0K_TRAIT_BANK_GOLD_BOOST',									'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',								'P0K_GERMANY_CITY_HAS_BANK'),
		('P0K_TRAIT_UNIVERSITY_AMENITY',								'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',									'P0K_GERMANY_CITY_HAS_UNIVERSITY'),
		('P0K_TRAIT_FACTORY_AMENITY',									'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',									'BUILDING_IS_FACTORY'),
		('P0K_TRAIT_BANK_AMENITY',										'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',									'P0K_GERMANY_CITY_HAS_BANK');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value)
VALUES	('P0K_GERMANY_TRADE_ROUTE_FOOD_PER_DISTRICT_DOMESTIC',			'YieldType',	'YIELD_FOOD'),
		('P0K_GERMANY_TRADE_ROUTE_FOOD_PER_DISTRICT_DOMESTIC',			'Amount',		1),
		('P0K_GERMANY_TRADE_ROUTE_PRODUCTION_PER_DISTRICT_DOMESTIC',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_GERMANY_TRADE_ROUTE_PRODUCTION_PER_DISTRICT_DOMESTIC',	'Amount',		1),
		('P0K_GERMANY_TRADE_ROUTE_GOLD_PER_DISTRICT_DOMESTIC',			'YieldType',	'YIELD_GOLD'),
		('P0K_GERMANY_TRADE_ROUTE_GOLD_PER_DISTRICT_DOMESTIC',			'Amount',		1),
		('P0K_TRAIT_UNIVERSITY_ADJUST_PRODUCTION',						'BuildingType',	'BUILDING_UNIVERSITY'),
		('P0K_TRAIT_UNIVERSITY_ADJUST_PRODUCTION',						'Amount',		25),
		('P0K_TRAIT_FACTORY_ADJUST_PRODUCTION',							'BuildingType',	'BUILDING_FACTORY'),
		('P0K_TRAIT_FACTORY_ADJUST_PRODUCTION',							'Amount',		25),
		('P0K_TRAIT_BANK_ADJUST_PRODUCTION',							'BuildingType',	'BUILDING_BANK'),
		('P0K_TRAIT_BANK_ADJUST_PRODUCTION',							'Amount',		25),	
		('P0K_TRAIT_UNIVERSITY_SCIENCE_BOOST',							'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_UNIVERSITY_SCIENCE_BOOST',							'Amount',		4),
		('P0K_TRAIT_FACTORY_PRODUCTION_BOOST',							'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_FACTORY_PRODUCTION_BOOST',							'Amount',		3),
		('P0K_TRAIT_BANK_GOLD_BOOST',									'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_BANK_GOLD_BOOST',									'Amount',		5),
		('P0K_TRAIT_UNIVERSITY_AMENITY',								'Amount',		1),
		('P0K_TRAIT_FACTORY_AMENITY',									'Amount',		1),
		('P0K_TRAIT_BANK_AMENITY',										'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_GERMANY_TRADE_ROUTE_FOOD_PER_DISTRICT_DOMESTIC'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_GERMANY_TRADE_ROUTE_PRODUCTION_PER_DISTRICT_DOMESTIC'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_GERMANY_TRADE_ROUTE_GOLD_PER_DISTRICT_DOMESTIC'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_UNIVERSITY_ADJUST_PRODUCTION'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_FACTORY_ADJUST_PRODUCTION'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_BANK_ADJUST_PRODUCTION'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_UNIVERSITY_SCIENCE_BOOST'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_FACTORY_PRODUCTION_BOOST'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_BANK_GOLD_BOOST'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_UNIVERSITY_AMENITY'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_FACTORY_AMENITY'),
		('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES',	'P0K_TRAIT_BANK_AMENITY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: HOLY ROMAN EMPEROR (ENHANCEMENT)
--=============================================================================================================
-- +100% Production towards Encampments.
-- Encampment buildings provide +2 Culture and +2 Faith.
-- Land military unit combat victories against non-barbarian units grant Great General points equal to 25% of the Combat Strength of the defeated unit.
-- May purchase land military units with Faith.
-- (Add +7 Combat Strength against Free City units.)
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_ANTI_CAVALRY'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_HEAVY_CAVALRY'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_HEAVY_CHARIOT'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_LIGHT_CAVALRY'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_LIGHT_CHARIOT'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_MELEE'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_RANGED'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_RANGED_CAVALRY'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_RECON'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_SIEGE'),
		('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR', 'CLASS_WARRIOR_MONK');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR',	'LOC_P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR_NAME',	'LOC_P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType,					Inverse)
VALUES	('P0K_GERMANY_REQUIRES_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH',	'REQUIREMENT_PLAYER_HAS_BUILDING',	1), -- using this for a RequirementSet to avoid potential issues of overlapping with the Grand Master's Chapel
		('P0K_GERMANY_REQUIRES_FREE_CITY_OPPONENT',					'REQUIREMENT_CIVILIZATION_LEVEL',	0);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,				Value)
VALUES	('P0K_GERMANY_REQUIRES_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH',	'BuildingType',		'BUILDING_GOV_FAITH'),
		('P0K_GERMANY_REQUIRES_FREE_CITY_OPPONENT',					'OpponentCivLevel',	'CIVILIZATION_LEVEL_FREE_CITIES');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_GERMANY_BUILDING_IS_BARRACKS_OR_STABLE',		'REQUIREMENTSET_TEST_ANY'),
		('P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_GERMANY_OPPONENT_IS_CITY_STATE_OR_FREE_CIV',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('P0K_GERMANY_BUILDING_IS_BARRACKS_OR_STABLE',		'REQUIRES_CITY_HAS_BARRACKS'),
		('P0K_GERMANY_BUILDING_IS_BARRACKS_OR_STABLE',		'REQUIRES_CITY_HAS_STABLE'),
		('P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH',	'P0K_GERMANY_REQUIRES_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_GERMANY_OPPONENT_IS_CITY_STATE_OR_FREE_CIV',	'REQUIRES_OPPONENT_IS_MINOR_CIV'),
		('P0K_GERMANY_OPPONENT_IS_CITY_STATE_OR_FREE_CIV',	'P0K_GERMANY_REQUIRES_FREE_CITY_OPPONENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_GERMANY_OPPONENT_IS_CITY_STATE_OR_FREE_CIV' 
WHERE ModifierId = 'BARBAROSSA_COMBAT_BONUS_VS_CITY_STATES';

INSERT INTO Modifiers
		(ModifierId,								ModifierType,																		SubjectRequirementSetId)
VALUES	('P0K_HRE_ABILITY_GREAT_GENERAL_POINTS',	'MODIFIER_PLAYER_ADJUST_UNITS_GREAT_PEOPLE_POINTS_PER_KILL_BY_DEFEATED_STRENGTH',	NULL),
		('P0K_HRE_GRANT_ABILITY',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',												NULL),
		('P0K_HRE_ADJUST_ENCAMPMENT_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',								NULL),
		('P0K_HRE_CULTURE_FROM_BARRACKS_STABLE',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'P0K_GERMANY_BUILDING_IS_BARRACKS_OR_STABLE'),
		('P0K_HRE_CULTURE_FROM_ARMORY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'BUILDING_IS_ARMORY'),
		('P0K_HRE_CULTURE_FROM_MILITARY_ACADEMY',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'BUILDING_IS_MILITARY_ACADEMY'),
		('P0K_HRE_FAITH_FROM_BARRACKS_STABLE',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'P0K_GERMANY_BUILDING_IS_BARRACKS_OR_STABLE'),
		('P0K_HRE_FAITH_FROM_ARMORY',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'BUILDING_IS_ARMORY'),
		('P0K_HRE_FAITH_FROM_MILITARY_ACADEMY',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',									'BUILDING_IS_MILITARY_ACADEMY'),
		('P0K_HRE_FAITH_PURCHASE_ANTI_CAVALRY',		'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_HEAVY_CAVALRY',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_HEAVY_CHARIOT',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_LIGHT_CAVALRY',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_LIGHT_CHARIOT',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_MELEE',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_RANGED',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_RANGED_CAVALRY',	'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_RECON',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH'),
		('P0K_HRE_FAITH_PURCHASE_SIEGE',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE',								'P0K_GERMANY_PLAYER_NOT_HAVE_BUILDING_GOV_FAITH');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,					Value)		
VALUES	('P0K_HRE_ABILITY_GREAT_GENERAL_POINTS',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'),
		('P0K_HRE_ABILITY_GREAT_GENERAL_POINTS',	'Amount',				25),
		('P0K_HRE_GRANT_ABILITY',					'AbilityType',			'P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR'),
		('P0K_HRE_ADJUST_ENCAMPMENT_PRODUCTION',	'DistrictType',			'DISTRICT_ENCAMPMENT'),
		('P0K_HRE_ADJUST_ENCAMPMENT_PRODUCTION',	'Amount',				100),
		('P0K_HRE_CULTURE_FROM_BARRACKS_STABLE',	'YieldType',			'YIELD_CULTURE'),
		('P0K_HRE_CULTURE_FROM_BARRACKS_STABLE',	'Amount',				2),
		('P0K_HRE_CULTURE_FROM_ARMORY',				'YieldType',			'YIELD_CULTURE'),
		('P0K_HRE_CULTURE_FROM_ARMORY',				'Amount',				2),
		('P0K_HRE_CULTURE_FROM_MILITARY_ACADEMY',	'YieldType',			'YIELD_CULTURE'),
		('P0K_HRE_CULTURE_FROM_MILITARY_ACADEMY',	'Amount',				2),
		('P0K_HRE_FAITH_FROM_BARRACKS_STABLE',		'YieldType',			'YIELD_FAITH'),
		('P0K_HRE_FAITH_FROM_BARRACKS_STABLE',		'Amount',				2),
		('P0K_HRE_FAITH_FROM_ARMORY',				'YieldType',			'YIELD_FAITH'),
		('P0K_HRE_FAITH_FROM_ARMORY',				'Amount',				2),
		('P0K_HRE_FAITH_FROM_MILITARY_ACADEMY',		'YieldType',			'YIELD_FAITH'),
		('P0K_HRE_FAITH_FROM_MILITARY_ACADEMY',		'Amount',				2),
		('P0K_HRE_FAITH_PURCHASE_ANTI_CAVALRY',		'Tag',					'CLASS_ANTI_CAVALRY'),
		('P0K_HRE_FAITH_PURCHASE_HEAVY_CAVALRY',	'Tag',					'CLASS_HEAVY_CAVALRY'),
		('P0K_HRE_FAITH_PURCHASE_HEAVY_CHARIOT',	'Tag',					'CLASS_HEAVY_CHARIOT'),
		('P0K_HRE_FAITH_PURCHASE_LIGHT_CAVALRY',	'Tag',					'CLASS_LIGHT_CAVALRY'),
		('P0K_HRE_FAITH_PURCHASE_LIGHT_CHARIOT',	'Tag',					'CLASS_LIGHT_CHARIOT'),
		('P0K_HRE_FAITH_PURCHASE_MELEE',			'Tag',					'CLASS_MELEE'),
		('P0K_HRE_FAITH_PURCHASE_RANGED',			'Tag',					'CLASS_RANGED'),
		('P0K_HRE_FAITH_PURCHASE_RANGED_CAVALRY',	'Tag',					'CLASS_RANGED_CAVALRY'),
		('P0K_HRE_FAITH_PURCHASE_RECON',			'Tag',					'CLASS_RECON'),
		('P0K_HRE_FAITH_PURCHASE_SIEGE',			'Tag',					'CLASS_SIEGE');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_GERMANY_ABILITY_HOLY_ROMAN_EMPEROR',	'P0K_HRE_ABILITY_GREAT_GENERAL_POINTS');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_HOLY_ROMAN_EMPEROR' AND ModifierId = 'TRAIT_MILITARY_GOVERNMENT_SLOT';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_GRANT_ABILITY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_ADJUST_ENCAMPMENT_PRODUCTION'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_CULTURE_FROM_BARRACKS_STABLE'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_CULTURE_FROM_ARMORY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_CULTURE_FROM_MILITARY_ACADEMY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_FROM_BARRACKS_STABLE'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_FROM_ARMORY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_FROM_MILITARY_ACADEMY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_ANTI_CAVALRY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_HEAVY_CAVALRY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_HEAVY_CHARIOT'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_LIGHT_CAVALRY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_LIGHT_CHARIOT'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_MELEE'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_RANGED'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_RANGED_CAVALRY'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_RECON'),
		('TRAIT_LEADER_HOLY_ROMAN_EMPEROR',	'P0K_HRE_FAITH_PURCHASE_SIEGE');
--=============================================================================================================
-- UNIQUE DISTRICT: HANSA (ENHANCEMENT)
--=============================================================================================================
-- Grants +1 Trade Route capacity.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType)
VALUES	('P0K_HANSA_TRADE_ROUTE_CAPACITY',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,		Value)
VALUES	('P0K_HANSA_TRADE_ROUTE_CAPACITY',	'Amount',	1);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,		ModifierId)
VALUES	('DISTRICT_HANSA',	'P0K_HANSA_TRADE_ROUTE_CAPACITY');