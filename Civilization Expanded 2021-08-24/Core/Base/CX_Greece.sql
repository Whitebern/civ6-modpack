  /* 
	Civilizations Expanded: Greece
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: HIEROPHANY (REWORK)
--=============================================================================================================
-- Begin the game with three random Inspirations unlocked.
-- +25% Production towards Wonders in cities with no more than one specialty district.
-- Cities with a Wonder receive +2 Science, +2 Culture, +2 Gold, and +2 Faith.
-- Wonders exert +2 Loyalty to Greek cities within 9 tiles.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_GREECE_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',		'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,					EffectType)
VALUES	('P0K_GREECE_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ATTACH_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType,								Inverse)
VALUES	('P0K_GREECE_CITY_HAS_0_OR_1_SPECIALTY_DISTRICTS',	'REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS',	1);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,					Value)
VALUES	('P0K_GREECE_CITY_HAS_0_OR_1_SPECIALTY_DISTRICTS',	'Amount',				2),
		('P0K_GREECE_CITY_HAS_0_OR_1_SPECIALTY_DISTRICTS',	'MustBeFunctioning',	0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_GREECE_WONDER_PRODUCTION_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_GREECE_WONDER_PRODUCTION_REQUIREMENTS',	'P0K_GREECE_CITY_HAS_0_OR_1_SPECIALTY_DISTRICTS');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,													RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GREECE_FREE_INSPIRATIONS',				'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_BY_ERA',				1,			1,			NULL),
		('P0K_TRAIT_BOOST_WONDER_PRODUCTION_ONE_DISTRICT',	'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_PRODUCTION',				0,			0,			'P0K_GREECE_WONDER_PRODUCTION_REQUIREMENTS'),
		('P0K_TRAIT_WONDER_CITY_SCIENCE',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				0,			0,			'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_TRAIT_WONDER_CITY_CULTURE',					'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				0,			0,			'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_TRAIT_WONDER_CITY_GOLD',						'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				0,			0,			'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_TRAIT_WONDER_CITY_FAITH',						'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				0,			0,			'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_TRAIT_WONDER_LOYALTY',						'MODIFIER_PLAYER_ADJUST_IDENTITY_PER_TURN_FROM_NEARBY_WONDERS',	0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments	
		(ModifierId,										Name,				Value)
VALUES	('P0K_TRAIT_GREECE_FREE_INSPIRATIONS',				'StartEraType',		'ERA_ANCIENT'),
		('P0K_TRAIT_GREECE_FREE_INSPIRATIONS',				'EndEraType',		'ERA_CLASSICAL'),
		('P0K_TRAIT_GREECE_FREE_INSPIRATIONS',				'Amount',			3),
		('P0K_TRAIT_BOOST_WONDER_PRODUCTION_ONE_DISTRICT',	'Amount',			25),
		('P0K_TRAIT_WONDER_CITY_SCIENCE',					'YieldType',		'YIELD_SCIENCE'),
		('P0K_TRAIT_WONDER_CITY_SCIENCE',					'Amount',			2),
		('P0K_TRAIT_WONDER_CITY_CULTURE',					'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_WONDER_CITY_CULTURE',					'Amount',			2),
		('P0K_TRAIT_WONDER_CITY_GOLD',						'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_WONDER_CITY_GOLD',						'Amount',			2),
		('P0K_TRAIT_WONDER_CITY_FAITH',						'YieldType',		'YIELD_FAITH'),
		('P0K_TRAIT_WONDER_CITY_FAITH',						'Amount',			2),
		('P0K_TRAIT_WONDER_LOYALTY',						'ForeignCities',	1),
		('P0K_TRAIT_WONDER_LOYALTY',						'Amount',			2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_PLATOS_REPUBLIC'
AND ModifierId = 'TRAIT_WILDCARD_GOVERNMENT_SLOT';

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_GREECE_FREE_INSPIRATIONS'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_BOOST_WONDER_PRODUCTION_ONE_DISTRICT'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_WONDER_CITY_SCIENCE'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_WONDER_CITY_CULTURE'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_WONDER_CITY_GOLD'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_WONDER_CITY_FAITH'),
		('TRAIT_CIVILIZATION_PLATOS_REPUBLIC',	'P0K_TRAIT_WONDER_LOYALTY');
--=============================================================================================================
-- GORGO LEADER UNIQUE ABILITY: AGOGE (ENHANCEMENT)
--=============================================================================================================
-- Receive one extra Military policy slot in any Government.
-- +3 Amenities and +1 Housing in the Capital.
-- +50% Production towards military units in the Capital. 
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																Kind)
VALUES	('MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_MILITARY_UNITS_PRODUCTION',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,														CollectionType,						EffectType)
VALUES	('MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_MILITARY_UNITS_PRODUCTION',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_ALL_MILITARY_UNITS_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,														SubjectRequirementSetId)
VALUES	('P0K_TRAIT_SPARTA_CAPITAL_AMENITIES',						'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_ENTERTAINMENT',			NULL),
		('P0K_TRAIT_SPARTA_CAPITAL_HOUSING',						'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_HOUSING',				NULL),
		('P0K_TRAIT_SPARTA_CAPITAL_MILITARY_UNIT_PRODUCTION',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_MILITARY_UNITS_PRODUCTION',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments	
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_SPARTA_CAPITAL_AMENITIES',						'Amount',		3),
		('P0K_TRAIT_SPARTA_CAPITAL_HOUSING',						'Amount',		1),
		('P0K_TRAIT_SPARTA_CAPITAL_MILITARY_UNIT_PRODUCTION',		'Amount',		50);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('CULTURE_KILLS_TRAIT',	'TRAIT_MILITARY_GOVERNMENT_SLOT'), -- from Germany
		('CULTURE_KILLS_TRAIT',	'P0K_TRAIT_SPARTA_CAPITAL_AMENITIES'),
		('CULTURE_KILLS_TRAIT',	'P0K_TRAIT_SPARTA_CAPITAL_HOUSING'),
		('CULTURE_KILLS_TRAIT',	'P0K_TRAIT_SPARTA_CAPITAL_MILITARY_UNIT_PRODUCTION');
--=============================================================================================================
-- PERICLES LEADER UNIQUE ABILITY: DELIAN LEAGUE (ENHANCEMENT)
--=============================================================================================================
-- Receive one extra Wildcard policy slot in any Government. (Moved from old Civ UA)
-- +5% Gold per City-State tributary.
-- +25% Production towards Harbors and their buildings.
-- Harbors buildings provide +1 Housing, +1 Food, and +1 Production.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOLD_PER_CITY_STATE_TRIBUTARY',				'MODIFIER_PLAYER_ADJUST_YIELD_MODIFIER_PER_TRIBUTARY',	NULL),
		('P0K_DELIAN_LEAGUE_HARBOR_PRODUCTION_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL),
		('P0K_DELIAN_LEAGUE_HARBOR_BUILDING_PRODUCTION_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	NULL),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD',					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD_MODIFIER',			'MODIFIER_BUILDING_YIELD_CHANGE',						NULL),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION_MODIFIER',	'MODIFIER_BUILDING_YIELD_CHANGE',						NULL),
	--	('P0K_DELIAN_LEAGUE_LIGHTHOUSE_HOUSING',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_HOUSING',		'BUILDING_IS_LIGHTHOUSE'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD',						'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD_MODIFIER',			'MODIFIER_BUILDING_YIELD_CHANGE',						NULL),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION_MODIFIER',		'MODIFIER_BUILDING_YIELD_CHANGE',						NULL),
	--	('P0K_DELIAN_LEAGUE_SHIPYARD_HOUSING',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_HOUSING',		'BUILDING_IS_SHIPYARD'),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD',						'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD_MODIFIER',				'MODIFIER_BUILDING_YIELD_CHANGE',						NULL),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				NULL),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION_MODIFIER',		'MODIFIER_BUILDING_YIELD_CHANGE',						NULL);
	--	('P0K_DELIAN_LEAGUE_SEAPORT_HOUSING',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_HOUSING',		'BUILDING_IS_SEAPORT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments	
		(ModifierId,											Name,			Value)	
VALUES	('P0K_TRAIT_GOLD_PER_CITY_STATE_TRIBUTARY',				'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_PER_CITY_STATE_TRIBUTARY',				'Amount',		5),
		('P0K_DELIAN_LEAGUE_HARBOR_PRODUCTION_BOOST',			'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_DELIAN_LEAGUE_HARBOR_PRODUCTION_BOOST',			'Amount',		25),
		('P0K_DELIAN_LEAGUE_HARBOR_BUILDING_PRODUCTION_BOOST',	'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_DELIAN_LEAGUE_HARBOR_BUILDING_PRODUCTION_BOOST',	'Amount',		25),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD',					'ModifierId',	'P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD_MODIFIER'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD_MODIFIER',			'BuildingType',	'BUILDING_LIGHTHOUSE'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD_MODIFIER',			'YieldType',	'YIELD_FOOD'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD_MODIFIER',			'Amount',		1),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION',				'ModifierId',	'P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION_MODIFIER'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION_MODIFIER',	'BuildingType',	'BUILDING_LIGHTHOUSE'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION_MODIFIER',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION_MODIFIER',	'Amount',		1),
	--	('P0K_DELIAN_LEAGUE_LIGHTHOUSE_HOUSING',				'Amount',		1),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD',						'ModifierId',	'P0K_DELIAN_LEAGUE_SHIPYARD_FOOD_MODIFIER'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD_MODIFIER',			'BuildingType',	'BUILDING_SHIPYARD'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD_MODIFIER',			'YieldType',	'YIELD_FOOD'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_FOOD_MODIFIER',			'Amount',		1),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION',				'ModifierId',	'P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION_MODIFIER'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION_MODIFIER',		'BuildingType',	'BUILDING_SHIPYARD'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION_MODIFIER',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION_MODIFIER',		'Amount',		1),
	--	('P0K_DELIAN_LEAGUE_SHIPYARD_HOUSING',					'Amount',		1),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD',						'ModifierId',	'P0K_DELIAN_LEAGUE_SEAPORT_FOOD_MODIFIER'),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD_MODIFIER',				'BuildingType',	'BUILDING_SEAPORT'),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD_MODIFIER',				'YieldType',	'YIELD_FOOD'),
		('P0K_DELIAN_LEAGUE_SEAPORT_FOOD_MODIFIER',				'Amount',		1),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION',				'ModifierId',	'P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION_MODIFIER'),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION_MODIFIER',		'BuildingType',	'BUILDING_SEAPORT'),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION_MODIFIER',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION_MODIFIER',		'Amount',		1);
	--	('P0K_DELIAN_LEAGUE_SEAPORT_HOUSING',					'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'TRAIT_WILDCARD_GOVERNMENT_SLOT'), -- originally from Civ UA
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_TRAIT_GOLD_PER_CITY_STATE_TRIBUTARY'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_HARBOR_PRODUCTION_BOOST'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_HARBOR_BUILDING_PRODUCTION_BOOST'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_LIGHTHOUSE_FOOD'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_LIGHTHOUSE_PRODUCTION'),
	--	('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_LIGHTHOUSE_HOUSING'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SHIPYARD_FOOD'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SHIPYARD_PRODUCTION'),
	--	('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SHIPYARD_HOUSING'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SEAPORT_FOOD'),
		('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SEAPORT_PRODUCTION');
	--	('TRAIT_LEADER_SURROUNDED_BY_GLORY',	'P0K_DELIAN_LEAGUE_SEAPORT_HOUSING');
--=============================================================================================================
-- UNIQUE DISTRICT: ACROPOLIS (ENHANCEMENT)
--=============================================================================================================
-- +1 City-State Influence point per turn if adjacent to a Wonder. 
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_ACROPOLIS_INFLUENCE_POINT',			'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',					'PLOT_ADJACENT_TO_WONDER_REQUIREMENTS'),
		('P0K_ACROPOLIS_INFLUENCE_POINT_MODIFIER',	'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN',		NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments	
		(ModifierId,								Name,			Value)
VALUES	('P0K_ACROPOLIS_INFLUENCE_POINT',			'ModifierId',	'P0K_ACROPOLIS_INFLUENCE_POINT_MODIFIER'),
		('P0K_ACROPOLIS_INFLUENCE_POINT_MODIFIER',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,			ModifierId)
VALUES	('DISTRICT_ACROPOLIS',	'P0K_ACROPOLIS_INFLUENCE_POINT');
--=============================================================================================================
-- UNIQUE UNIT: HOPLITE (ENHANCEMENT)
--=============================================================================================================
-- No Combat Strength penalty against melee units.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type, 					Kind)
VALUES 	('P0K_ABILITY_HOPLITE',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId, 						RequirementType)
VALUES	('P0K_GREECE_REQUIRES_MELEE_OPPONENT', 	'REQUIREMENT_OPPONENT_UNIT_PROMOTION_CLASS_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments 
		(RequirementId,							Name, 					Value)
VALUES 	('P0K_GREECE_REQUIRES_MELEE_OPPONENT',	'UnitPromotionClass',	'PROMOTION_CLASS_MELEE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets 
		(RequirementSetId, 				RequirementSetType)
VALUES 	('P0K_GREECE_MELEE_OPPONENT',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
VALUES	('P0K_GREECE_MELEE_OPPONENT',	'P0K_GREECE_REQUIRES_MELEE_OPPONENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,						ModifierType,							SubjectRequirementSetId)
VALUES	('P0K_HOPLITE_MELEE_COMBAT_BONUS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',	'P0K_GREECE_MELEE_OPPONENT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId, 						Name, 		Value)
VALUES	('P0K_HOPLITE_MELEE_COMBAT_BONUS', 	'Amount', 	10);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType, 		Name, 							Description, 							Inactive)
VALUES 	('P0K_ABILITY_HOPLITE',	'LOC_P0K_ABILITY_HOPLITE_NAME',	'LOC_P0K_ABILITY_HOPLITE_DESCRIPTION',	0);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType, 		ModifierId)
VALUES 	('P0K_ABILITY_HOPLITE',	'P0K_HOPLITE_MELEE_COMBAT_BONUS');
---------------------------------------------------------------------------------------------------------------
-- ModifierStrings
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId, 						Context,	Text)
VALUES	('P0K_HOPLITE_MELEE_COMBAT_BONUS',	'Preview',	'LOC_P0K_ABILITY_HOPLITE_MELEE_COMBAT_BONUS_DESCRIPTION') ;
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES  ('P0K_ABILITY_HOPLITE',	'CLASS_HOPLITE');
