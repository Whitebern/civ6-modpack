/*
	Civilizations Expanded: Localisation (DLC)
	By p0kiehl
*/
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--=============================================================================================================
-- AUSTRALIA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_LAND_DOWN_UNDER_NAME',
		'Boundless Plains to Share'),
		('LOC_TRAIT_CIVILIZATION_LAND_DOWN_UNDER_DESCRIPTION',
		'Coastal cities gain +3 [ICON_Housing] Housing. Water tiles provide +1 [ICON_Production] Production. Specialty districts receive a +1 adjacency bonus on tiles with Charming Appeal, increasing to +3 on tiles with Breathtaking Appeal. Building a Pasture triggers a Culture Bomb.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_CITADEL_CIVILIZATION_NAME',
		'A Man of Peace in a Time of War'),
		('LOC_TRAIT_LEADER_CITADEL_CIVILIZATION_DESCRIPTION',
		'+15% [ICON_Production] Production towards buildings and civilian units while at peace. +15% [ICON_Production] Production towards military units while at war. [ICON_TradeRoute] Trade Routes with Allies provide +4 [ICON_Food] Food and +4 [ICON_Production] Production to both cities. Alliances generate additional Alliance Points while at war with a common foe.'), -- The game is bugged to only show the original description in-game, so adding this in.
		('LOC_TRAIT_LEADER_CITADEL_CIVILIZATION_EXPANSION2_DESCRIPTION',
		'+15% [ICON_Production] Production towards buildings and civilian units while at peace. +15% [ICON_Production] Production towards military units while at war. [ICON_TradeRoute] Trade Routes with Allies provide +4 [ICON_Food] Food and +4 [ICON_Production] Production to both cities. Alliances generate additional Alliance Points while at war with a common foe.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_OUTBACK_STATION_DESCRIPTION',
		'Unlocks the Builder ability to construct an Outback Station, unique to Australia.[NEWLINE][NEWLINE]+1 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production. +1 [ICON_Food] Food for each adjacent Pasture. Additional [ICON_FOOD] Food and [ICON_PRODUCTION] Production from adjacent Outback Stations and Pastures while advancing through the Technology and Civics trees. Cannot be built on Snow terrain.'),
		-- Unique unit (only wording changes)
		('LOC_UNIT_DIGGER_DESCRIPTION',
		'Australian unique Modern Era unit that replaces Infantry. +10 [ICON_Strength] Combat Strength when fighting on Coastal tiles. +5 [ICON_Strength] Combat Strength when fighting in neutral or foreign territory.'),
--=============================================================================================================
-- AZTEC
--=============================================================================================================
		-- CIvilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS_DESCRIPTION',
		'Combat victories grant [ICON_Faith] Faith equal to 50% of the [ICON_Strength] Combat Strength of the defeated unit. Lakes provide +1 [ICON_Faith] Faith, +1 [ICON_Food] Food, and +1 [ICON_Production] Production. Land tiles adjacent to Lakes provide +1 [ICON_Food] Food and +1 [ICON_Gold] Gold. When constructing districts, may spend Builder [ICON_Charges] Charges to complete 20% of the original [ICON_Production] Production cost.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_GIFTS_FOR_TLATOANI_DESCRIPTION',
		'Entertainment Complexes provide +3 [ICON_Food] Food and +2 [ICON_Housing] Housing. Luxury resources provide an [ICON_Amenities] Amenity to two extra cities. Military units receive +1 [ICON_Strength] Combat Strength for each different Luxury resource improved in Aztec territory. +5% [ICON_Science] Science, [ICON_Culture] Culture, [ICON_Faith] Faith, [ICON_Food] Food, [ICON_Production] Production, and [ICON_Gold] Gold in Ecstatic cities.'),
		-- Unique Building
		('LOC_BUILDING_TLACHTLI_XP1_DESCRIPTION',
		'A building unique to the Aztecs. +2 [ICON_Faith] Faith, +1 [ICON_Culture] Culture, +1 [ICON_Food] Food, and +1 [ICON_Production] Production. Provides +2 [ICON_Amenities] Amenities and +1 [ICON_GreatGeneral] Great General point. +1 [ICON_Tourism] Tourism after unlocking the Conservation civic. Grants the ability to purchase land units with [ICON_Faith] Faith in this city.'),
		-- Unique Unit
		('LOC_UNIT_AZTEC_EAGLE_WARRIOR_DESCRIPTION',
		'Aztec unique Ancient Era unit that replaces the Warrior. Has a chance to capture defeated military units, turning them into Builders.'), -- Just wording edits.
--=============================================================================================================
-- INDONESIA
--=============================================================================================================
		-- Civilization Unique Ability	
		('LOC_TRAIT_CIVILIZATION_INDONESIA_NUSANTARA_NAME',
		'Spice Islands Archipelago'),
		('LOC_TRAIT_CIVILIZATION_INDONESIA_NUSANTARA_DESCRIPTION',	
		'+2 [ICON_Gold] Gold, +1 [ICON_Food] Food, and +1 [ICON_Production] Production from Sea resources. Campus, Theater Square, Holy Site, and Industrial Zone districts receive a standard adjacency bonus from Water tiles. +100% [ICON_Production] Production towards Harbors and Water Parks. +1 [ICON_GreatMerchant] Great Merchant point from City-State tributaries that own a Harbor.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_EXALTED_GODDESS_DESCRIPTION',
		'Coastal cities gain +2 [ICON_Faith] Faith and +1 [ICON_Housing] Housing. Coastal cities within 9 tiles of any [ICON_Capital] Capital generate +1 [ICON_InfluencePerTurn] Influence point per turn and gain +1 [ICON_Amenities] Amenity. May purchase Harbor buildings and Water Park buildings with [ICON_Faith] Faith. All units ignore the [ICON_Movement] Movement costs of embarking and disembarking.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_KAMPUNG_DESCRIPTION',
		'Unlocks the Builder ability to construct a Kampung, unique to Indonesia.[NEWLINE][NEWLINE]+1 [ICON_PRODUCTION] Production and +1 [ICON_Housing] Housing. +1 [ICON_FOOD] Food for each adjacent Fishing Boat. +1 [ICON_Gold] Gold for each adjacent Land tile. Additional [ICON_PRODUCTION] Production, [ICON_Housing] Housing, and [ICON_TOURISM] Tourism while advancing through the Technology and Civics trees. Must be placed on a Water tile adjacent to a Sea resource. May be placed on Reefs.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_INDONESIAN_JONG_DESCRIPTION',
		'Indonesian unique Medieval Era unit that replaces the Frigate. +5 [ICON_Strength] Combat Strength when in a formation. Units in formation with the Jong inherit its [ICON_Movement] Movement.'),
--=============================================================================================================
-- KHMER
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_NAME',
		'Temple-Mountains'),
		('LOC_TRAIT_CIVILIZATION_KHMER_BARAYS_EXPANSION2_DESCRIPTION',
		'+1 [ICON_Citizen] Population, +1 [ICON_Housing] Housing, and +1 [ICON_Amenities] Amenity in the [ICON_Capital] Capital. +15% [ICON_Production] Production towards Wonders in cities with at least 10 [ICON_Citizen] Population, increasing to +30% [ICON_Production] in cities with at least 20 [ICON_Citizen] Population. [ICON_TradeRoute] Trade Routes to Khmer cities gain +1 [ICON_Food] Food, +1 [ICON_Production] Production, +1 [ICON_Gold] Gold, and +1 [ICON_Faith] Faith for each Wonder, Baray, Dam, and Holy Site in the destination city.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_MONASTERIES_KING_NAME',
		'City of Dhamma'),
		('LOC_TRAIT_LEADER_MONASTERIES_KING_EXPANSION2_DESCRIPTION',
		'Cities with a Wonder exert +100% [ICON_Religion] Religious pressure and receive +15% [ICON_Production] Production towards districts and buildings. Holy Sites receive a major [ICON_Faith] Faith adjacency bonus from Rivers. Completing a Holy Site triggers a Culture Bomb. Worship Buildings provide +2 [ICON_Culture] Culture, +2 [ICON_Food] Food, and +2 [ICON_Gold] Gold. Gain access to the Prasat unique building for the Holy Site.'),
		('LOC_P0K_KHMER_DISTRICT_RIVER_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent River.'),
		-- Leader Unique Building
		('LOC_BUILDING_PRASAT_DESCRIPTION',
		'A building unique to Jayavarman VII that replaces the Temple. Required to purchase Apostles and Inquisitors with [ICON_Faith] Faith. +1 [ICON_Housing] Housing. Bonus [ICON_Production] Production equal to the [ICON_Faith] Faith adjacency bonus of the Holy Site.'),
		('LOC_BUILDING_PRASAT_HEROES_XP2_DESCRIPTION',
		'A building unique to Jayavarman VII that replaces the Temple. Required to purchase Apostles and Inquisitors with [ICON_Faith] Faith. +1 [ICON_Housing] Housing. Bonus [ICON_Production] Production equal to the [ICON_Faith] Faith adjacency bonus of the Holy Site. Recalling Heroes in this city costs 15% less [ICON_Faith] Faith.'),
		-- Unique District
		('LOC_DISTRICT_SUK_BARAY_NAME',
		'Baray'),
		('LOC_DISTRICT_SUK_BARAY_DESCRIPTION',
		'A district unique to the Khmer for city growth. Replaces the Aqueduct.[NEWLINE][NEWLINE]+2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing. +1 [ICON_Housing] Housing from each adjacent Farm or Wonder. Adjacent Farms receive +2 [ICON_Food] Food and +1 [ICON_Faith] Faith.[NEWLINE][NEWLINE]Prevents [ICON_Food] Food loss during Drought. Cannot be built on Hills. Military Engineers may spend a [ICON_Charges] Charge to complete 20% of this district''s [ICON_Production] Production cost.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_KHMER_DOMREY_NAME',
		'Dâmri Châmbăng'), -- Credit to Sukritact.
		('LOC_UNIT_KHMER_DOMREY_DESCRIPTION',
		'Khmer unique Medieval Era unit that replaces the Trebuchet. Siege unit that can move and shoot in the same turn. Exerts a zone of control.'),
--=============================================================================================================
-- MACEDON
--=============================================================================================================		
		-- Civilization Unique Ability
		('LOC_TRAIT_LEADER_HELLENISTIC_FUSION_NAME',
		'Argead Legacy'),
		('LOC_TRAIT_LEADER_HELLENISTIC_FUSION_DESCRIPTION',
		'Begin the game with the Bronze Working technology unlocked. +25% [ICON_Production] Production towards Encampments and their buildings. Upgrading military units costs 25% less [ICON_Gold] Gold and uses 25% fewer resources. Conquering cities grants a random [ICON_TechBoosted] Eureka for each Campus or Encampment and a random [ICON_CivicBoosted] Inspiration for each Theater Square or Holy Site.'), -- The game is bugged to only show the original description in-game, so adding this in.
		('LOC_TRAIT_LEADER_HELLENISTIC_FUSION_EXPANSION1_DESCRIPTION',
		'Begin the game with the Bronze Working technology unlocked. +25% [ICON_Production] Production towards Encampments and their buildings. Upgrading military units costs 25% less [ICON_Gold] Gold and uses 25% fewer resources. Conquering cities grants a random [ICON_TechBoosted] Eureka for each Campus or Encampment and a random [ICON_CivicBoosted] Inspiration for each Theater Square or Holy Site.'), 
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_TO_WORLDS_END_NAME',
		'To the World''s End'),
		('LOC_TRAIT_LEADER_TO_WORLDS_END_DESCRIPTION',
		'+100% [ICON_GreatGeneral] Great General points. Units receive +1 [ICON_Movement] Movement when beginning a turn outside of Macedonian territory. Military units heal completely upon conquering a city with a Wonder. Cities do not incur war weariness. Gain access to the Hetairos unique unit after unlocking the Horseback Riding technology.'),
		('LOC_P0K_MACEDON_ABILITY_TO_WORLDS_END_NAME',
		'To the World''s End'),
		('LOC_P0K_MACEDON_ABILITY_TO_WORLDS_END_DESCRIPTION',
		'+1 [ICON_Movement] Movement when outside of Macedonian territory.'),
		-- Leader Unique unit (only wording changes)
		('LOC_UNIT_MACEDONIAN_HETAIROI_DESCRIPTION',
		'Macedonian unique Classical Era unit when Alexander is the leader. Replaces the Horseman. +5 [ICON_Strength] Combat Strength when adjacent to a Great General. +5 [ICON_GreatGeneral] Great General points upon defeating an enemy unit. Begins with 1 free [ICON_Promotion] Promotion.'),
		-- Unique Building
		('LOC_BUILDING_BASILIKOI_PAIDES_NAME',
		'Royal Page School'),
		('LOC_BUILDING_BASILIKOI_PAIDES_EXPANSION2_DESCRIPTION',
		'A building unique to Macedon that replaces the Barracks. Grants +1 [ICON_Amenities] Amenity and +1 [ICON_Housing] Housing. +25% combat experience for all melee units, ranged units, and Hetairoi trained in this city. Training military units in this city grants a burst of [ICON_Science] Science based on [ICON_Production] Production cost. Increases Strategic resource Stockpiles by 10 (on Standard Speed).[NEWLINE][NEWLINE]May not be built in an Encampment that already has a Stable.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_MACEDONIAN_HYPASPIST_DESCRIPTION',
		'Macedonian unique Classical Era that replaces the Swordsman. +5 [ICON_Strength] Combat Strength when besieging districts. Support bonus is increased by 50%.'),
--=============================================================================================================
-- NUBIA
--=============================================================================================================		
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_TA_SETI_NAME',
		'Cult of Apedemak'),
		('LOC_TRAIT_CIVILIZATION_TA_SETI_DESCRIPTION',
		'Begin the game with the Mining technology unlocked. +2 [ICON_Gold] Gold and +1 [ICON_Production] Production from Mined resources. Strategic resources improved by Mines provide +1 additional resource per turn. +50% [ICON_Production] Production toward ranged units. Ranged units earn +50% combat experience.'),
		-- Leader Unique Ability 
		('LOC_TRAIT_LEADER_KANDAKE_OF_MEROE_NAME',
		'Restoration of Meroē'),
		('LOC_TRAIT_LEADER_KANDAKE_OF_MEROE_DESCRIPTION',
		'+100% [ICON_Production] Production towards Builders. +50% [ICON_Production] Production towards the first specialty district in each city, and +25% [ICON_Production] Production towards the second. [ICON_TradeRoute] Trade Routes to Nubian cities gain +1 [ICON_Faith] Faith and +1 [ICON_Food] Food per specialty district in the destination city. May use [ICON_Faith] Faith to purchase the buildings of the first specialty district constructed in each city.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_PYRAMID_NAME',
		'Funerary Pyramid'),
		('LOC_IMPROVEMENT_PYRAMID_DESCRIPTION',
		'Unlocks the Builder ability to construct the Funerary Pyramid, unique to Nubia.[NEWLINE][NEWLINE]+1 [ICON_Food] Food and +1 [ICON_Faith] Faith. +1 [ICON_Food] Food for each adjacent Aqueduct or Dam. +1 of the appropriate yield for each adjacent specialty district. Provides [ICON_Tourism] Tourism after unlocking the Flight technology.Cannot be built on Snow terrain.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_NUBIAN_PITATI_NAME',
		'Apedemak Archer'),
		('LOC_UNIT_NUBIAN_PITATI_DESCRIPTION',
		'Nubian unique Ancient Era unit that replaces the Archer. Stronger than the Archer and has more [ICON_Movement] Movement.'),
--=============================================================================================================
-- PERSIA
--=============================================================================================================		
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_SATRAPIES_NAME',
		'Royal Road'),
		('LOC_TRAIT_CIVILIZATION_SATRAPIES_DESCRIPTION',
		'Unlocking a new [ICON_Government] Government tier grants +3 [ICON_Envoy] Envoys, +2 [ICON_TradeRoute] Trade Route capacity, and a random [ICON_TechBoosted] Eureka. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold for passing through [ICON_TradingPost] Trading Posts in Persian cities. [ICON_TradeRoute] Trade Routes to the [ICON_Capital] Capital gain +1 [ICON_Science] Science, +1 [ICON_Culture] Culture, +1 [ICON_Faith] Faith, +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_FALL_BABYLON_NAME',
		'Empire of All Nations'),
		('LOC_TRAIT_LEADER_FALL_BABYLON_EXPANSION2_DESCRIPTION',
		'Upon becoming Suzerain of a City-State for the first time, receive a random [ICON_CivicBoosted] Inspiration and a free Builder in the [ICON_Capital] Capital. Military units earn +25% combat experience when fighting outside of Persian territory. Conquering a city immediately creates a [ICON_TradingPost] Trading Post in that city and a road to the [ICON_Capital] Capital if within range. +5 Loyalty to conquered cities.'),
		('LOC_P0K_PERSIA_ABILITY_FALL_BABYLON_NAME',
		'Empire of All Nations'),
		('LOC_P0K_PERSIA_ABILITY_FALL_BABYLON_DESCRIPTION',
		'Earn +25% combat experience when fighting outside of Persian territory.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_PAIRIDAEZA_DESCRIPTION',
		'Unlocks the Builder ability to construct a Pairidaeza, unique to Persia.[NEWLINE][NEWLINE]+2 [ICON_Gold] Gold, +1 [ICON_CULTURE] Culture, and +1 [ICON_Food] Food. +1 [ICON_CULTURE] Culture for each adjacent Holy Site and Theater Square. +1 [ICON_GOLD] Gold for each adjacent Commercial Hub, City Center, and Wonder. +2 Appeal. Additional [ICON_Culture] Culture and [ICON_Tourism] Tourism while advancing through the Technology and Civics trees. Cannot be built on Snow, Tundra, Snow Hills, or Tundra Hills or adjacent to another Pairidaeza.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_PERSIAN_IMMORTAL_DESCRIPTION',
		'Persian unique melee unit that replaces the Swordsman. Melee unit with a ranged attack and high defense.'),
--=============================================================================================================
-- POLAND
--=============================================================================================================		
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_GOLDEN_LIBERTY_DESCRIPTION',
		'All Military policy slots in the current [ICON_Government] Government are converted to Wildcard policy slots. Cities with a [ICON_Governor] Governor generate +15% [ICON_Production] Production and +15% [ICON_Gold] Gold. Completing an Encampment triggers a Culture Bomb. Encampment buildings provide [ICON_Culture] Culture equal to their intrinsic [ICON_Production] Production output.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_LITHUANIAN_UNION_DESCRIPTION',
		'Holy Sites receive a standard [ICON_Faith] Faith adjacency bonus from other districts. Culture Bombs automatically convert the adjacent city to Poland''s [ICON_Religion] Religion. Converting a city to Poland''s [ICON_Religion] Religion grants +1 [ICON_Glory_Super_Golden_Age] Era Score. Receive two [ICON_GreatWork_Relic] Relics upon entering a [ICON_Glory_Golden_Age] Golden Age. +4 [ICON_Gold] Gold, +2 [ICON_Culture] Culture, and +2 [ICON_Faith] Faith from [ICON_GreatWork_Relic] Relics.'),
		-- Leader Unique Ability (Heroes Mode)
		('LOC_TRAIT_LEADER_LITHUANIAN_UNION_HEROES_DESCRIPTION',
		'Holy Sites receive a standard [ICON_Faith] Faith adjacency bonus from other districts. Culture Bombs automatically convert the adjacent city to Poland''s [ICON_Religion] Religion. Converting a city to Poland''s [ICON_Religion] Religion grants +1 [ICON_Glory_Super_Golden_Age] Era Score. Receive two [ICON_GreatWork_Relic] Relics upon entering a [ICON_Glory_Golden_Age] Golden Age. +4 [ICON_Gold] Gold, +2 [ICON_Culture] Culture, and +2 [ICON_Faith] Faith from [ICON_GreatWork_Relic] Relics and [ICON_GreatWork_HeroRelic] Heroic Relics.'),
		-- Unique Building
		('LOC_BUILDING_SUKIENNICE_EXPANSION1_DESCRIPTION',
		'A building unique to Poland that replaces the Market. +1 [ICON_TradeRoute] Trade Route capacity if this city does not yet have a Lighthouse. Constructing a Sukiennice for the first time grants +1 [ICON_Governor] Governor TItle. Bonus [ICON_Culture] Culture equal to the [ICON_Gold] Gold adjacency bonus of the Commercial Hub. Domestic [ICON_TradeRoute] Trade Routes from this city gain +4 [ICON_Gold] Gold. International [ICON_TradeRoute] Trade Routes from this city gain +2 [ICON_Production] Production.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_POLISH_HUSSAR_DESCRIPTION', 
		'Polish unique Renaissance Era unit that replaces the Cuirassier. Pushes defending enemy units back from their hex in any battle in which they score more damage. Defending units that cannot be pushed back suffer additional damage.');
