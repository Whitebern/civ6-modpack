--=============================================================================================================
-- CIVILIZATIONS EXPANDED: POLICIES 
--=============================================================================================================
-- Add an extra Economic policy to prevent soft locks when using certain CE Leaders and Secret Socities together.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('POLICY_P0K_HARVEST_CALENDAR',	'KIND_POLICY');
---------------------------------------------------------------------------------------------------------------
-- Policies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Policies
		(PolicyType,					Description,									PrereqCivic,			Name,									GovernmentSlotType)
VALUES	('POLICY_P0K_HARVEST_CALENDAR',	'LOC_POLICY_P0K_HARVEST_CALENDAR_DESCRIPTION',	'CIVIC_CODE_OF_LAWS',	'LOC_POLICY_P0K_HARVEST_CALENDAR_NAME',	'SLOT_ECONOMIC');
---------------------------------------------------------------------------------------------------------------
-- ObsoletePolicies
---------------------------------------------------------------------------------------------------------------
INSERT INTO ObsoletePolicies
		(PolicyType,					ObsoletePolicy)
SELECT	'POLICY_P0K_HARVEST_CALENDAR',	ObsoletePolicy
FROM ObsoletePolicies
WHERE (PolicyType = 'POLICY_URBAN_PLANNING' OR PolicyType = 'POLICY_JFD_STATUTE_LABOUR'); -- Rule with Faith compatibility
---------------------------------------------------------------------------------------------------------------
-- PolicyModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO PolicyModifiers
		(PolicyType,					ModifierId)
VALUES	('POLICY_P0K_HARVEST_CALENDAR',	'P0K_HARVEST_CALENDAR_CITY_FOOD');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType)
VALUES	('P0K_HARVEST_CALENDAR_CITY_FOOD',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)
VALUES	('P0K_HARVEST_CALENDAR_CITY_FOOD',	'YieldType',	'YIELD_FOOD'),
		('P0K_HARVEST_CALENDAR_CITY_FOOD',	'Amount',		1);