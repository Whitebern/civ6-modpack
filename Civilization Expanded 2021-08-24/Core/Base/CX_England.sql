/* 
	Civilizations Expanded: England
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: WORKSHOP OF THE WORLD (REWORK)
--=============================================================================================================
-- Trade Routes gain +1 Science, +1 Production, and +1 Gold for each Strategic resource in the destination city.
-- +50% Production towards Builders and Military Engineers.
-- +25% Production towards Industrial Zones and their buildings (enhanced from original).
-- Powered buildings provide +4 of their respective Powered yields (kept from original).
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType)
VALUES	('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_DOMESTIC',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_DOMESTIC'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_INTERNATIONAL',	'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_INTERNATIONAL'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_DOMESTIC',		'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_DOMESTIC'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_INTERNATIONAL',	'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_INTERNATIONAL'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_DOMESTIC',			'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_DOMESTIC'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_INTERNATIONAL',		'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_PER_DESTINATION_STRATEGIC_FOR_INTERNATIONAL'),
		('P0K_TRAIT_ADJUST_BUILDER_PRODUCTION',							'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_PRODUCTION_BONUS',					'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments 
SET Value = 25 
WHERE ModifierId = 'TRAIT_ADJUST_INDUSTRIAL_ZONE_BUILDINGS_PRODUCTION'
AND Name = 'Amount';

INSERT INTO ModifierArguments	
		(ModifierId,													Name,			Value)
VALUES	('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_DOMESTIC',			'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_DOMESTIC',			'Amount',		1),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_INTERNATIONAL',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_INTERNATIONAL',	'Amount',		1),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_DOMESTIC',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_DOMESTIC',		'Amount',		1),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_INTERNATIONAL',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_INTERNATIONAL',	'Amount',		1),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_DOMESTIC',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_DOMESTIC',			'Amount',		1),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_INTERNATIONAL',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_INTERNATIONAL',	'	Amount',		1),
		('P0K_TRAIT_ADJUST_BUILDER_PRODUCTION',							'UnitType',		'UNIT_BUILDER'),
		('P0K_TRAIT_ADJUST_BUILDER_PRODUCTION',							'Amount',		50),
		('P0K_TRAIT_INDUSTRIAL_ZONE_PRODUCTION_BONUS',					'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_PRODUCTION_BONUS',					'Amount',		25);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE TraitType = 'TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION'
AND ModifierId NOT IN ('TRAIT_ADJUST_MILITARY_ENGINEER_PRODUCTION',
'TRAIT_ADJUST_MILITARY_ENGINEER_BUILDCHARGES',
'TRAIT_ADJUST_INDUSTRIAL_ZONE_BUILDINGS_PRODUCTION', 
'TRAIT_POWERED_BUILDINGS_MORE_CULTURE', 
'TRAIT_POWERED_BUILDINGS_MORE_FOOD', 
'TRAIT_POWERED_BUILDINGS_MORE_GOLD',
'TRAIT_POWERED_BUILDINGS_MORE_PRODUCTION',
'TRAIT_POWERED_BUILDINGS_MORE_SCIENCE');

INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_DOMESTIC'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_SCIENCE_INTERNATIONAL'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_DOMESTIC'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_PRODUCTION_INTERNATIONAL'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_DOMESTIC'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_TRADE_STRATEGIC_RESOURCE_GOLD_INTERNATIONAL'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_ADJUST_BUILDER_PRODUCTION'),
		('TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION',	'P0K_TRAIT_INDUSTRIAL_ZONE_PRODUCTION_BONUS');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: PAX BRITANNICA (REWORK)
--=============================================================================================================
-- +1 Trade Route capacity for each type of Strategic resource improved in English lands.
-- Cities on the Capital's continent receive +50% Science from Campus buildings and +1 Amenity.
-- Cities on foreign continents receive +50% Production from Industrial Zone buildings and +1 Housing.
-- Completing an Industrial Zone triggers a Culture Bomb.
-- Gain access to the Redcoat unique unit.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_ENGLAND_REQUIRES_CITY_ON_HOME_CONTINENT',	'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'); -- No argument

INSERT INTO Requirements
		(RequirementId,												RequirementType)
SELECT	'P0K_ENGLAND_REQUIRES_PLAYER_HAS_IMPROVED_' ||ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_IMPROVED'
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
SELECT	'P0K_ENGLAND_REQUIRES_PLAYER_HAS_IMPROVED_' ||ResourceType,	'ResourceType',	ResourceType
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_ENGLAND_CITY_ON_HOME_CONTINENT',	'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
SELECT	'P0K_ENGLAND_PLAYER_HAS_IMPROVED_' ||ResourceType,	'REQUIREMENTSET_TEST_ALL'
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_ENGLAND_CITY_ON_HOME_CONTINENT',	'P0K_ENGLAND_REQUIRES_CITY_ON_HOME_CONTINENT');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT	'P0K_ENGLAND_PLAYER_HAS_IMPROVED_' ||ResourceType,	'P0K_ENGLAND_REQUIRES_PLAYER_HAS_IMPROVED_' ||ResourceType
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_HOME_CONTINENT_CAMPUS_BUILDING_SCIENCE_BONUS',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT',	'P0K_ENGLAND_CITY_ON_HOME_CONTINENT'),
		('P0K_TRAIT_HOME_CONTINENT_AMENITY',							'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',							'P0K_ENGLAND_CITY_ON_HOME_CONTINENT'),
		('P0K_TRAIT_FOREIGN_CONTINENT_IZ_BUILDING_PRODUCTION_BONUS',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT',	'CITY_NOT_OWNER_CAPITAL_CONTINENT_REQUIREMENTS'),
		('P0K_TRAIT_FOREIGN_CONTINENT_HOUSING',							'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',							'CITY_NOT_OWNER_CAPITAL_CONTINENT_REQUIREMENTS'),
		('P0K_TRAIT_INDUSTRIAL_ZONE_CULTURE_BOMB',						'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER',								NULL);

INSERT INTO Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId)
SELECT	'P0K_TRAIT_TRADE_ROUTE_' ||ResourceType,	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',	'P0K_ENGLAND_PLAYER_HAS_IMPROVED_' ||ResourceType
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
----------------------------------------------------------------------------------------------------------------
-- ModifierArguments
----------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value)
VALUES	('P0K_TRAIT_HOME_CONTINENT_CAMPUS_BUILDING_SCIENCE_BONUS',		'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_TRAIT_HOME_CONTINENT_CAMPUS_BUILDING_SCIENCE_BONUS',		'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_HOME_CONTINENT_CAMPUS_BUILDING_SCIENCE_BONUS',		'Amount',		50),
		('P0K_TRAIT_HOME_CONTINENT_AMENITY',							'Amount',		1),
		('P0K_TRAIT_FOREIGN_CONTINENT_IZ_BUILDING_PRODUCTION_BONUS',	'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_FOREIGN_CONTINENT_IZ_BUILDING_PRODUCTION_BONUS',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_FOREIGN_CONTINENT_IZ_BUILDING_PRODUCTION_BONUS',	'Amount',		50),
		('P0K_TRAIT_FOREIGN_CONTINENT_HOUSING',							'Amount',		1),
		('P0K_TRAIT_INDUSTRIAL_ZONE_CULTURE_BOMB',						'DistrictType',	'DISTRICT_INDUSTRIAL_ZONE');

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value)
SELECT	'P0K_TRAIT_TRADE_ROUTE_' ||ResourceType,	'Amount',	1
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_PAX_BRITANNICA' AND ModifierId IN 
('TRAIT_FOREIGN_CONTINENT_MELEE_UNIT', 'TRAIT_FOREIGN_CONTINENT_TRADE_ROUTE', 'TRAIT_ROYAL_NAVY_DOCKYARD_NAVAL_UNIT');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_HOME_CONTINENT_CAMPUS_BUILDING_SCIENCE_BONUS'),
		('TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_HOME_CONTINENT_AMENITY'),
		('TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_FOREIGN_CONTINENT_IZ_BUILDING_PRODUCTION_BONUS'),
		('TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_FOREIGN_CONTINENT_HOUSING'),
		('TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_INDUSTRIAL_ZONE_CULTURE_BOMB');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
SELECT	'TRAIT_LEADER_PAX_BRITANNICA',	'P0K_TRAIT_TRADE_ROUTE_' ||ResourceType
FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_STRATEGIC';
--=============================================================================================================
-- UNIQUE DISTRICT: ROYAL NAVY DOCKYARD (ENHANCEMENT)
-- +2 Great Admiral points instead of the usual +1.
-- All wounded naval units in this city’s borders heal +100 HP each turn.
-- Grants a Major Production adjacency bonus to Industrial Zones.
--=============================================================================================================
-- District_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
UPDATE District_GreatPersonPoints SET PointsPerTurn = 2 
WHERE DistrictType = 'DISTRICT_ROYAL_NAVY_DOCKYARD' AND GreatPersonClassType = 'GREAT_PERSON_CLASS_ADMIRAL';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,									Description,						YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict)
VALUES	('p0k_Industrial_Zone_Bath_Production',	'P0K_LOC_DISTRICT_RND_PRODUCTION',	'YIELD_PRODUCTION',	2,				1,				'DISTRICT_ROYAL_NAVY_DOCKYARD');
---------------------------------------------------------------------------------------------------------------
-- District_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
		(DistrictType,					YieldChangeId)
VALUES	('DISTRICT_INDUSTRIAL_ZONE',	'p0k_Industrial_Zone_Bath_Production');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_REQUIRES_PLOT_UNIT_CITY_HAS_RND_SAME_OWNER',	'REQUIREMENT_PLOT_UNIT_CITY_HAS_DISTRICT_SAME_OWNER');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('P0K_REQUIRES_PLOT_UNIT_CITY_HAS_RND_SAME_OWNER',	'DistrictType',	'DISTRICT_ROYAL_NAVY_DOCKYARD');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
UPDATE	RequirementSetRequirements 
SET		RequirementId = 'P0K_REQUIRES_PLOT_UNIT_CITY_HAS_RND_SAME_OWNER' 
WHERE	RequirementId = 'REQUIRES_PLOT_UNIT_CITY_HAS_COTHON_SAME_OWNER'
AND		RequirementSetId = 'CITY_HAS_COTHON_ON_UNIT_PLOT_REQUIREMENTS';
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,						ModifierId)
VALUES	('DISTRICT_ROYAL_NAVY_DOCKYARD',	'COTHON_HEALFRIENDLY');
