--============================================================================================================= 
-- CIVILIZATIONS EXPANDED: KUBLAI KHAN
--=============================================================================================================
-- LEADER UNIQUE ABILITY: SILK ROAD CARAVANS (ENHANCEMENT)
--=============================================================================================================
-- +25% Production towards Commercial Hubs and their buildings.
-- Commercial Hubs receive a standard Gold adjacency from other districts.
-- Trade Routes are immune to being plundered over land tiles.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,								Kind)
VALUES	('P0K_ABILITY_SILK_ROAD_CARAVANS',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('P0K_ABILITY_SILK_ROAD_CARAVANS',	'CLASS_TRADER');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description,										Inactive,	Permanent)
VALUES	('P0K_ABILITY_SILK_ROAD_CARAVANS',	'LOC_P0K_ABILITY_SILK_ROAD_CARAVANS_NAME',	'LOC_P0K_ABILITY_SILK_ROAD_CARAVANS_DESCRIPTION',	1,			1);
---------------------------------------------------------------------------------------------------------------
-- ExcludedAdjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO ExcludedAdjacencies
		(TraitType,				YieldChangeId)
VALUES	('TRAIT_LEADER_KUBLAI',	'District_Gold');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		NULL),
		('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BUILDING_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',		NULL),
		('P0K_SILK_ROAD_CARAVANS',							'MODIFIER_PLAYER_UNIT_ADJUST_TRADE_ROUTE_PLUNDER_IMMUNITY',	NULL),
		('P0K_TRAIT_LAND_TRADE_ROUTE_PLUNDER_IMMUNITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',						'UNIT_IS_TRADER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BOOST',			'DistrictType',	'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BOOST',			'Amount',		25),
		('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BUILDING_BOOST',	'DistrictType',	'DISTRICT_COMMERCIAL_HUB'),
		('P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BUILDING_BOOST',	'Amount',		25),
		('P0K_SILK_ROAD_CARAVANS',							'DomainType',	'DOMAIN_LAND'),
		('P0K_TRAIT_LAND_TRADE_ROUTE_PLUNDER_IMMUNITY',		'AbilityType',	'P0K_ABILITY_SILK_ROAD_CARAVANS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('P0K_ABILITY_SILK_ROAD_CARAVANS',	'P0K_SILK_ROAD_CARAVANS');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('TRAIT_LEADER_KUBLAI',	'P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BOOST'),
		('TRAIT_LEADER_KUBLAI',	'P0K_TRAIT_KUBLAI_COMMERCIAL_HUB_BUILDING_BOOST'),
		('TRAIT_LEADER_KUBLAI',	'TRAIT_ADJACENT_DISTRICTS_COMMERCIALHUB_ADJACENCYGOLD'), -- from Japan 
		('TRAIT_LEADER_KUBLAI',	'P0K_TRAIT_LAND_TRADE_ROUTE_PLUNDER_IMMUNITY');