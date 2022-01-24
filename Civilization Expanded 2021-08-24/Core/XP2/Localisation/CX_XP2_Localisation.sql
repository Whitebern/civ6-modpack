--=============================================================================================================
--	Civilizations Expanded: Localisation (Gathering Storm)
--	By p0kiehl
--=============================================================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--=============================================================================================================
-- CANADA
--============================================================================================================= 
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_FACES_OF_PEACE_NAME',
		'The Last Best West'),
		('LOC_TRAIT_CIVILIZATION_FACES_OF_PEACE_DESCRIPTION',
		'Begin the game with a free [ICON_Governor] Governor Title. +25% [ICON_Production] Production towards Builders, Settlers, Traders, and City Center buildings in cities with a [ICON_Governor] Governor. +1 [ICON_Food] Food and +1 [ICON_Production] Production from all Tundra and Snow tiles, doubling for City Centers. Water tiles adjacent to Tundra or Snow terrain provide +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold.' ),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_LAST_BEST_WEST_NAME',
		'The Sunny Way'),
		('LOC_TRAIT_LEADER_LAST_BEST_WEST_DESCRIPTION',
		'Woods provide +1 [ICON_Science] Science. If adjacent to a River, Woods also provide +2 [ICON_Gold] Gold and +1 [ICON_Production] Production. Specialty districts receive a standard adjacency bonus from Woods. Completing a Harbor or an Industrial Zone grants +1 [ICON_Envoy] Envoy.'),
		('LOC_P0K_DISTRICT_FOREST_2_SCIENCE',
		'+{1_num} [ICON_Science] Science from the adjacent Woods tile(s).'),
		('LOC_P0K_DISTRICT_FOREST_2_CULTURE',
		'+{1_num} [ICON_Culture] Culture from the adjacent Woods tile(s).'),
		('LOC_P0K_DISTRICT_FOREST_2_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent Woods tile(s).'),
		('LOC_P0K_DISTRICT_FOREST_2_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Woods tile(s).'),
		('LOC_P0K_DISTRICT_FOREST_2_GOLD',
		'+{1_num} [ICON_Gold] Gold from the adjacent Woods tile(s).'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_ICE_HOCKEY_RINK_DESCRIPTION',
		'Unlocks the Builder ability to construct an Ice Hockey Rink, unique to Canada.[NEWLINE][NEWLINE]1 [ICON_AMENITIES] Amenity, +1 [ICON_Housing] Housing, +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold. +2 Appeal. +1 [ICON_CULTURE] Culture for each adjacent Tundra or Snow tile. +4 [ICON_CULTURE] Culture if adjacent to a Stadium. +Additional [ICON_Food] Food, [ICON_Production] Production, [ICON_Gold] Gold, and [ICON_TOURISM] Tourism while advancing through the Civics and Technology trees. Can be built on Tundra or Snow tiles. One per city.'),
		-- Unique Unit
		('LOC_UNIT_CANADA_MOUNTIE_DESCRIPTION',
		'Canadian unique Modern era unit that replaces Cavalry. Can create a National Park. +5 [ICON_Strength] Combat Strength when fighting within 2 tiles of a National Park. Additional +5 [ICON_Strength] Combat Strength if the National Park is Canadian.'),
--=============================================================================================================
-- ELEANOR OF AQUITAINE
--============================================================================================================= 
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_ELEANOR_LOYALTY_DESCRIPTION',
		'+100% [ICON_GreatMusician] Great Musician points. Receive a random [ICON_CivicBoosted] Inspiration upon earning a [ICON_GreatMusician] Great Musician. Amphitheaters receive 1 slot for [ICON_GreatWork_Music] Great Works of Music. All [ICON_GreatWork_Portrait] Great Works exert -1 Loyalty per turn to foreign cities within 9 tiles. Foreign cities that rebel due to Loyalty and are receiving the most Loyalty pressure from Eleanor immediately join Eleanor''s civilization, skipping the Free City stage.'),
--=============================================================================================================
-- HUNGARY
--============================================================================================================= 
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_PEARL_DANUBE_DESCRIPTION',
		'Cities founded on a River receive a free Water Mill. +50% [ICON_Production] Production towards districts and buildings constructed across a River from a City Center. Campus, Theater Square, Holy Site, and Industrial Zone districts receive a major adjacency bonus from Rivers.'),
		-- Leader Unique Ability (No need for a separate Localisation file for Matthias, becuase his ability is worded the same with or without the Ethiopia DLC).
		('LOC_TRAIT_LEADER_RAVEN_KING_DESCRIPTION',
		'Receive +1 to all type bonuses from City-State tributaries. Levying troops from a City-State awards +2 [ICON_Envoy] Envoys with that City-State. Levied units gain +2 [ICON_Movement] Movement and +5 [ICON_Strength] Combat Strength. [ICON_Gold] Gold and resource costs to upgrade Levied units are discounted 75%. Gain access to the Black Army unique unit after unlocking the Castles technology.'),
		-- City-State Bonus Text
		('LOC_P0K_HUNGARY_MINOR_CIV_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Science] Science in the [ICON_Capital] Capital and in every Library building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_SCIENTIFIC_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Science] Science in every University and Consulate building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_SCIENTIFIC_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Science] Science in every Research Lab and Chancery building (Raven King).'),

		('LOC_P0K_HUNGARY_MINOR_CIV_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Culture] Culture in the [ICON_Capital] Capital and in every Amphitheater building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_CULTURAL_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Culture] Culture in every Art Museum, Archeological Museum, and Consulate building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_CULTURAL_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Culture] Culture in every Broadcast Center and Chancery building (Raven King).'),

		('LOC_P0K_HUNGARY_MINOR_CIV_RELIGIOUS_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Faith] Faith in the [ICON_Capital] Capital and in every Shrine building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_RELIGIOUS_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Faith] Faith in every Temple and Consulate building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_RELIGIOUS_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Faith] Faith in every worship and Chancery building (Raven King).'),

		('LOC_P0K_HUNGARY_MINOR_CIV_MILITARISTIC_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in the [ICON_Capital] Capital and in every city with a Barracks or Stable when producing units (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_MILITARISTIC_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in every city with an Armory or Consulate building when producing units. Receive +4 [ICON_Production] Production if it has both these buildings (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_MILITARISTIC_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in every city with a Military Academy or Chancery building when producing units. Receive +6 [ICON_Production] Production if it has both these buildings (Raven King).'),

		('LOC_P0K_HUNGARY_MINOR_CIV_INDUSTRIAL_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in the [ICON_Capital] Capital and in every city with a Workshop building when producing wonders, buildings, and districts (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_INDUSTRIAL_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in every city with a Factory or Consulate building when producing wonders, buildings, and districts. Receive +4 [ICON_Production] Production if it has both these buildings (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_INDUSTRIAL_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Production] Production in every city with a Chancery or Power Plant building when producing wonders, buildings, and districts. Receive +6 [ICON_Production] Production if it has both a Chancery and a Power Plant building (Raven King).'),

		('LOC_P0K_HUNGARY_MINOR_CIV_TRADE_TRAIT_SMALL_INFLUENCE_BONUS',
		'+1 [ICON_Gold] Gold in the [ICON_Capital] Capital and in every Market or Lighthouse building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_TRADE_TRAIT_MEDIUM_INFLUENCE_BONUS',
		'+1 [ICON_Gold] Gold in every Bank, Shipyard, and Consulate building (Raven King).'),
		('LOC_P0K_HUNGARY_MINOR_CIV_TRADE_TRAIT_LARGE_INFLUENCE_BONUS',
		'+1 [ICON_Gold] Gold in every Stock Exchange, Seaport, and Chancery building (Raven King).'),
		-- Leader Unique Unit
		('LOC_UNIT_HUNGARY_BLACK_ARMY_DESCRIPTION',
		'Hungarian unique Medieval Era unit when Matthias Corvinus is the leader. Replaces the Courser. +3 [ICON_Strength] Combat Strength for each adjacent Levied unit.'),
		-- Unique Building
		('LOC_BUILDING_THERMAL_BATH_DESCRIPTION',
		'A building unique to Hungary that replaces the Zoo. +2 [ICON_AMENITIES] Amenities, +2 [ICON_Housing] Housing, +2 [ICON_PRODUCTION] Production, +1 [ICON_Science] Science, and +1 [ICON_Culture] Culture, extending to each City Center within 6 tiles. Multiple copies of this building within 6 tiles of a City Center do not provide additional bonuses.[NEWLINE][NEWLINE]Grants +3 [ICON_TOURISM] Tourism and an additional +2 [ICON_AMENITIES] Amenities if there is at least one Geothermal Fissure in this city''s borders.'),
		-- Unique Unit
		('LOC_UNIT_HUNGARY_HUSZAR_DESCRIPTION',
		'Hungarian unique Industrial era unit that replaces Cavalry. +3 [ICON_Strength] Combat Strength for each active Alliance.'),
--=============================================================================================================
-- INCA
--============================================================================================================= 
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_GREAT_MOUNTAINS_DESCRIPTION',
		'Each city receives a free Builder upon acquiring its first Mountain tile. Mountains provide +2 [ICON_PRODUCTION] Production. Mountains gain +1 [ICON_FOOD] Food for each adjacent Terrace Farm. +2 [ICON_Gold] Gold and +1 [ICON_Production] from resources adjacent to a Mountain. +3 [ICON_Housing] Housing and +0.3 [ICON_Production] Production per [ICON_Citizen] Citizen in cities with a [ICON_Governor] Governor.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN_NAME',
		'Earth-Shaker'),
		('LOC_TRAIT_LEADER_PACHACUTI_QHAPAQ_NAN_DESCRIPTION',
		'Specialty districts receive a minor adjacency bonus from Hills. All units ignore the [ICON_Movement] Movement costs of Hills. [ICON_TradeRoute] Trade Routes to Incan cities gain +1 [ICON_Food] Food and +1 [ICON_Production] Production for each Mountain in the origin city. Traders generate +1 [ICON_GreatEngineer] Great Engineer point per turn while traveling adjacent to Mountains. Gain access to the Qhapaq Ñan unique improvement after unlocking the Foreign Trade civic.'),
		('LOC_P0K_INCA_HILLS_SCIENCE',
		'+{1_num} [ICON_Science] Science from the adjacent Hills tile(s).'),
		('LOC_P0K_INCA_HILLS_CULTURE',
		'+{1_num} [ICON_Culture] Culture from the adjacent Hills tile(s).'),
		('LOC_P0K_INCA_HILLS_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent Hills tile(s).'),
		('LOC_P0K_INCA_HILLS_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Hills tile(s).'),
		('LOC_P0K_INCA_HILLS_GOLD',
		'+{1_num} [ICON_Gold] Gold from the adjacent Hills tile(s).'),
		('LOC_P0K_INCA_ABILITY_EARTHSHAKER_NAME',
		'Earth-Shaker'),
		('LOC_P0K_INCA_ABILITY_EARTHSHAKER_DESCRIPTION',
		'Ignores the [ICON_Movement] Movement cost of Hills.'),
		-- Leader Unique Improvement
		('LOC_IMPROVEMENT_MOUNTAIN_ROAD_DESCRIPTION',
		'Unlocks the Builder ability to construct a Qhapaq Ñan, unique to the Inca when Pachacuti is the leader.[NEWLINE][NEWLINE]+1 [ICON_Gold] Gold. Acts as a portal on a Mountain range, allowing units to move into it and exit from another portal at the cost of 2 [ICON_Movement] Movement. [ICON_TradeRoute] Trade Routes traveling through a Qhapaq Ñan multiply the [ICON_Gold] Gold they get from districts at their destination. Can only be built on an adjacent Mountain tile. Cannot be pillaged or removed.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_TERRACE_FARM_DESCRIPTION',
		'Unlocks the Builder ability to construct a Terrace Farm, unique to the Inca.[NEWLINE][NEWLINE]+1 [ICON_FOOD] Food and +1 [ICON_Housing] Housing. +1 [ICON_FOOD] Food for each adjacent Mountain. +2 [ICON_PRODUCTION] Production for each adjacent Aqueduct. +1 [ICON_PRODUCTION] Production if adjacent to a source of fresh water. Additional [ICON_FOOD] Food, [ICON_Production] Production, [ICON_Housing] Housing, and [ICON_Tourism] Tourism while advancing through the Technology and Civics trees. Can be placed on Grassland Hills, Plains Hills, Desert Hills, and Tundra Hills.'),
		-- Unique Unit
		('LOC_UNIT_INCA_WARAKAQ_DESCRIPTION',
		'Incan unique Medieval Era unit that replaces the Skirmisher. Stronger than the Skirmisher. May attack twice in one turn if there is enough remaining [ICON_Movement] Movement.'),
--=============================================================================================================
-- MALI
--============================================================================================================= 
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MALI_GOLD_DESERT_DESCRIPTION',
		'+1 [ICON_Faith] Faith and +1 [ICON_Food] Food from all Desert tiles, doubling for City Centers. Each city immediately receives a [ICON_TradingPost] Trading Post and a free heavy cavalry unit upon acquiring its first Desert tile. Completing a [ICON_TradeRoute] Trade Route grants +1 [ICON_Glory_Normal_Age] Era Score. May purchase Commercial Hub buildings with [ICON_Faith] Faith. Mines provide -1 [ICON_PRODUCTION] Production and +4 [ICON_GOLD] Gold. -30% [ICON_PRODUCTION] Production towards buildings and units.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_SAHEL_MERCHANTS_DESCRIPTION',
		'[ICON_TradeRoute] Trade Routes to foreign cities gain +1 [ICON_Food] Food and +1 [ICON_GOLD] Gold for each flat Desert tile in the origin city. Earning a [ICON_Glory_Golden_Age] Golden Age grants +2 [ICON_TradeRoute] Trade Route capacity. Traders generate +1 [ICON_GreatMerchant] Great Merchant point per turn while traveling on or adjacent to Desert terrain. May purchase districts with [ICON_Gold] Gold.'),
		-- Unique District
		('LOC_DISTRICT_SUGUBA_DESCRIPTION',
		'A district unique to Mali specializing in finance and trade that replaces the Commercial Hub. +1 [ICON_Amenities] Amenity and +1 [ICON_Housing] Housing. Units, buildings, and districts are 20% cheaper to purchase with [ICON_GOLD] Gold and [ICON_FAITH] Faith in this city.[NEWLINE][NEWLINE]+2 [ICON_Gold] Gold bonus for each adjacent Holy Site. +2 [ICON_Gold] Gold bonus from each tile containing a River edge. +1 [ICON_Gold] Gold bonus for every two adjacent district tiles.'),
		-- Unique Unit
		('LOC_UNIT_MALI_MANDEKALU_CAVALRY_DESCRIPTION',
		'Malian unique Medieval Era unit that replaces the Knight. Traders traveling on land within 4 tiles are immune to being plundered. Combat victories grant [ICON_GOLD] Gold equal to 100% of the [ICON_Strength] Combat Strength.'),
--=============================================================================================================
-- MAORI
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MAORI_MANA_DESCRIPTION',
		'Begin the game with the Sailing and Shipbuilding technologies unlocked. Units can enter Ocean tiles immediately. Embarked units receive +2 [ICON_Movement] Movement. Woods, Rainforest, and Reefs provide +1 [ICON_PRODUCTION] Production, gaining additional [ICON_PRODUCTION] Production upon unlocking the Mercantilism and Conservation civics. Fishing Boats provide +1 [ICON_FOOD] Food. Building a Fishing Boat triggers a Culture Bomb.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_KUPES_VOYAGE_DESCRIPTION',
		'Begin the game in an Ocean tile. +2 [ICON_SCIENCE] Science, +2 [ICON_CULTURE] Culture, +2 [ICON_Faith] Faith, and +2 [ICON_Gold] Gold per turn prior to settling the [ICON_Capital] Capital. Receive +3 [ICON_Envoy] Envoys, +1 [ICON_Citizen] Population, and a free Builder upon settling the [ICON_Capital] Capital. +3 [ICON_HOUSING] Housing and +1 [ICON_AMENITIES] Amenity from the Palace.'),
		-- Unique Building
		('LOC_BUILDING_MARAE_DESCRIPTION',
		'A building unique to the Māori that replaces the Amphitheater. +1 [ICON_CULTURE] Culture and [ICON_FAITH] Faith to all tiles in this city with a passable feature or Natural Wonder. After Flight is researched, all tiles in this city with a feature or Natural Wonder provide +1 [ICON_TOURISM] Tourism.'),
		-- Unique Unit
		('LOC_UNIT_MAORI_TOA_DESCRIPTION',
		'Māori unique Classical era unit that replaces the Swordsman. Adjacent enemy units receive -5 [ICON_STRENGTH] Combat Strength. Can build the unique Pā improvement.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_MAORI_PA_DESCRIPTION',
		'Unlocks the Toa ability to construct a Pā, unique to the Māori.[NEWLINE][NEWLINE]Occupying units gain +4 [ICON_Strength] Defense Strength and automatically receive 2 turns of fortification. Māori units occupying a Pā heal even after moving or attacking. Must be built on a Hill tile.'),
--=============================================================================================================
-- OTTOMANS
--=============================================================================================================	
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD_NAME',
		'Shadow of God'),
		('LOC_TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD_DESCRIPTION',
		'+2 [ICON_Food] Food and +1 [ICON_Housing] Housing from Commercial Hubs. +2 [ICON_Production] Production and +1 [ICON_Amenities] Amenity from Holy Sites. +50% [ICON_Production] Production towards siege units. Siege units receive +5 [ICON_Strength] Combat Strength against district defenses. Conquered cities do not lose [ICON_Citizen] Population. Cities not founded by the Ottomans gain +4 Loyalty, +1 [ICON_AMENITIES] Amenity, and +1 [ICON_Housing] Housing.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_SULEIMAN_GOVERNOR_NAME',
		'Age of Splendor'),
		('LOC_TRAIT_LEADER_SULEIMAN_GOVERNOR_DESCRIPTION',
		'Patronage of [ICON_GreatPerson] Great People with [ICON_Gold] Gold or [ICON_Faith] Faith is discounted by 20%. Unlocking a new [ICON_Government] Goverment tier grants +2 [ICON_Governor] Governor Titles. Gain access to the exclusive Grand Vizier unique [ICON_Governor] Governor. Gain access to the Barbary Corsair unique unit upon unlocking the Medieval Faires civic.'),
		('LOC_GOVERNOR_IBRAHIM_DESCRIPTION',
		'Suleiman''s vizier {LOC_GOVERNOR_IBRAHIM_NAME} is a Military and Diplomacy focused governor. In addition to having a unique promotion tree, Ibrahim is the only [ICON_Governor] Governor that can be assigned to another civilization''s [ICON_Capital] Capital, as well as any domestic city. He is well suited for improving infrastructure and influencing military operations but is also a skilled diplomat, able to ease tensions with rivals.'),
		('LOC_GOVERNOR_PROMOTION_KHASS_ODA_BASHI_DESCRIPTION',
		'+1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] to this city and your other cities within 9 tiles.'),
		-- Leader Unique Unit
		('LOC_UNIT_OTTOMAN_BARBARY_CORSAIR_DESCRIPTION',
		'Ottoman unique Medieval era naval unit that replaces the Privateer when Suleiman is the leader. Coastal raiding costs no [ICON_Movement] Movement. Can only be seen by other naval raiders or units that are directly adjacent. Reveals other naval raiders within sight range.'),
		-- Unique Building
		('LOC_BUILDING_GRAND_BAZAAR_DESCRIPTION',
		'A building unique to the Ottomans that replaces the Bank. Grants an additional +1 [ICON_GreatMerchant] Great Merchant point per turn.  +1 [ICON_AMENITIES] Amenity from improved Luxury resources in this city. +1 Strategic resource accumulation in this city.'),
		-- Unique Unit
		('LOC_UNIT_SULEIMAN_JANISSARY_DESCRIPTION',
		'Ottoman unique Renaissance Era unit that replaces the Musketman. Higher [ICON_Strength] Combat Strength and cheaper than the Musketman. Begins with a free promotion. Cities require a [ICON_Citizen] Population of 2 or greater to train a Janissary. Cities founded by the Ottomans lose 1 [ICON_Citizen] Population upon training a Janissary.'),
--=============================================================================================================
-- PHOENICIA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES_NAME',  													
		'Phoenician Alphabet'),
		('LOC_TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES_DESCRIPTION',  													
		'Begin the game with the Writing technology unlocked. Coastal cities begin with a free [ICON_TradingPost] Trading Post and receive +25% [ICON_Production] Production towards their first specialty district. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Science] Science and +1 [ICON_Gold] Gold for every 5 tiles traveled. Traders generate +1 [ICON_GreatScientist] Great Scientist point while traveling within 3 tiles of any Campus.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_FOUNDER_CARTHAGE_DESCRIPTION',  													
		'Gain access to the Move [ICON_Capital] Capital unique project in cities with a Cothon. +50% [ICON_Production] Production towards buildings in the [ICON_Capital] Capital. Founded coastal cities on the same continent as the [ICON_Capital] Capital have 100% Loyalty. Settlers ignore [ICON_Movement] Movement penalties from embarking and disembarking and receive +2 [ICON_Movement] Movement and +2 Sight range while embarked. Founding the first Phoenician city on a foreign continent grants +2 [ICON_TradeRoute] Trade Route capacity.'),
		('LOC_PROJECT_COTHON_CAPITAL_MOVE_NAME',
		'Move [ICON_Capital] Capital'),
		-- Unique District
		('LOC_DISTRICT_COTHON_DESCRIPTION',	
		'A district unique to Phoenicia for naval activity. Replaces the Harbor. Removes the [ICON_Movement] Movement penalty for embarking and disembarking to and from this tile. Must be built on Water terrain adjacent to land.[NEWLINE][NEWLINE]Immediately grants a free naval unit. +1 [ICON_GreatMerchant] Great Merchant point in addition to the usual +1 [ICON_GreatAdmiral] Great Admiral point. +50% [ICON_PRODUCTION] Production towards Settlers, Traders, and naval units in this city. Cannot be built on Reef.'),
		-- Uniqe Unit (only wording changes)
		('LOC_UNIT_PHOENICIA_BIREME_DESCRIPTION',
		'Phoenician unique Ancient Era unit that replaces the Galley. Increased [ICON_Strength] Combat Strength and [ICON_Movement] Movement. Embarked Traders within 4 tiles are immune to being plundered.'),
--=============================================================================================================
-- SWEDEN
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_NOBEL_PRIZE_DESCRIPTION',
		'Campus districts provide [ICON_Production] Production equal to their [ICON_Science] Science adjacency bonus. +25% [ICON_GreatPerson] Great Person points in cities that have at least three specialty districts. Earning a [ICON_GreatPerson] Great Person grants 50 [ICON_Favor] Diplomatic Favor. +20% [ICON_Production] Production towards district projects. Cities receive +1 [ICON_Amenities] Amenity while a district project is active.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_KRISTINA_AUTO_THEME_DESCRIPTION',
		'+50% [ICON_Production] Production towards the first building in each specialty district. These buildings provide double yields. Buildings with at least 3 [ICON_GreatWork_Portrait] Great Work slots and Wonders with at least 2 [ICON_GreatWork_Portrait] Great Work slots are automatically themed when all their slots filled. Gain access to the Queen''s Bibliotheque unique building for the Government Plaza.'),
		-- Leader Unique Building (only wording changes)
		('LOC_BUILDING_QUEENS_BIBLIOTHEQUE_DESCRIPTION',
		'A building unique to Kristina. +2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing. Grants one extra Wildcard policy slot in any [ICON_Government] Government. Has 2 slots for [ICON_GreatWork_WRITING] Great Works of Writing, [ICON_GreatWork_MUSIC] Great Works of Music, and any type of [ICON_GreatWork_Landscape] Great Work of Art. Awards +1 [Icon_Governor] Governor Title.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_OPEN_AIR_MUSEUM_DESCRIPTION',
		'Unlocks the Builder ability to construct an Open-Air Museum, unique to Sweden.[NEWLINE][NEWLINE]Grants +1 [ICON_Amenities] Amenity to this city. +2 [ICON_Culture] Culture, +1 [ICON_Gold] Gold, and +2 [ICON_Tourism] Tourism for each type of terrain (Snow, Tundra, Desert, Plains or Grassland) upon which at least one Swedish city is founded. Limited to one per city. Tiles with Open-Air Museums cannot be swapped.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_SWEDEN_CAROLEAN_DESCRIPTION',
		'Swedish unique Renaissance Era unit that replaces the Pike and Shot. Has more [ICON_Movement] Movement than the Pike and Shot. +3 [ICON_Strength] Combat Strength per unused [ICON_Movement] Movement.');
