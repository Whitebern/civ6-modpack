/* 
	Civilizations Expanded: Khmer
	Author: Sukritact
*/
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SUK_BARAY',				'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,												Name,															Description)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SUK_BARAY',				'LOC_DISTRICT_SUK_BARAY_NAME',									null);

--UPDATE Traits
--	SET
--		Name = "LOC_TRAIT_CIVILIZATION_SUK_TEMPLE_MOUNTAINS_NAME",
--		Description = "LOC_TRAIT_CIVILIZATION_SUK_TEMPLE_MOUNTAINS_DESCRIPTION"
--	WHERE TraitType = "TRAIT_CIVILIZATION_KHMER_BARAYS";
-------------------------------------
-- CivilizationTraits
-------------------------------------	
DELETE FROM CivilizationTraits WHERE CivilizationType = 'CIVILIZATION_KHMER' AND TraitType = 'TRAIT_CIVILIZATION_BUILDING_PRASAT';

INSERT INTO CivilizationTraits	
		(TraitType,									CivilizationType)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SUK_BARAY',	'CIVILIZATION_KHMER');
-------------------------------------
-- TraitModifiers
-------------------------------------	
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_KHMER_BARAYS' 
AND			ModifierId IN ('TRAIT_AQUEDUCT_AMENITY', 
			'TRAIT_FARM_AQUEDUCT_ADJECENCY_FOOD',
			'TRAIT_FARM_HOLY_SITE_ADJECENCY_FAITH',
			'BARAYS_FAITH_POPULATION');
--==========================================================================================================================
-- Domestic Trade Routes provide +1 Food, +1 Production, +1 Gold, +1 Faith
-- to origin city for each Wonder, Baray, Dam, and Holy Site in the destination city.
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,													OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		NULL,						NULL),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		NULL,						NULL),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		NULL,						NULL),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD',			'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		NULL,						NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
VALUES	('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',			'YieldType',			'YIELD_FOOD'),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',			'Amount',				1),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',			'Domestic',				1),

		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',		'YieldType',			'YIELD_PRODUCTION'),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',		'Amount',				1),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',		'Domestic',				1),

		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',			'YieldType',			'YIELD_FAITH'),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',			'Amount',				1),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',			'Domestic',				1),

		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD',			'YieldType',			'YIELD_GOLD'),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD',			'Amount',				1),
		('SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD',			'Domestic',				1);
--==========================================================================================================================
-- Attach Modifiers
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER',	'REQUIREMENTSET_TEST_ANY');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER',	'REQUIRES_DISTRICT_IS_SUK_BARAY'),
		('SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER',	'REQUIRES_DISTRICT_IS_DAM'),
		('SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER',	'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER',	'REQUIRES_DISTRICT_IS_WORLD_WONDER');
-------------------------------------
-- DynamicModifiers
-------------------------------------
INSERT INTO Types
			(Type,														Kind)
VALUES		('MODIFIER_SUK_KHMER_PLAYER_DISTRICTS_ATTACH_MODIFIER',		'KIND_MODIFIER');

INSERT INTO	DynamicModifiers
			(ModifierType,												CollectionType,						EffectType)
VALUES		('MODIFIER_SUK_KHMER_PLAYER_DISTRICTS_ATTACH_MODIFIER',		'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ATTACH_MODIFIER');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
	(
		ModifierId,
		ModifierType,
		OwnerRequirementSetId,
		SubjectRequirementSetId
	)
	SELECT
		ModifierId || '_ATTACH',
		'MODIFIER_SUK_KHMER_PLAYER_DISTRICTS_ATTACH_MODIFIER',
		NULL,
		'SUK_KHMER_IS_BARAY_DAM_HOLY_OR_WONDER'
	FROM Modifiers
	WHERE ModifierId IN
		(
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD'
		);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
	(
		ModifierId,
		Name,
		Value
	)
	SELECT
		ModifierId || '_ATTACH',
		'ModifierId',
		ModifierId
	FROM Modifiers
	WHERE ModifierId IN
		(
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',
			'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD'
		);
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
SELECT	'TRAIT_CIVILIZATION_KHMER_BARAYS', 		ModifierId || '_ATTACH'
FROM Modifiers WHERE ModifierId IN
	(
		'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FOOD',
		'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_PRODUCTION',
		'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_FAITH',
		'SUK_TEMPLE_MOUNTAINS_TRADE_OFFER_GOLD'
	);
--==========================================================================================================================
-- +15% Production towards Wonders in cities with at least 10 citizens
-- increasing to +30% with 20 citizens.
--==========================================================================================================================
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP',			'REQUIREMENTSET_TEST_ALL'),
		('SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------	
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP',			'REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP'),
		('SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP',			'REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 									RequirementType)
VALUES	('REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP',	'REQUIREMENT_CITY_HAS_X_POPULATION'),
		('REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP',	'REQUIREMENT_CITY_HAS_X_POPULATION');
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 										Name,			Value)
VALUES	('REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP', 		'Amount',		10),
		('REQUIRES_SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP', 		'Amount',		20);
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,										SubjectRequirementSetId)
VALUES	('SUK_TEMPLE_MOUNTAINS_10_POP_PRODUCTION_BONUS',	'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_PRODUCTION',	'SUK_TEMPLE_MOUNTAINS_CITY_HAS_10_POP'),
		('SUK_TEMPLE_MOUNTAINS_20_POP_PRODUCTION_BONUS',	'MODIFIER_PLAYER_CITIES_ADJUST_WONDER_PRODUCTION',	'SUK_TEMPLE_MOUNTAINS_CITY_HAS_20_POP');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
VALUES	('SUK_TEMPLE_MOUNTAINS_10_POP_PRODUCTION_BONUS',	'Amount',			15),
		('SUK_TEMPLE_MOUNTAINS_20_POP_PRODUCTION_BONUS',	'Amount',			15);
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_KHMER_BARAYS', 	'SUK_TEMPLE_MOUNTAINS_10_POP_PRODUCTION_BONUS'),
		('TRAIT_CIVILIZATION_KHMER_BARAYS', 	'SUK_TEMPLE_MOUNTAINS_20_POP_PRODUCTION_BONUS');
--==========================================================================================================================
-- +1 Population, +1 Housing, and +1 Amenity in the Capital.
--==========================================================================================================================
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,												Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TEMPLE_MOUNTAINS_CAPITAL_POPULATION',			'MODIFIER_PLAYER_BUILT_CITIES_GRANT_FREE_POPULATION',		1,			'PLAYER_HAS_ONE_CITY'),
		('P0K_TEMPLE_MOUNTAINS_CAPITAL_HOUSING',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_HOUSING',		0,			NULL),
		('P0K_TEMPLE_MOUNTAINS_CAPITAL_AMENITY',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_ENTERTAINMENT',	0,			NULL);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,		Value)
VALUES	('P0K_TEMPLE_MOUNTAINS_CAPITAL_POPULATION',			'Amount',	1),
		('P0K_TEMPLE_MOUNTAINS_CAPITAL_HOUSING',			'Amount',	1),
		('P0K_TEMPLE_MOUNTAINS_CAPITAL_AMENITY',			'Amount',	1);
-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_KHMER_BARAYS', 	'P0K_TEMPLE_MOUNTAINS_CAPITAL_POPULATION'),
		('TRAIT_CIVILIZATION_KHMER_BARAYS', 	'P0K_TEMPLE_MOUNTAINS_CAPITAL_HOUSING'),
		('TRAIT_CIVILIZATION_KHMER_BARAYS', 	'P0K_TEMPLE_MOUNTAINS_CAPITAL_AMENITY');
--==========================================================================================================================
-- Prasat: +1 Housing. Bonus Production equal to the Faith adjacency of the Holy Site.
--==========================================================================================================================
-- Buildings
-------------------------------------
UPDATE Buildings SET Housing = 1 WHERE BuildingType = 'BUILDING_PRASAT';
-------------------------------------
-- Building_YieldDistrictCopies
-------------------------------------
INSERT INTO Building_YieldDistrictCopies
		(BuildingType,		OldYieldType,	NewYieldType)
VALUES	('BUILDING_PRASAT',	'YIELD_FAITH',	'YIELD_PRODUCTION');
-------------------------------------
-- BuildingModifiers
-------------------------------------
DELETE FROM BuildingModifiers
WHERE		BuildingType = 'BUILDING_PRASAT'
AND			ModifierId = 'PRASAT_CULTURE_POPULATION';