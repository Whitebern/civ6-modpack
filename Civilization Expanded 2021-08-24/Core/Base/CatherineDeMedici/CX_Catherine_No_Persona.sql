--=============================================================================================================
-- CIVILIZATIONS EXPANDED: CATHERINE DE MEDICI 
-- (NO PERSONA PACK)
--=============================================================================================================
-- LEADER UNIQUE ABILITY: MAGNIFICENCE AND PATRONAGE (ENHANCEMENT)
--=============================================================================================================
-- +25% Production towards Theater Squares and their buildings.
-- +1 Trade Route capacity for each Cultural City-State tributary.
-- (Increase bonus Spies and Spy capacity to +2).
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,			Value)
VALUES	('P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI',	'LeaderType',	'LEADER_CATHERINE_DE_MEDICI');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_FRANCE_CATHERINE_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_FRANCE_CATHERINE_IS_SUZERAIN',	'P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI'),
		('P0K_FRANCE_CATHERINE_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_FRANCE_CATHERINE_IS_SUZERAIN',	'REQUIRES_PLAYER_AT_PEACE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST',					'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL),
		('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	NULL),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'P0K_FRANCE_CATHERINE_IS_SUZERAIN'),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments
SET	Value = 2 
WHERE ModifierId = 'UNIQUE_LEADER_ADD_SPY_CAPACITY'
AND Name = 'Amount';

UPDATE ModifierArguments
SET Value = 2 
WHERE ModifierId = 'UNIQUE_LEADER_ADD_SPY_UNIT'
AND Name = 'Amount';

INSERT INTO ModifierArguments	
		(ModifierId,													Name,			Value)
VALUES	('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST',					'DistrictType',	'DISTRICT_THEATER'),
		('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST',					'Amount',		25),
		('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST',			'DistrictType',	'DISTRICT_THEATER'),
		('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST',			'Amount',		25),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY',			'ModifierId',	'P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER'),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('FLYING_SQUADRON_TRAIT',		'P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST'),
		('FLYING_SQUADRON_TRAIT',		'P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST'),
		('MINOR_CIV_CULTURAL_TRAIT',	'P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY');
