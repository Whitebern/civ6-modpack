
/* 
	Civilizations Expanded: Localisation (Rise & Fall)
	By p0kiehl
*/
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--=============================================================================================================
-- CREE
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES_DESCRIPTION',
		'Receive a free recon unit upon founding the [ICON_Capital] Capital. Gain +2 [ICON_TradeRoute] Trade Route capacity and two free Traders upon unlocking the Pottery technology. Traders acquire unclaimed tiles within workable distance of Cree cities when first traveling over them. Bonus resources provide +1 [ICON_Production] Production. If on a Water tile, Bonus resources provide +1 [ICON_Food] Food as well.'),		
		-- Leader Unique Ability
		('LOC_LEADER_POUNDMAKER_ABILITY_NAME',
		'Legacy of Peace'),
		('LOC_LEADER_POUNDMAKER_ABILITY_DESCRIPTION',
		'Cannot be the target of a Surprise War, and cannot declare Surprise Wars or war on City-States. Receive one extra Diplomatic policy slot in any [ICON_Government] Government after unlocking the Political Philosophy civic. +1 [ICON_FAVOR] Diplomatic Favor per turn for each Diplomatic policy slot in the current [ICON_Government] Government. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Food] Food and +1 [ICON_Production] Production for each Camp or Pasture in the destination city. Cree cities gain +1 [ICON_Gold] Gold from incoming [ICON_TradeRoute] Trade Routes for each Camp or Pasture within their borders.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_MEKEWAP_DESCRIPTION',
		'Unlocks the Builder ability to construct a Mekewap, unique to Cree.[NEWLINE][NEWLINE]+1 [ICON_Food] Food, +1 [ICON_PRODUCTION] Production, and +1 [ICON_Housing] Housing. +1 [ICON_Food] Food for every two adjacent Bonus resources. +1 [ICON_GOLD] Gold for each adjacent Luxury resource. Additional [ICON_Food] Food, [ICON_PRODUCTION] Production, [ICON_GOLD] Gold, and [ICON_HOUSING] Housing while advancing through the Technology and Civics trees. Must be placed adjacent to a Bonus or Luxury resource. Cannot be built adjacent to another Mekewap.'),
		-- Unique Unit
		('LOC_UNIT_CREE_OKIHTCITAW_DESCRIPTION',
		'Cree unique Ancient Era unit that replaces the Scout. Stronger than the Scout. Starts with 1 free promotion.'), -- Just wording edits.
--=============================================================================================================
-- GEORGIA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS_DESCRIPTION',
		'Receive one extra Wildcard policy slot in any [ICON_Government] Government when in a [ICON_Glory_Golden_Age] Golden Age. May utilize [ICON_Glory_Dark_Age] Dark Age policies at any time. +50% [ICON_Production] Production towards Walls and Encampments. May purchase Encampment buildings with [ICON_Faith] Faith.'), -- The game is bugged to only show the original description in-game, so adding this in.
		('LOC_TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS_EXPANSION2_DESCRIPTION',
		'Receive one extra Wildcard policy slot in any [ICON_Government] Government when in a [ICON_Glory_Golden_Age] Golden Age. May utilize [ICON_Glory_Dark_Age] Dark Age policies at any time. +50% [ICON_Production] Production towards Walls and Encampments. May purchase Encampment buildings with [ICON_Faith] Faith.'),
		('LOC_TRAIT_CIVILIZATION_DRAMATIC_AGE_QUESTS_DESCRIPTION',
		'Receive one extra Wildcard policy slot in any [ICON_Government] Government when in a [ICON_Glory_Golden_Age] Golden Age. May utilize [ICON_Glory_Dark_Age] Dark Age policies at any time. +50% [ICON_Production] Production towards Walls and Encampments. May purchase Encampment buildings with [ICON_Faith] Faith.'), -- Defining the text for this key is simpler than updating the config.
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_RELIGION_CITY_STATES_NAME',
		'Epoch of Glory'),
		('LOC_TRAIT_LEADER_RELIGION_CITY_STATES_DESCRIPTION',
		'Each [ICON_Envoy] Envoy sent to a City-State following Georgia''s majority [ICON_Religion] Religion counts as two [ICON_Envoy] Envoys. Receive the [ICON_GreatPerson] Great Person points from specialty districts and buildings owned by City-State tributaries. Training military units grants a burst of [ICON_Faith] Faith based on [ICON_Production] Production cost. Gain access to the Protectorate War casus belli after unlocking the Defensive Tactics civic.'),
		-- Unique Building
		('LOC_BUILDING_TSIKHE_DESCRIPTION',
		'A building unique to Georgia that replaces Renaissance Walls. Lower [ICON_Production] Production cost, higher outer defenses, and has a slot for any type of [ICON_GreatWork_Portrait] Great Work. +4 [ICON_Faith] Faith. +1 [ICON_Faith] Faith to Mountains in this city. +3 [ICON_TOURISM] Tourism after unlocking the Conservation civic. When in a [ICON_Glory_Golden_Age] Golden Age, [ICON_Tourism] Tourism and [ICON_Faith] Faith are doubled. Can be purchased with [ICON_Faith] Faith.'), -- The game is bugged to only show the original description in-game, so adding this in.
		('LOC_BUILDING_TSIKHE_DESCRIPTION_XP2',
		'A building unique to Georgia that replaces Renaissance Walls. Lower [ICON_Production] Production cost, higher outer defenses, and has a slot for any type of [ICON_GreatWork_Portrait] Great Work. +4 [ICON_Faith] Faith. +1 [ICON_Faith] Faith to Mountains in this city. +3 [ICON_TOURISM] Tourism after unlocking the Conservation civic. When in a [ICON_Glory_Golden_Age] Golden Age, [ICON_Tourism] Tourism and [ICON_Faith] Faith are doubled. Can be purchased with [ICON_Faith] Faith.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_GEORGIAN_KHEVSURETI_DESCRIPTION',
		'Georgian unique Medieval Era unit that replaces the Man-At-Arms. +7 [ICON_Strength] Combat Strength bonus when fighting on Hills. No [ICON_Movement] Movement penalty from Hills. Purchased with [ICON_Faith] Faith.'),
--=============================================================================================================
-- INDIA (CHANDRAGUPTA)
--=============================================================================================================
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_ARTHASHASTRA_DESCRIPTION',
		'+1 [ICON_Culture] Culture and +1 [ICON_Production] Production from all districts. Constructing buildings grants a burst of [ICON_Culture] Culture equal to 15% of the [ICON_Production] Production cost. Military units heal at the end of every turn when outside of Indian territory, even after moving or attacking. Gain access to the War of Territorial Expansion casus belli after unlocking the Military Training civic.'),
		('LOC_P0K_INDIA_ABILITY_ARTHASHASTRA_NAME',
		'Arthashastra'),
		('LOC_P0K_INDIA_ABILITY_ARTHASHASTRA_DESCRIPTION',
		'Heals at the end of every turn when outside of Indian territory, even after moving or attacking (Arthashastra).'),
--=============================================================================================================
-- KOREA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_THREE_KINGDOMS_DESCRIPTION',
		'[ICON_TradeRoute] Trade Routes to foreign cities gain +1 [ICON_Culture] Culture and +1 [ICON_Food] Food per specialty district in the destination city. Cities with at least three specialty districts gain +4 [ICON_Housing] Housing and +2 [ICON_Amenities] Amenities. Receive a random [ICON_TechBoosted] Eureka and a random [ICON_CivicBoosted] Inspiration upon entering a new Era.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_HWARANG_NAME',
		'Tower of the Moon and Stars'),
		('LOC_TRAIT_LEADER_HWARANG_DESCRIPTION',
		'+100% [ICON_GreatPerson] Great Person points in the [ICON_Capital] Capital. Receive +1 [ICON_Governor] Governor Title and +1 [ICON_TradeRoute] Trade Route capacity upon unlocking the Political Philosophy civic. [ICON_Governor] Governors provide +3% [ICON_Science] Science and +3% [ICON_Culture] Culture to their cities for each Title.'),
		('LOC_AGENDA_CHEOMSEONGDAE_NAME', -- Changing the name because the new leader ability name is a reference to Cheomseongdae.
		'Butterflies and Bees'),
		-- Unique District
		('LOC_DISTRICT_SEOWON_DESCRIPTION',
		'A district unique to Korea for scientific endeavors. Replaces the Campus. +4 [ICON_SCIENCE] Science. -1 [ICON_Science] Science for each adjacent district. Provides +1 [ICON_Science] Science to adjacent Mines and +1 [ICON_Food] Food to adjacent Farms. Must be built on Hills.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_KOREAN_HWACHA_DESCRIPTION',
		'Korean unique Renaissance Era unit that replaces the Field Cannon. Stronger than the Field Cannon. Cannot move and attack in the same turn.'),
--=============================================================================================================
-- MAPUCHE
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MAPUCHE_TOQUI_NAME',
		'Patagonian Heritage'),
		('LOC_TRAIT_CIVILIZATION_MAPUCHE_TOQUI_DESCRIPTION',
		'+1 [ICON_Production] Production from tiles with Breathtaking Appeal. Rainforest, Marsh, and Floodplains do not reduce Appeal. Building a Plantation triggers a Culture Bomb. Theater Squares, Industrial Zones, Commercial Hubs, and Harbors receive a standard adjacency bonus from Mountains. Units receive +1 [ICON_Movement] Movement when starting a turn adjacent to a Mountain.'),
		('P0K_LOC_PATAGONIA_SCIENCE',
		'+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'),
		('P0K_LOC_PATAGONIA_CULTURE',
		'+{1_num} [ICON_CULTURE] Culture from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'),
		('P0K_LOC_PATAGONIA_FAITH',
		'+{1_num} [ICON_FAITH] Faith from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'),
		('P0K_LOC_PATAGONIA_PRODUCTION',
		'+{1_num} [ICON_PRODUCTION] Production from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'),
		('P0K_LOC_PATAGONIA_GOLD',
		'+{1_num} [ICON_GOLD] Gold from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'),
		('LOC_P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE_NAME',
		'Patagonian Heritage'),
		('LOC_P0K_MAPUCHE_ABILITY_PATAGONIAN_HERITAGE_DESCRIPTION',
		'+1 [ICON_Movement] Movement when starting a turn next to a Mountain.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_LAUTARO_ABILITY_NAME',
		'Spirit of Tucapel'),
		('LOC_P0K_LAUTARO_ABILITY_DESCRIPTION',
		'Cities with a [ICON_Governor] Governor generate +5% [ICON_Culture] Culture and +5% [ICON_Production] Production, and military units trained in these cities receive +10% combat experience. These bonuses are tripled in cities not founded by the Mapuche. +10 [ICON_Strength] Combat Strength against Free Cities and civilizations that are in a [ICON_Glory_Golden_Age] Golden Age. Defeating an enemy unit within the borders of an enemy city causes that city to lose 20 Loyalty. [ICON_Governor] Governors exert +4 Loyalty towards all cities within 9 tiles.'),
		('LOC_AGENDA_SPIRIT_OF_TUCAPEL_NAME',
		'Swift Hawk'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_CHEMAMULL_DESCRIPTION',
		'Unlocks the Builder ability to construct a Chemamull, unique to Mapuche.[NEWLINE][NEWLINE]+1 [ICON_Faith] Faith and +1 [ICON_Production] Production. [ICON_CULTURE] Culture equal to 75% of the tile''s Appeal. Additional [ICON_Faith] Faith and [ICON_TOURISM] Tourism after unlocking the Flight technology. Can only be built on tiles with Breathtaking Appeal.'),
		-- Unique Unit
		('LOC_UNIT_MAPUCHE_MALON_RAIDER_DESCRIPTION',
		'Mapuche unique Renaissance Era unit. +5 [ICON_Strength] Combat Strength bonus if within 4 tiles of friendly territory. Pillaging costs only 1 [ICON_Movement] Movement.'), -- Just wording changes.
--=============================================================================================================
-- MONGOLIA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MONGOLIAN_ORTOO_NAME',
		'Örtege'),
		('LOC_TRAIT_CIVILIZATION_MONGOLIAN_ORTOO_DESCRIPTION',
		'+100% [ICON_Production] Production towards Traders. Sending a [ICON_TradeRoute] Trade Route immediately creates a [ICON_TradingPost] Trading Post in the destination city. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Culture] Culture and +1 [ICON_Production] Production for passing through [ICON_TradingPost] Trading Posts in Mongolian cities. +1 [ICON_VisLimited] Diplomatic Visibility level for civilizations with a Mongolian [ICON_TradingPost] Trading Post in any city. Units receive double the usual [ICON_Strength] Combat Bonus for having a higher level of [ICON_VisLimited] Diplomatic Visibility than their opponent.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_GENGHIS_KHAN_ABILITY_NAME',
		'Mongol Terror'),
		('LOC_TRAIT_LEADER_GENGHIS_KHAN_ABILITY_DESCRIPTION',
		'Begin the game with [ICON_RESOURCE_HORSES] Horses and [ICON_RESOURCE_IRON] Iron visible. Strategic resources provide +2 [ICON_Production] Production and +1 [ICON_Science] Science. All cavalry units gain +3 [ICON_Strength] Combat Strength and have a chance to capture defeated enemy cavalry units. Siege and support units gain +2 [ICON_Movement] Movement when starting a turn adjacent to a light cavalry unit or a Keshik.'),
		('LOC_P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR_NAME',
		'Mongol Terror'),
		('LOC_P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR_DESCRIPTION',
		'+2 [ICON_Movement] Movement when beginning a turn adjacent to a light cavalry unit or a Keshik.'),
		--	Unique Building
		('LOC_BUILDING_ORDU_EXPANSION2_DESCRIPTION',
		'A building unique to Mongolia that replaces the Stable. +1 [ICON_Amenities] Amenity and +1 [ICON_Culture] Culture. No maintenance cost. Heavy and light cavalry units trained in this city gain +1 [ICON_MOVEMENT] Movement. +25% combat experience for all cavalry and siege units trained in this city. Increases Strategic resource Stockpiles by 10 (on Standard Speed).[NEWLINE][NEWLINE]May not be built in an Encampment district that already has a Barracks.'),
		-- Unique Unit
		('LOC_UNIT_MONGOLIAN_KESHIG_NAME',
		'Keshik'),
		('LOC_UNIT_MONGOLIAN_KESHIG_DESCRIPTION',
		'Mongolian unique Medieval Era unit that replaces the Crossbowman. Ranged cavalry unit with 4 [ICON_Movement] Movement. Civilian and support units in formation with the Keshik inherit its [ICON_Movement] Movement.'),
--=============================================================================================================
-- NETHERLANDS
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_GROTE_RIVIEREN_NAME',
		'Dutch East India Company'),
		('LOC_TRAIT_CIVILIZATION_GROTE_RIVIEREN_DESCRIPTION',
		'Receive one extra Economic policy slot in any [ICON_Government] Government. +1 [ICON_TradeRoute] Trade Route capacity for each Trade ([ICON_Gold]) City-State that you are Suzerain of. Traders generate +1 [ICON_GreatAdmiral] Great Admiral point while traveling within 3 tiles of any Harbor. +1 [ICON_Amenities] Amenity and +1 [ICON_Housing] Housing from Harbors. Completing a Harbor triggers a Culture Bomb.'), -- The game is bugged to only show the original description in-game, so adding this in. 
		('LOC_TRAIT_CIVILIZATION_GROTE_RIVIEREN_EXPANSION2_DESCRIPTION',
		'Receive one extra Economic policy slot in any [ICON_Government] Government. +1 [ICON_TradeRoute] Trade Route capacity for each Trade ([ICON_Gold]) City-State that you are Suzerain of. Traders generate +1 [ICON_GreatAdmiral] Great Admiral point while traveling within 3 tiles of any Harbor. +1 [ICON_Amenities] Amenity and +1 [ICON_Housing] Housing from Harbors. Completing a Harbor triggers a Culture Bomb.'), -- The game is bugged to only show the original description in-game, so adding this in. 
		-- Leader Unique Ability
		('LOC_TRAIT_RADIO_ORANJE_DESCRIPTION',
		'If constructed outside of the [ICON_Capital] Capital, the Government Plaza provides the same bonuses as the Palace: +2 [ICON_Amenities] Amenities, +1 [ICON_Housing] Housing, +2 [ICON_Science] Science, +1 [ICON_Culture] Culture, +2 [ICON_Production] Production, and +5 [ICON_Gold] Gold. [ICON_TradeRoute] Trade Routes to Dutch cities gain +2 [ICON_Food] Food and +2 [ICON_Production] Production. [ICON_TradeRoute] Trade Routes to foreign cities gain +4 [ICON_Gold] Gold and +2 [ICON_Culture] Culture. The first [ICON_Envoy] Envoy sent to each City-State counts as two [ICON_Envoy] Envoys.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_POLDER_DESCRIPTION',
		'Unlocks the Builder ability to construct a Polder, unique to the Netherlands.[NEWLINE][NEWLINE]+1 [ICON_FOOD] Food, +1 [ICON_Production] Production, and +0.5 [ICON_Housing] Housing. +1 [ICON_FOOD] Food for each adjacent Polder. +1 [ICON_Gold] Gold for each adjacent Luxury resource. Additional [ICON_Food] Food, [ICON_PRODUCTION] Production, and [ICON_GOLD] Gold while advancing through the Technology and Civics trees. Must be placed on a Coast or Lake tile adjacent to 2 or more passable land tiles. Increases the [ICON_Movement] Movement Cost of its tile to 3.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_DE_ZEVEN_PROVINCIEN_DESCRIPTION',
		'Netherlands unique Renaissance Era unit that replaces the Frigate. +7 [ICON_Strength] Combat Strength when attacking districts.'),
--=============================================================================================================
-- SCOTLAND
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT_DESCRIPTION',
		'Happy cities generate an additional +5% [ICON_SCIENCE] Science and +5% [ICON_PRODUCTION] Production. +1 [ICON_GreatScientist] Great Scientist point from Campus districts and +1 [ICON_GreatEngineer] Great Engineer point from Industrial Zone districts in Happy cities. All of these bonuses are doubled in Ecstatic cities. [ICON_TradeRoute] Trade Routes to Scottish cities gain +2 [ICON_Gold] Gold and +1 [ICON_Science] Science per specialty district in the destination city.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_BANNOCKBURN_NAME',
		'Last of the Free'),
		('LOC_TRAIT_LEADER_BANNOCKBURN_DESCRIPTION',
		'[ICON_Citizen] Citizens exert +0.5 Loyalty to their city when a district project is active. Completing a district project grants +10% [ICON_GreatPerson] Great People points for each building in that district. Training military units grants a burst of [ICON_Science] Science equal to 15% of the [ICON_Production] Production cost. Military units earn +25% combat experience when fighting in or adjacent to Scottish territory. Gain access to the War of Liberation casus belli after unlocking the Defensive Tactics civic.'),
		('LOC_P0K_SCOTLAND_ABILITY_LAST_OF_FREE_NAME',
		'Last of the Free'),
		('LOC_P0K_SCOTLAND_ABILITY_LAST_OF_FREE_DESCRIPTION',
		'Receive +25% combat experience when fighting in or adjacent to Scottish territory.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_GOLF_COURSE_XP2_DESCRIPTION',
		'Unlocks the Builder ability to construct a Golf Course, unique to Scotland.[NEWLINE][NEWLINE]+2 [ICON_AMENITIES] Amenities, +1 [ICON_Housing] Housing, +1 [ICON_Culture] Culture, +1 [ICON_Production] Production, and +1 [ICON_GOLD] Gold. +1 Appeal. +1 [ICON_CULTURE] Culture for each adjacent Entertainment Complex, Water Park, Ski Resort, or Seaside Resort. Additional [ICON_HOUSING] Housing, [ICON_Production] Production, [ICON_Gold] Gold, and [ICON_Tourism] Tourism while advancing through the Technology and Civics trees. Cannot be placed on Desert or Desert Hills. One per city.'),
		-- Unique Unit
		('LOC_UNIT_SCOTTISH_HIGHLANDER_DESCRIPTION',
		'Scottish unique Industrial Era unit that replaces the Ranger. Stronger than the Ranger. +5 [ICON_Strength] Combat Strength bonus when fighting in Hills and Woods.'),
--=============================================================================================================
-- ZULU
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_ZULU_ISIBONGO_DESCRIPTION',
		'Cities with a garrisoned unit gain +3 Loyalty and +1 [ICON_Amenities] Amenity, doubling if the garrisoned unit is a [ICON_Corps] Corps or [ICON_Army] Army. Units that conquer a city will automatically upgrade into a [ICON_Corps] Corps or [ICON_Army] Army if the prerequisite civics are unlocked. [ICON_Gold] Gold and resource costs for unit upgrades are discounted 50%.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_AMABUTHO_DESCRIPTION',
		'+1 [ICON_Governor] Governor Title from the Government Plaza and each of its buildings. Cities with a [ICON_Governor] Governor receive an additional [ICON_Ranged] Ranged strike. Military units trained in cities with a [ICON_Governor] Governor begin with a free [ICON_Promotion] Promotion. May form [ICON_Corps] Corps after unlocking the Mercenaries civic and [ICON_Army] Armies after unlocking the Nationalism civic). [ICON_Corps] Corps and [ICON_Army] Armies receive +5 [ICON_STRENGTH] Combat Strength.'),
		-- Unique District
		('LOC_DISTRICT_IKANDA_DESCRIPTION',
		'A district unique to Zulu for military facilities. Replaces the Encampment. Provides +1 [ICON_Housing] Housing. Buildings in this district provide +1 [ICON_Science] Science and +1 [ICON_Culture] Culture. Allows [ICON_Corps] Corps and [ICON_Army] Armies to be trained after unlocking the prerequisite civics. +25% [ICON_Production] Production towards [ICON_Corps] Corps and [ICON_Army] Armies.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_ZULU_IMPI_DESCRIPTION',
		'Zulu unique Medieval Era unit that replaces the Pikeman. Cheaper than the Pikeman, with a lower maintenance cost, stronger Flanking bonus, and faster combat experience generation.');