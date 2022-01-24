--=============================================================================================================
-- CIVILIZATIONS EXPANDED: CATHERINE DE MEDICI  
-- (PERSONA PACK + ETHIOPIA DLC)
--=============================================================================================================
-- BLACK QUEEN CATHERINE
--=============================================================================================================
-- LEADER UNIQUE ABILITY: BLACK QUEEN (ENHANCEMENT)
--=============================================================================================================
-- +100% Production towards the Diplomatic Quarter and its buildings.
-- Successful offensive Spy missions grant 25% of the Science, Culture, Faith, and Gold earned by the targeted city that turn.
-- (Increase bonus Spies and Spy capacity to +2).
--=============================================================================================================
-- Traits
---------------------------------------------------------------------------------------------------------------
UPDATE Traits SET 
Name = 'P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_NAME',
Description = 'P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_DESCRIPTION'
WHERE TraitType = 'FLYING_SQUADRON_TRAIT';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType)
VALUES	('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION'),
		('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BUILDING_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'),
		('P0K_TRAIT_SCIENCE_FROM_SPY_SUCCESS',						'MODIFIER_PLAYER_ADJUST_TARGET_CITY_SPY_YIELD_PERCENT'),
		('P0K_TRAIT_CULTURE_FROM_SPY_SUCCESS',						'MODIFIER_PLAYER_ADJUST_TARGET_CITY_SPY_YIELD_PERCENT'),
		('P0K_TRAIT_FAITH_FROM_SPY_SUCCESS',						'MODIFIER_PLAYER_ADJUST_TARGET_CITY_SPY_YIELD_PERCENT'),
		('P0K_TRAIT_GOLD_FROM_SPY_SUCCESS',							'MODIFIER_PLAYER_ADJUST_TARGET_CITY_SPY_YIELD_PERCENT');
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
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BOOST',			'DistrictType',	'DISTRICT_DIPLOMATIC_QUARTER'),
		('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BOOST',			'Amount',		100),
		('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BUILDING_BOOST',	'DistrictType',	'DISTRICT_DIPLOMATIC_QUARTER'),
		('P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BUILDING_BOOST',	'Amount',		100),
		('P0K_TRAIT_SCIENCE_FROM_SPY_SUCCESS',						'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_FROM_SPY_SUCCESS',						'Percent',		25),
		('P0K_TRAIT_CULTURE_FROM_SPY_SUCCESS',						'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_FROM_SPY_SUCCESS',						'Percent',		25),
		('P0K_TRAIT_FAITH_FROM_SPY_SUCCESS',						'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_FROM_SPY_SUCCESS',						'Percent',		25),
		('P0K_TRAIT_GOLD_FROM_SPY_SUCCESS',							'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_FROM_SPY_SUCCESS',							'Percent',		25);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BOOST'),
		('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_CATHERINE_DIPLOMATIC_QUARTER_BUILDING_BOOST'),
		('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_SCIENCE_FROM_SPY_SUCCESS'),
		('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_CULTURE_FROM_SPY_SUCCESS'),
		('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_FAITH_FROM_SPY_SUCCESS'),
		('FLYING_SQUADRON_TRAIT',	'P0K_TRAIT_GOLD_FROM_SPY_SUCCESS');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: MAGNIFICENCE AND PATRONAGE (ENHANCEMENT)
--=============================================================================================================
-- +25% Production towards Theater Squares and their buildings.
-- +1 Trade Route capacity for each Cultural City-State tributary.
-- Court Festival project: Add +1 Amenity while active.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType)
VALUES	('P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI_ALT',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
VALUES	('P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI_ALT',	'LeaderType',	'LEADER_CATHERINE_DE_MEDICI_ALT');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_FRANCE_CATHERINE_ALT_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_FRANCE_CATHERINE_ALT_IS_SUZERAIN',	'P0K_FRANCE_REQUIRES_LEADER_IS_CATHERINE_DE_MEDICI_ALT'),
		('P0K_FRANCE_CATHERINE_ALT_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_FRANCE_CATHERINE_ALT_IS_SUZERAIN',	'REQUIRES_PLAYER_AT_PEACE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST',					'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL),
		('P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	NULL),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'P0K_FRANCE_CATHERINE_ALT_IS_SUZERAIN'),
		('P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
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
VALUES	('TRAIT_LEADER_MAGNIFICENCES',	'P0K_TRAIT_CATHERINE_THEATER_SQUARE_BOOST'),
		('TRAIT_LEADER_MAGNIFICENCES',	'P0K_TRAIT_CATHERINE_THEATER_SQUARE_BUILDING_BOOST'),
		('MINOR_CIV_CULTURAL_TRAIT',	'P0K_TRAIT_CULTURAL_CITY_STATE_TRADE_ROUTE_CAPACITY');
---------------------------------------------------------------------------------------------------------------
-- Projects
---------------------------------------------------------------------------------------------------------------
UPDATE Projects SET AmenitiesWhileActive = 1 WHERE ProjectType = 'PROJECT_COURT_FESTIVAL';