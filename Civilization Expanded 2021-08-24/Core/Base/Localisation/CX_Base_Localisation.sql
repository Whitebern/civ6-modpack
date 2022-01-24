--=============================================================================================================
--	Civilizations Expanded: Localisation (Base Game)
--	By p0kiehl
--=============================================================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--=============================================================================================================
-- AMERICA 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_FOUNDING_FATHERS_NAME',
		'Manifest Destiny'),
		('LOC_TRAIT_CIVILIZATION_FOUNDING_FATHERS_EXPANSION2_DESCRIPTION',
		'All Diplomatic policy slots in the current [ICON_Government] Government are converted to Wildcard policy slots. +2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing to cities on America''s home continent. Tiles can be purchased for 50% less [ICON_Gold] Gold. When outside American territory, units receive +1 Sight and ignore the [ICON_Movement] Movement costs of terrain and features.'),
		('LOC_P0K_AMERICA_ABILITY_MANIFEST_DESTINY_NAME',
		'Manifest Destiny'),
		('LOC_P0K_AMERICA_ABILITY_MANIFEST_DESTINY_DESCRIPTION',
		'+1 Sight and ignores the [ICON_Movement] Movement costs of terrain and features when outside of American territory (Manifest Destiny).'),
		-- Leader Unique Ability (Rough Rider Teddy)
		('LOC_TRAIT_LEADER_ROOSEVELT_COROLLARY_ROUGH_RIDER_DESCRIPTION',
		'+25% [ICON_Production] Production towards Encampment buildings and Harbor buildings. Receive permanent Open Borders with all City-States. While sending a [ICON_TradeRoute] Trade Route to a City-State, each [ICON_Envoy] Envoy sent to that City-State counts as two. +4 [ICON_Gold] Gold, +2 [ICON_Science] Science, and +2 [ICON_Culture] Culture for each City-State that you are Suzerain of. Military units receive +5 [ICON_Strength] Combat Strength when fighting on America''s home continent. Gain access to the Rough Rider unique unit after unlocking the Ballistics technology.'), 
		-- Leader Unique Ability (Bull Moose Teddy)
		('LOC_TRAIT_LEADER_ANTIQUES_AND_PARKS_DESCRIPTION',
		'Builders trained in cities with a Natural Wonder receive +2 [ICON_Charges] Charges. +1 [ICON_Science] Science and +1 [ICON_Gold] Gold from tiles with Breathtaking Appeal adjacent to either a Natural Wonder, Mountain, or Reef. +1 [ICON_Culture] Culture and +1 [ICON_Gold] Gold from tiles with Breathtaking Appeal adjacent to either a World Wonder, Woods or Marsh. +1 Appeal from Marshes instead of the usual -1. +1 Appeal to all tiles in cities with a National Park.'),
		-- Leader Unique Ability (Default Teddy)
		('LOC_TRAIT_LEADER_ROOSEVELT_COROLLARY_DESCRIPTION',
		'Each active Military policy grants +1 [ICON_InfluencePerTurn] Influence point per turn. Specialty districts on tiles with Breathtaking Appeal provide +1 of the appropriate [ICON_GreatPerson] Great Person point. Yields from Natural Wonders are doubled. Military units receive +5 [ICON_Strength] Combat Strength when fighting on America''s home continent. Gain access to the Rough Rider unique unit after unlocking the Ballistics technology.'),
		-- Leader Unique Unit (only wording changes)
		('LOC_UNIT_AMERICAN_ROUGH_RIDER_EXPANSION2_DESCRIPTION',
		'American unique Industrial Era unit when Teddy Roosevelt is the leader. Replaces the Cuirassier. Earns [ICON_Culture] Culture from combat victories on America''s home continent. +10 [ICON_Strength] Combat Strength when fighting on Hills. Lower maintenance cost.'),
		-- Unique Building
		('LOC_BUILDING_FILM_STUDIO_DESCRIPTION',
		'A building unique to America that replaces the Broadcast Center. +1 [ICON_Amenities] Amenity. Bonus [ICON_Production] Production equal to the [ICON_Culture] Culture adjacency bonus of the Theater Square. +100% [ICON_Tourism] Tourism pressure from this city towards other civilizations in the Modern era. No maintenance cost.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_AMERICAN_P51_DESCRIPTION',
		'American unique Atomic Era air unit that replaces the Fighter. Gains +5 [ICON_Strength] Combat Strength against fighter aircraft, has +2 flight range, and accumulates +50% experience.'), 
--=============================================================================================================
-- ARABIA 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_LAST_PROPHET_NAME',
		'Seal of the Prophets'),
		('LOC_TRAIT_CIVILIZATION_LAST_PROPHET_DESCRIPTION',
		'Automatically receive the final [ICON_GreatProphet] Great Prophet when the penultimate one is earned. Receive a random [ICON_TechBoosted] Eureka each time another civilization earns a [ICON_GreatProphet] Great Prophet. Earning a [ICON_GreatProphet] Great Prophet grants +1 [ICON_TradeRoute] Trade Route capacity. [ICON_TradeRoute] Trade Routes exert +100% [ICON_Religion] Religious pressure. Missionaries receive +2 [ICON_Religion] Religion spreads. +1 [ICON_Science] Science and +1 [ICON_Gold] Gold for each city following Arabia''s [ICON_Religion] Religion.'),
		-- Leader Unique Ability		
		('LOC_TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH_DESCRIPTION',	
		'+100% [ICON_GreatScientist] Great Scientist points. May purchase Campus buildings with [ICON_Faith] Faith. The Worship Building for Arabia''s [ICON_Religion] Religion can be purchased by any civilization for just one-tenth of the usual [ICON_Faith] Faith cost. This Worship Building is enhanced to provide +10% to the [ICON_Science] Science, [ICON_Culture] Culture, and [ICON_Faith] Faith output of Arabian cities.'),
		-- Unique Building
		('LOC_BUILDING_MADRASA_DESCRIPTION',
		'A building unique to Arabia that replaces the University. Grants +2 [ICON_Housing] Housing instead of the usual +1, as well as +1 [ICON_Amenities] Amenity. Bonus [ICON_Faith] Faith equal to the [ICON_Science] Science adjacency bonus of the Campus.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_ARABIAN_MAMLUK_DESCRIPTION',
		'Arabian unique Medieval Era unit that replaces the Knight. Heals at the end of every turn, even after moving or attacking.'), 
--=============================================================================================================
-- BRAZIL 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_AMAZON_NAME',
		'Amazon Rainforest'),
		('LOC_TRAIT_CIVILIZATION_AMAZON_DESCRIPTION',
		'Rainforests provide +1 [ICON_Science] Science. If adjacent to a River, Rainforests also provide +1 [ICON_Food] Food and +1 [ICON_Production] Production. Specialty districts receive a standard adjacency bonus from Rainforests. +1 Appeal from Rainforests instead of the usual -1.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_MAGNANIMOUS_DESCRIPTION',
		'+50% [ICON_Production] Production towards district projects in the [ICON_Capital] Capital. Upon earning a [ICON_GreatPerson] Great Person, 20% of the [ICON_GreatPerson] Great Person point cost is refunded. Receive +2% [ICON_Science] Science for each [ICON_GreatPerson] Great Person ever earned, up to a maximum of 30%.'),
		-- Unique Districts
		('LOC_DISTRICT_STREET_CARNIVAL_EXPANSION2_DESCRIPTION',
		'A district unique to Brazil. Replaces the Entertainment Complex. Grants +2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing. Also unlocks the Carnival project, which grants an additional +1 [ICON_Amenities] Amenity when underway and a variety of [ICON_GreatPerson] Great Person points once completed. Cannot be built in a city with a Copacabana.'),
		('LOC_DISTRICT_WATER_STREET_CARNIVAL_EXPANSION2_DESCRIPTION',
		'A district unique to Brazil. Replaces the Water Park. Grants +2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing. Also unlocks the Carnival project, which grants an additional +1 [ICON_Amenities] Amenity when underway and a variety of [ICON_GreatPerson] Great Person points once completed. Cannot be built in a city with a Street Carnival. Cannot be built on Reef.'),
		('LOC_P0K_DISTRICT_JUNGLE_2_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Rainforest {1_Num : plural 1?tile; other?tiles;}.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_BRAZILIAN_MINAS_GERAES_DESCRIPTION',
		'Brazilian unique Industrial Era unit that replaces the Battleship. Stronger than the Battleship.'), 
--=============================================================================================================
-- CHINA
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_DYNASTIC_CYCLE_EXPANSION2_DESCRIPTION',
		'[ICON_TechBoosted] Eurekas and [ICON_CivicBoosted] Inspirations grant an additional +10% boost. The [ICON_Capital] Capital receives double [ICON_Amenities] Amenities, [ICON_Housing] Housing, [ICON_Science] Science, [ICON_Culture] Culture, [ICON_Production] Production, and [ICON_Gold] Gold from the Palace. +15% [ICON_Production] Production towards Wonders when in a [ICON_Glory_Golden_Age] Golden Age. Receive one extra Wildcard policy slot in any [ICON_Government] Government when in a [ICON_Glory_Dark_Age] Dark Age.'),
		-- Leader Unique Ability
	--	('LOC_TRAIT_LEADER_FIRST_EMPEROR_NAME',
	--	'Reforms of Li Si'),
		('LOC_TRAIT_LEADER_FIRST_EMPEROR_EXPANSION2_DESCRIPTION',
		'Unlocking the Political Philosophy civic grants a random [ICON_TechBoosted] Eureka, a random [ICON_CivicBoosted] Inspiration, and two free Builders in the [ICON_Capital] Capital. Builders receive +1 [ICON_Charges] Charge. May spend Builder [ICON_Charges] Charges to complete 15% of the original [ICON_Production] Production cost of Wonders from the Ancient and Classical eras. Wonders provide +4 [ICON_Science] Science. Canals may be built after unlocking the Masonry technology.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_GREAT_WALL_EXPANSION2_DESCRIPTION',
		'Unlocks the Builder ability to construct the Great Wall, unique to China.[NEWLINE][NEWLINE]+1 [ICON_Production] Production and +1 [ICON_GOLD] Gold. +2 [ICON_Gold] Gold for each adjacent Great Wall segment. Additional [ICON_Science] Science from adjacent segments and [ICON_Tourism] Tourism while advancing through the Technology tree. Provides +1 [ICON_Gold] Gold to all other adjacent improvements. Increases unit [ICON_Strength] Defense. Must be built in a line along the borders of your empire. Can only be pillaged (never destroyed) by natural disasters.'),
		-- Unique Unit
		('LOC_UNIT_CHINESE_CROUCHING_TIGER_DESCRIPTION',
		'Chinese unique Medieval Era unit that replaces the Crossbowman. Powerful unit with high [ICON_Strength] Combat Strength and an attacking [ICON_Range] Range of 1. Combat victories grant [ICON_Science] Science equal to 50% of the [ICON_Strength] Combat Strength of the defeated unit.'),
		('LOC_ABILITY_CROUCHING_TIGER_NAME',
		'Hidden Dragon'),
		('LOC_ABILITY_CROUCHING_TIGER_DESCRIPTION',
		'Combat victories grant [ICON_Science] Science equal to 50% of the [ICON_Strength] Combat Strength of the defeated unit.'),
--=============================================================================================================
-- EGYPT 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_ITERU_NAME',
		'Season of Inundation'),
		('LOC_TRAIT_CIVILIZATION_ITERU_EXPANSION2_DESCRIPTION',
		'Begin the game with the Irrigation technology unlocked. +2 [ICON_Gold] Gold and +1 [ICON_Culture] Culture from resources adjacent to a River. +20% [ICON_Production] Production towards districts and Wonders when placed adjacent to a River. Floods provide bonus [ICON_Food] Food, [ICON_Production] Production, and [ICON_Gold] Gold to affected tiles. Cities are immune to damage from Floods.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_MEDITERRANEAN_NAME',
		'Bride of the Mediterranean'),
		('LOC_TRAIT_LEADER_MEDITERRANEAN_EXPANSION2_DESCRIPTION',
		'+25% [ICON_Culture] Culture, [ICON_Production] Production, [ICON_Gold] Gold, and [ICON_Faith] Faith in the [ICON_Capital] Capital. Gain +1 [ICON_TradeRoute] Trade Route capacity and a free Trader upon unlocking the Foreign Trade civic. [ICON_TradeRoute] Trade Routes to other civilizations gain +4 [ICON_Gold] Gold and +2 [ICON_Production] Production. Incoming [ICON_TradeRoute] Trade Routes from other civilizations provide +2 [ICON_Food] Food to the originating foreign city and +2 [ICON_Gold] Gold to the receiving Egyptian city.'), 
		-- Unique Improvement
		('LOC_IMPROVEMENT_SPHINX_EXPANSION2_DESCRIPTION',
		'Unlocks the Builder ability to construct a Sphinx, unique to Egypt.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture and +1 [ICON_Faith] Faith. +1 [ICON_CULTURE] Culture if built on Desert terrain or Floodplains. +2 [ICON_Faith] Faith for each adjacent Wonder or Natural Wonder tile. +1 [ICON_Gold] Gold for each adjacent Luxury resource. +2 Appeal. Additional [ICON_CULTURE] Culture and [ICON_TOURISM] Tourism while advancing through the Civics and Technology trees. Cannot be built adjacent to another Sphinx or on Snow terrain.'),
		-- Unique Unit
		('LOC_UNIT_EGYPTIAN_CHARIOT_ARCHER_EXPANSION2_DESCRIPTION',
		'Egyptian unique Ancient Era unit that replaces the Heavy Chariot. Ranged unit. +2 [ICON_Movement] Movement when starting a turn in open terrain.'), 
--=============================================================================================================
-- ENGLAND 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_INDUSTRIAL_REVOLUTION_DESCRIPTION',
		'+50% [ICON_Production] Production towards Builders and Military Engineers. Military Engineers receive +2 [ICON_Charges] Charges. +25% [ICON_Production] Production towards Industrial Zones and Industrial Zone buildings. [ICON_Power] Powered buildings provide +4 of their respective [ICON_Power] Powered yields. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Science] Science, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold per Strategic resource in the destination city.'),
		-- Leader Unique Ability
		('LOC_TRAIT_CIVILIZATION_PAX_BRITANNICA_EXPANSION2_DESCRIPTION',
		'Cities on England''s home continent receive +50% [ICON_Science] Science from Campus buildings and +1 [ICON_Amenities] Amenity. Cities on foreign continents receive +50% [ICON_Production] Production from Industrial Zone buildings and +1 [ICON_Housing] Housing. Completing an Industrial Zone triggers a Culture Bomb. +1 [ICON_TradeRoute] Trade Route capacity for each type of Strategic resource improved in English territory. Gain access to the Redcoat unique unit after unlocking the Military Science technology.'),
		-- Leader Unique Unit (only wording changes)
		('LOC_UNIT_ENGLISH_REDCOAT_DESCRIPTION',
		'English unique Industrial Era unit when Victoria is the leader. Replaces the Line Infantry. +10 [ICON_Strength] Combat Strength when fighting on a continent other than that of the [ICON_Capital] Capital. No [ICON_Movement] Movement cost for disembarking.'),
		-- Unique District
		('LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_EXPANSION2_DESCRIPTION',
		'A district unique to England for naval activity. Replaces the Harbor. Removes the [ICON_Movement] Movement penalty for embarking and disembarking to and from this tile. Must be built on Water terrain adjacent to land.[NEWLINE][NEWLINE]+2 [ICON_GreatAdmiral] Great Admiral points instead of the usual +1. All wounded naval units within this city’s borders fully heal each turn. +1 [ICON_Movement] Movement for all naval units built in this city. Grants a major [ICON_Production] Production adjacency bonus to Industrial Zones. +2 [ICON_Gold] Gold and +4 Loyalty per turn when constructed on a foreign continent. Cannot be built on Reef.'),
		('P0K_LOC_DISTRICT_RND_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Royal Navy Dockyard.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_ENGLISH_SEADOG_DESCRIPTION',
		'English unique Renaissance Era unit that replaces the Privateer. Has a chance to capture defeated enemy naval units. Reveals naval raiders within Sight range. Can only be seen by adjacent enemy naval raiders.'),
--=============================================================================================================
-- FRANCE 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_WONDER_TOURISM_DESCRIPTION',
		'+20% [ICON_Production] Production towards Wonders in cities on France''s home continent. Wonders generate +100% [ICON_Tourism] Tourism and grant +2 [ICON_Envoy] Envoys when completed. Receive +1 [ICON_Favor] Diplomatic Favor per turn for every 100 [ICON_Tourism] Tourism per turn. +50% [ICON_GreatWriter] Great Writer, [ICON_GreatArtist] Great Artist, [ICON_GreatMusician] Great Musician, and [ICON_GreatMerchant] Great Merchant points. The Palace receives 4 extra slots for any type of [ICON_GreatWork_Portrait] Great Work.'),
		-- Leader Unique Ability (Black Queen Catherine)
		('P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_NAME',
		'Black Queen'),
		('P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_DESCRIPTION',
		'+100% [ICON_Production] Production towards the Diplomatic Quarter and its buildings. +1 [ICON_VisLimited] Diplomatic Visibility with all civilizations. Receive +2 Spy capacity and two Spies after unlocking the Castles technology. Each Spy starts as an Agent with a free [ICON_Promotion] Promotion. Successful offensive Spy missions grant 25% of the [ICON_Science] Science, [ICON_Culture] Culture, [ICON_Faith] Faith, and [ICON_Gold] Gold earned by the targeted city that turn.'),
		('LOC_AGENDA_BLACK_QUEEN_NAME',
		'House of Medici'),
		-- Leader Unique Ability (Magnificence Catherine)
		('LOC_TRAIT_LEADER_MAGNIFICENCES_NAME',
		'Magnificence and Patronage'),
		('LOC_TRAIT_LEADER_MAGNIFICENCES_DESCRIPTION',
		'+25% [ICON_Production] Production towards Theater Squares and their buildings. +1 [ICON_TradeRoute] Trade Route capacity for each Cultural ([ICON_Culture]) City-State that you are Suzerain of. Improved Luxury resources adjacent to Theater Squares or Châteaux receive +2 [ICON_CULTURE] Culture. Gain access to the Court Festival unique project in cities with a Theater Square.'),
		('LOC_PROJECT_ECOURT_FESTIVAL_DESCRIPTION', -- only wording changes
		'A unique project which provides +1 [ICON_Amenities] Amenity while active and upon completion awards a burst of [ICON_Culture] Culture and [ICON_Tourism] Tourism based on the number of excess copies of Luxury resources owned by France.'),
		-- Leader Unique Ability (Default Catherine)
		('LOC_TRAIT_LEADER_FLYING_SQUADRON_NAME',
		'Magnificence and Patronage'),
		('LOC_TRAIT_LEADER_FLYING_SQUADRON_DESCRIPTION',
		 '+25% [ICON_Production] Production towards Theater Squares and their buildings. +1 [ICON_TradeRoute] Trade Route capacity for each Cultural ([ICON_Culture] City-State that you are Suzerain of. +1 [ICON_VisLimited] Diplomatic Visibility with all civilizations. Receive +2 Spy capacity and two Spies after unlocking the Castles technology. Each Spy starts as an Agent with a free [ICON_Promotion] Promotion.'),		
		-- Unique Improvement
		('LOC_IMPROVEMENT_CHATEAU_EXPANSION2_DESCRIPTION',
		'Unlocks the Builder ability to construct a Château, unique to France.[NEWLINE][NEWLINE]+2 [ICON_Gold] Gold, +1 [ICON_Culture] Culture, +1 [ICON_Food] Food, and +0.5 [ICON_Housing] Housing. +2 [ICON_Gold] Gold if adjacent to a River. +1 [ICON_Culture] Culture for each adjacent Wonder or Natural Wonder. +1 Appeal. Additional [ICON_Culture] Culture from adjacent Wonders and Natural Wonders as well as [ICON_Tourism] Tourism after unlocking the Flight technology. Must be built adjacent to a Bonus or Luxury resource.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_FRENCH_GARDE_IMPERIALE_DESCRIPTION',
		'French unique Industrial Era unit that replaces the Line Infantry. +10 [ICON_Strength] Combat Strength when fighting on France''s home continent. Combat victories grant [ICON_GreatGeneral] Great General points.'),
--=============================================================================================================
-- GERMANY
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES_NAME',
		'Hanseatic League'),
		('LOC_TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES_DESCRIPTION',
		'Each city may construct one more district than usual (exceeding the normal limit based on [ICON_Citizen] Population). [ICON_TradeRoute] Trade Routes to German cities gain +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold for each specialty district in the destination city. +25% [ICON_Production] Production towards Universities, Factories, and Banks. These buildings provide double yields as well as +1 [ICON_Amenities] Amenity.'),
		-- Leader Unique Ability		
		('LOC_TRAIT_LEADER_HOLY_ROMAN_EMPEROR_DESCRIPTION',
		'+100% [ICON_Production] Production towards Encampments. Encampment buildings each provide +2 [ICON_Culture] Culture and +2 [ICON_Faith] Faith. Military units receive +7 [ICON_Strength] Combat Strength against City-State and Free City units. Land military unit combat victories against non-barbarian units grant [ICON_GreatGeneral] Great General points equal to 25% of the [ICON_Strength] Combat Strength of the defeated unit. May purchase land military units with [ICON_Faith] Faith.'),
		('LOC_ABILITY_BARBAROSSA_COMBAT_BONUS_VS_CITY_STATES_DESCRIPTION',
		'+7 [ICON_Strength] Combat Strength vs. City-State and Free City units. (Holy Roman Emperor)'),
		-- Unique District
		('LOC_DISTRICT_HANSA_EXPANSION2_DESCRIPTION',
		'A district unique to Germany for industrial activity. Replaces the Industrial Zone. +1 [ICON_TradeRoute] Trade Route capacity. +2 [ICON_Production] Production bonus for each adjacent Commercial Hub, Aqueduct, Canal, or Dam district. +1 [ICON_Production] Production bonus for each adjacent resource.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_GERMAN_UBOAT_DESCRIPTION',
		'German unique Modern Era unit that replaces the Submarine. Cheaper than the Submarine. +10 [ICON_Strength] Combat Strength when fighting on Ocean tiles. +1 Sight. Reveals other stealthed units.'),
--=============================================================================================================
-- GREECE
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_NAME',
		'Hierophany'),
		('LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_DESCRIPTION',
		'Begin the game with three random [ICON_CivicBoosted] Inspirations unlocked. +25% [ICON_Production] Production towards Wonders in cities with no more than one specialty district. Cities with a Wonder receive +2 [ICON_Science] Science, +2 [ICON_Culture] Culture, +2 [ICON_Gold] Gold, and +2 [ICON_Faith] Faith. Wonders exert -2 Loyalty per turn to foreign cities within 9 tiles.'),
		-- Leader Unique Ability (Gorgo)
		('LOC_TRAIT_LEADER_THERMOPYLAE_NAME',
		'Agoge'),
		('LOC_TRAIT_LEADER_THERMOPYLAE_DESCRIPTION',
		'Receive one extra Military policy slot in any [ICON_Government] Government. Military units receive +1 [ICON_Strength] Combat Strength for each active Military policy. +3 [ICON_Amenities] Amenities and +1 [ICON_Housing] Housing in the [ICON_Capital] Capital. +50% [ICON_Production] Production towards military units in the [ICON_Capital] Capital. Combat victories grant [ICON_Culture] Culture equal to 50% of the [ICON_Strength] Combat Strength of the defeated unit.'),
		('LOC_ABILITY_GORGO_POLICY_SLOT_COMBAT_BONUS_NAME',
		'Thermopylae'),
		('LOC_P0K_SPARTA_ABILITY_THERMOPYLAE_DESCRIPTION',
		'+1 [ICON_Strength] Combat Strength for each active Military policy.'),
		-- Leader Unique Ability (Pericles)
	--	('LOC_TRAIT_LEADER_SURROUNDED_BY_GLORY_NAME',
	--	'Delian League'),
		('LOC_TRAIT_LEADER_SURROUNDED_BY_GLORY_DESCRIPTION',
		'Receive one extra Wildcard policy slot in any [ICON_Government] Government. +5% [ICON_Culture] Culture and +5% [ICON_Gold] Gold for each City-State that you are Suzerain of. +25% [ICON_Production] Production towards Harbors and their buildings. Harbor buildings each provide +1 [ICON_Food] Food and +1 [ICON_Production] Production.'),
	--	('LOC_AGENDA_DELIAN_LEAGUE_NAME',
	--	'Surrounded by Glory'), -- switching the names of Pericles' agenda and Unique Ability.
		-- Unique District
		('LOC_DISTRICT_ACROPOLIS_EXPANSION2_DESCRIPTION',
		'A district unique to Greece for cultural sites. Replaces the Theater Square. Awards +1 [ICON_Envoy] Envoy when completed. +1 [ICON_InfluencePerTurn] Influence point per turn if adjacent to a Wonder.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture bonus for each adjacent district, increasing to +2 [ICON_Culture] Culture for an adjacent City Center. +2 [ICON_Culture] Culture bonus for each adjacent Wonder, Entertainment Complex, and Water Park. Can only be built on Hills.'),
		-- Unique Unit
		('LOC_UNIT_GREEK_HOPLITE_DESCRIPTION',
		'Greek unique Ancient Era unit that replaces the Spearman. No combat penalty against melee units. +10 [ICON_Strength] Combat Strength if adjacent to another Hoplite.'),
		('LOC_P0K_ABILITY_HOPLITE_NAME',
		'Hymn to Ares'),
		('LOC_P0K_ABILITY_HOPLITE_DESCRIPTION',
		'+10 [ICON_Strength] Combat Strength against melee units.'),
		('LOC_P0K_ABILITY_HOPLITE_MELEE_COMBAT_BONUS_DESCRIPTION',
		'+{1_Amount} [ICON_Strength] Combat Strength against melee units'),
		('LOC_ABILITY_HOPLITE_DESCRIPTION',
		'+10 [ICON_Strength] Combat Strength if adjacent to another Hoplite.'), -- just wording changes.
--=============================================================================================================
-- INDIA
--=============================================================================================================		
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_DHARMA_EXPANSION2_DESCRIPTION',
		'+50% [ICON_Faith] Faith from Holy Site buildings. Cities with a Worship Building receive [ICON_Food] Food, [ICON_Production] Production, and [ICON_Gold] Gold equal to 15% of their [ICON_Faith] Faith output. Each city receives +1 [ICON_Amenities] Amenity from all present [ICON_Religion] Religions as well as their Follower Belief bonuses.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_SATYAGRAHA_NAME',
		'Gospel of the Charkha'),
		('LOC_TRAIT_LEADER_SATYAGRAHA_DESCRIPTION',
		'One Military policy slot in each [ICON_Government] Government is turned into an Economic policy slot. +5 [ICON_Faith] Faith per turn for each known civilization that has founded a [ICON_Religion] Religion and is currently at peace. May purchase the first building in each specialty district with [ICON_Faith] Faith. Enemy civilizations receive double war weariness.'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_STEPWELL_EXPANSION2_DESCRIPTION',
		'Unlocks the Builder ability to construct a Stepwell, unique to India.[NEWLINE][NEWLINE]+1 [ICON_Food] Food and +1 [ICON_Housing] Housing. +1 [ICON_Faith] Faith for each adjacent Holy Site. +1 [ICON_Food] Food for each adjacent Farm. Additional [ICON_Faith] Faith, [ICON_Food] Food, [ICON_Housing] Housing, and [ICON_Tourism] Tourism while advancing through the Technology and Civics trees. Prevents [ICON_Food] Food loss during Droughts. Cannot be built on Hills or adjacent to another Stepwell.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_INDIAN_VARU_DESCRIPTION',
		'Indian unique Ancient Era unit that replaces the Heavy Chariot. Adjacent enemy units receive -5 [ICON_STRENGTH] Combat Strength.'),
--=============================================================================================================
-- JAPAN 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_NAME',
		'Rising Sun'),
		('LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_DESCRIPTION',
		'+1 [ICON_Amenities] Amenity and +1 [ICON_Housing] Housing to Coastal cities. All specialty districts receive a standard adjacency bonus from other districts. Campus, Theater Square, Holy Site, and Industrial Zone districts receive a minor adajcency bonus from Water tiles. Gain access to the Fishery improvement after unlocking the Sailing technology.'),
		('LOC_P0K_DISTRICT_RISING_SUN_SCIENCE',
		'+{1_num} [ICON_Science] Science from the adjacent Water tile(s).'),
		('LOC_P0K_DISTRICT_RISING_SUN_CULTURE',
		'+{1_num} [ICON_Culture] Culture from the adjacent Water tile(s).'),
		('LOC_P0K_DISTRICT_RISING_SUN_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent Water tile(s).'),
		('LOC_P0K_DISTRICT_RISING_SUN_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Water tile(s).'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_DIVINE_WIND_EXPANSION2_DESCRIPTION',
		'Water tiles provide +1 [ICON_Faith] Faith. +100% [ICON_Production] Production towards Theater Squares, Holy Sites, and Harbors. May purchase buildings in these districts with [ICON_Faith] Faith. Land military units receive +5 [ICON_Strength] Combat Strength in Coastal land tiles. Naval units receive +5 [ICON_Strength] Combat Strength in shallow Water tiles. All units are immune to Hurricane damage. Units of enemy civilizations receive +100% damage from Hurricanes in Japanese territory.'),
		-- Unique Building
		('LOC_BUILDING_ELECTRONICS_FACTORY_NAME',
		'Zaibatsu'),
		('LOC_BUILDING_ELECTRONICS_FACTORY_EXPANSION2_DESCRIPTION',
		'A building unique to Japan that replaces the Factory. Bonus [ICON_Science] Science equal to the [ICON_Production] Production adjacency bonus of the Industrial Zone. +1 [ICON_GreatMerchant] Great Merchant point. +4 [ICON_Culture] Culture after unlocking the Electricity technology. Its [ICON_Production] Production bonus is extended to all City Centers within 6 tiles that do not already have a bonus from this building type.'),
	--	('LOC_P0K_TRAIT_CIVILIZATION_BUILDING_ZAIBATSU_NAME',
	--	'Japanese unique building: Zaibatsu'),
	--	('LOC_P0K_BUILDING_ZAIBATSU_NAME',
	--	'Zaibatsu'),
	--	('LOC_P0K_BUILDING_ZAIBATSU_DESCRIPTION',
	--	'A building unique to Japan that replaces the Stock Exchange. Bonus [ICON_Production] Production equal to the [ICON_Gold] Gold adjacency bonus of the Commercial Hub. All [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Production] Production. Domestic [ICON_TradeRoute] Trade Routes from this city gain +1 [ICON_Culture] Culture. International [ICON_TradeRoute] Trade Routes from this city gain +2 [ICON_Gold] Gold.'),
		-- Unique Unit
		('LOC_UNIT_JAPANESE_SAMURAI_DESCRIPTION',
		'Japanese unique Medieval Era unit that replaces the Man-At-Arms. Does not suffer [ICON_Strength] Combat Strength penalties when damaged. Purchased with [ICON_Faith] Faith.'),
--=============================================================================================================
-- KONGO
--=============================================================================================================	
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_NKISI_NAME',
		'Blessings of the Nkisi'),
		('LOC_TRAIT_CIVILIZATION_NKISI_DESCRIPTION',
		'100% [ICON_GreatArtist] Great Artist points. Receive a random [ICON_CivicBoosted] Inspiration upon earning a [ICON_GreatArtist] Great Artist. +4 [ICON_Gold] Gold, +2 [ICON_Food] Food, +2 [ICON_Production] Production, and +1 [ICON_Faith] Faith from each [ICON_GreatWork_Relic] Relic, [ICON_GreatWork_Artifact] Artifact, [ICON_GreatWork_Religious] Religious Great Work of Art, and [ICON_GreatWork_Sculpture] Sculpture Great Work of Art. Shrines receive 2 slots for any type of [ICON_GreatWork_Portrait] Great Work.'),
		-- Civilization Unique Ability (Heroes Mode)
		('LOC_TRAIT_CIVILIZATION_NKISI_HEROES_DESCRIPTION',
		'100% [ICON_GreatArtist] Great Artist points. Receive a random [ICON_CivicBoosted] Inspiration upon earning a [ICON_GreatArtist] Great Artist. +4 [ICON_Gold] Gold, +2 [ICON_Food] Food, +2 [ICON_Production] Production, and +1 [ICON_Faith] Faith from each [ICON_GreatWork_Relic] Relic, [ICON_GreatWork_HeroRelic] Heroic Relic, [ICON_GreatWork_Artifact] Artifact, [ICON_GreatWork_Religious] Religious Great Work of Art, and [ICON_GreatWork_Sculpture] Sculpture Great Work of Art. Shrines receive 2 slots for any type of [ICON_GreatWork_Portrait] Great Work.'),
		-- Leader Name
		('LOC_LEADER_MVEMBA_NAME',
		'Afonso I'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_RELIGIOUS_CONVERT_NAME',
		'Baptized King'),
		('LOC_TRAIT_LEADER_RELIGIOUS_CONVERT_DESCRIPTION',
		'+25% [ICON_Production] Production towards Holy Sites and their buildings. Receive a free [ICON_GreatWork_Relic] Relics upon constructing a Temple for the first time. [ICON_TradeRoute] Trade Routes to foreign cities gain +1 [ICON_Culture] Culture and +1 [ICON_Faith] Faith per specialty district in the destination city. +3 Loyalty and +1 [ICON_Amenities] Amenity to all cities while in an active Alliance.'),
		('LOC_AGENDA_ENTHUSIASTIC_DISCIPLE_NAME',
		'Letters to the King'),
		('LOC_AGENDA_ENTHUSIASTIC_DISCIPLE_DESCRIPTION',
		'Tries to build up [ICON_Faith] Faith, and likes civilizations that also focus on [ICON_Faith] Faith. Dislikes civilizations that neglect [ICON_Faith] Faith.'),
		('LOC_DIPLO_KUDO_LEADER_MVEMBA_REASON_ANY',
		'(You have strong [ICON_Faith] Faith output.)'),
		('LOC_DIPLO_KUDO_EXIT_LEADER_MVEMBA_ANY',
		'It is wonderful to see another with such piety.'),
		('LOC_DIPLO_WARNING_LEADER_MVEMBA_REASON_ANY',
		'(You have weak [ICON_Faith] Faith output.)'),
		('LOC_DIPLO_WARNING_EXIT_LEADER_MVEMBA_ANY',
		'Why do you turn from the light of the Lord?'),
		-- Unique District
		('LOC_DISTRICT_MBANZA_DESCRIPTION',
		'A district unique to Kongo that can only be constructed in Rainforest or Woods. Replaces the Neighborhood district but is available earlier. Provides +5 [ICON_Housing] Housing, +4 [ICON_Gold] Gold, +2 [ICON_Food] Food, and +1 [ICON_Culture] Culture, regardless of Appeal. Completing a Mbanza triggers a Culture Bomb, claiming adjacent tiles.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_KONGO_SHIELD_BEARER_NAME',
		'Mbeba Ngao'), -- "Ngao Mbeba" is not grammatically correct Swahili.
		('LOC_TRAIT_CIVILIZATION_UNIT_KONGO_SHIELD_BEARER_NAME',
		'Kongolese unique unit: Mbeba Ngao'),
		('LOC_UNIT_KONGO_SHIELD_BEARER_DESCRIPTION',
		'Kongo unique Classical Era unit that replaces the Swordsman. +10 [ICON_Strength] Combat Strength when defending against ranged attacks. Ignores [ICON_Movement] Movement or Sight penalties from Woods and Rainforest.'),
--=============================================================================================================
-- NORWAY 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION_NAME',
		'From Sea to Summit'),
		('LOC_TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION_DESCRIPTION',
		'+2 [ICON_Faith] Faith and +2 [ICON_Production] Production to Coastal cities. Sea resources receive +1 of the appropriate yield from specialty districts within 3 tiles. Coastal land tiles with Breathtaking Appeal provide +1 [ICON_Culture] Culture and +1 [ICON_Food] Food.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_THUNDERBOLT_EXPANSION2_DESCRIPTION',
		'Combat victories grant [ICON_Gold] Gold equal to 50% of the [ICON_Strength] Combat Strength of the defeated unit. +25% [ICON_Production] Production towards Harbors and Commercial Hubs. All units ignore the [ICON_Movement] Movement costs of embarking and disembarking. Naval melee units can heal in neutral territory and perform coastal raids. Pillaging or raiding Mines grants bonus [ICON_Science] Science. Pillaging or raiding Camps, Quarries, Pastures, and Plantations grants bonus [ICON_Culture] Culture. Gain access to the Viking Longship unique unit after unlocking the Sailing technology.'),
		-- Leader Unique Unit
		('LOC_UNIT_NORWEGIAN_LONGSHIP_DESCRIPTION',
		'Norwegian unique Ancient Era unit that replaces the Galley when Harald Hardrada is the leader. Can pillage coastal lands and capture adjacent civilians. +1 [ICON_Movement] Movement when a starting a turn on a Coast tile.'),
		-- Unique Improvement
		('LOC_P0K_TRAIT_CIVILIZATION_IMPROVEMENT_STAVE_CHURCH_NAME',
		'Norwegian unique improvement: Stave Church'),
		('LOC_P0K_IMPROVEMENT_STAVE_CHURCH_NAME',
		'Stave Church'),
		('LOC_P0K_IMPROVEMENT_STAVE_CHURCH_DESCRIPTION',
		'Unlocks the Builder ability to construct a Stave Church, unique to Norway.[NEWLINE][NEWLINE]+1 [ICON_Faith] Faith and +0.5 [ICON_Housing] Housing. +1 [ICON_Faith] Faith for each adjacent Mountain. +1 [ICON_Food] Food for every 2 adjacent Water Tiles or each adjacent Natural Wonder tile. +1 [ICON_Production] Production for each adjacent Woods. +1 [ICON_Gold] Gold for each adjacent Sea resource. Additional [ICON_Faith] Faith and [ICON_Tourism] Tourism while advancing through the Civics and Technology trees. Cannot be built adjacent to another Stave Church.'),
		('LOC_PEDIA_IMPROVEMENTS_PAGE_P0K_IMPROVEMENT_STAVE_CHURCH_CHAPTER_HISTORY_PARA_1',
		'Stave churches were wooden, post-and-beam constructions built throughout medieval Scandinavia once the Vikings converted to Christianity. In Sweden alone, it is estimated that over a thousand stave churches were scattered about, the oldest dating back to the mid-1100s. Besides their religious function, these often served as meeting halls, cultural centers, courthouses, and even as marketplaces. Early stave churches were palisade constructions, with steeply pitched roofs to shed the heavy snows. The churches had elaborate wooden carvings, usually Christian in design but occasionally depicting pre-Christian heroes and myths. Later, only the corner posts were set in the earth, with planking covering the frame. Currently 30 stave churches remain standing, all but two in Norway.'),
		-- Unique Unit
		('LOC_UNIT_NORWEGIAN_BERSERKER_DESCRIPTION',
		'Norwegian unique Medieval Era unit that replaces the Man-At-Arms. +10 [ICON_Strength] Combat Strength when attacking and -5 [ICON_Strength] Combat Strength when defending. +2 [ICON_Movement] Movement when starting a turn in enemy territory. Purchased with [ICON_Faith] Faith.'),
--=============================================================================================================
-- ROME 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME_DESCRIPTION',
		'+20% [ICON_Production] Production towards districts and buildings that already exist in the [ICON_Capital] Capital. Each city begins with a road to the [ICON_Capital] Capital if within [ICON_TradeRoute] Trade Route range as well as a [ICON_TradingPost] Trading Post. [ICON_TradeRoute] Trade Routes gain +1 [ICON_Gold] Gold for passing through [ICON_TradingPost] Trading Posts in Roman cities. +1 [ICON_Glory_Super_Golden_Age] Era Score from completed [ICON_TradeRoute] Trade Routes.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_TRAJANS_COLUMN_DESCRIPTION',
		'Each city begins with a free Monument. Settlers and Builders receive +2 [ICON_Movement] Movement. Settlers trained in the [ICON_Capital] Capital do not consume [ICON_Citizen] Population. Military units heal every turn when in a [ICON_Glory_Golden_Age] Golden Age, even after moving or attacking.'),
		('LOC_P0K_ROME_ABILITY_TRAJANS_COLUMN_NAME',
		'Trajan''s Column'),
		('LOC_P0K_ROME_ABILITY_TRAJANS_COLUMN_DESCRIPTION',
		'+1 [ICON_Movement] Movement.'),
		('LOC_P0K_ROME_ABILITY_DACIAN_WARS_NAME',
		'Dacian Wars'),
		('LOC_P0K_ROME_ABILITY_DACIAN_WARS_DESCRIPTION',
		'Heal every turn when in a [ICON_Glory_Golden_Age] Golden Age, even after moving or attacking.'),
		-- Unique District
		('LOC_DISTRICT_BATH_EXPANSION2_ALT_DESCRIPTION',
		'A district unique to Rome for city growth. Replaces the Aqueduct. Grants a major adjacency bonus to all specialty districts.[NEWLINE][NEWLINE]Provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. +1 [ICON_Amenities] Amenity if adjacent to a Geothermal Fissure. In all cases, the Bath provides an additional bonus of +2 [ICON_Housing] Housing and +1 [ICON_Amenities] Amenity. [NEWLINE][NEWLINE]Prevents [ICON_Food] Food loss during Drought. Must be built adjacent to the City Center. Military Engineers may spend a [ICON_Charges] Charge to complete 20% of this district''s [ICON_Production] Production cost.'),
		('P0K_LOC_DISTRICT_BATH_SCIENCE',
		'+{1_num} [ICON_Science] Science from the adjacent Bath.'),
		('P0K_LOC_DISTRICT_BATH_CULTURE',
		'+{1_num} [ICON_Culture] Culture from the adjacent Bath.'),
		('P0K_LOC_DISTRICT_BATH_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent Bath.'),
		('P0K_LOC_DISTRICT_BATH_PRODUCTION',
		'+{1_num} [ICON_Production] Production from the adjacent Bath.'),
		('P0K_LOC_DISTRICT_BATH_GOLD',
		'+{1_num} [ICON_Gold] Gold from the adjacent Bath.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_ROMAN_LEGION_DESCRIPTION',
		'Roman unique Classical Era unit that replaces the Swordsman. Stronger than the Swordsman. May build a Roman Fort.'),
--=============================================================================================================
-- RUSSIA 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_MOTHER_RUSSIA_EXPANSION2_DESCRIPTION',
		'Founded cities begin with extra territory. Each city receives a free Builder upon acquiring its first Tundra or Snow tile. +1 [ICON_Faith] Faith and +1 [ICON_Production] Production from all Tundra and Snow tiles, doubling for City Centers. +100% Strategic resource accumulation in Tundra and Snow. Units do not receive damage from Blizzards. Civilizations that are at war with Russia receive +100% unit damage from Blizzards in Russian territory.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_GRAND_EMBASSY_NAME',
		'Petrine Reformation'),
		('LOC_TRAIT_LEADER_GRAND_EMBASSY_DESCRIPTION',
		'[ICON_TradeRoute] Trade Routes to foreign cities provide +1 [ICON_Science] Science and +1 [ICON_Culture] Culture after constructing the Government Plaza, and an additional +1 [ICON_Science] Science and +1 [ICON_Culture] Culture for each building in the Government Plaza. +50% [ICON_Production] Production towards buildings in the city with the Government Plaza. Construct buildings grants a burst of [ICON_Faith] Faith equal to 15% of the [ICON_Production] Production cost. May purchase districts with [ICON_Faith] Faith in cities with a [ICON_Governor] Governor.'),
		-- Unique District
		('LOC_DISTRICT_LAVRA_DESCRIPTION',
		'A district unique to Russia for religious activity. Replaces the Holy Site. +1 [ICON_Gold] Gold to Forest tiles in this city. Grants +2 [ICON_GreatProphet] Great Prophet points per turn. Grants +1 [ICON_GreatWriter] Great Writer point per turn with a Shrine, +1 [ICON_GreatArtist] Great Artist point per turn with a Temple, and +1 [ICON_GreatMusician] Great Musician with a Worship Building. This city''s border grows by one tile each time a [ICON_GreatPerson] Great Person is expended in it.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_RUSSIAN_COSSACK_DESCRIPTION',
		'Russian unique Industrial Era unit that replaces Cavalry. Stronger than Cavalry, and gains +5 [ICON_Strength] Combat Strength when fighting in or adjacent to Russian territory. May move after attacking if any [ICON_Movement] Movement remains.'),
--=============================================================================================================
-- SCYTHIA 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY_DESCRIPTION',
		'Begin the game with the Animal Husbandry technology unlocked. +1 [ICON_Food] Food, +1 [ICON_Production] Production, and +1 [ICON_Gold] Gold from Camps and Pastures. Training a light cavalry unit or Saka Horse Archer grants a duplicate of that unit for free.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_KILLER_OF_CYRUS_NAME',
		'Queen of the Massagatae'),
		('LOC_TRAIT_LEADER_KILLER_OF_CYRUS_DESCRIPTION',
		'Yields gained from plundering [ICON_TradeRoute] Trade Routes and pillaging are doubled, and these actions only cost 1 [ICON_Movement] Movement. All units receive +1 [ICON_Movement] Movement when adjacent to enemy units. Military units receive +5 [ICON_Strength] Combat Strength against [ICON_Damaged] Wounded units. Combat victories restore up to 30 hit points.'),
		('LOC_P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE_NAME',
		'Queen of the Massagatae'),
		('LOC_P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE_DESCRIPTION',
		'Yields gained from plundering [ICON_TradeRoute] Trade Routes and pillaging are doubled, and these actions only cost +1 [ICON_Movement] Movement.'), -- the Ability only grants the last part of this ability. The doubled yields are granted via a different modifier. Including it in the description for stylistic purposes.
		-- Unique Improvement
		('LOC_IMPROVEMENT_KURGAN_NAME',
		'Burial Mound'),
		('LOC_TRAIT_CIVILIZATION_IMPROVEMENT_KURGAN_NAME',
		'Scythian unique improvement: Burial Mound'),
		('LOC_IMPROVEMENT_KURGAN_DESCRIPTION',
		'Unlocks the Builder ability to construct a Burial Mound, unique to Scythia.[NEWLINE][NEWLINE]+2 [ICON_Gold] Gold and +1 [ICON_Faith] Faith. +1 [ICON_Faith] Faith for each adjacent Camp or Pasture. Additional [ICON_Gold] Gold, [ICON_Faith] Faith, and [ICON_Tourism] Tourism while advancing through the Civics and Technology trees. Cannot be built on Hills.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_SCYTHIAN_HORSE_ARCHER_NAME',
		'Horse Archer'), -- "Saka Horse Archer" just means Scythian Horse Archer. Pretty redundant.
		('LOC_TRAIT_CIVILIZATION_UNIT_SCYTHIAN_HORSE_ARCHER_NAME',
		'Scythian unique unit: Horse Archer'),
		('LOC_UNIT_SCYTHIAN_HORSE_ARCHER_DESCRIPTION',
		'Scythian unique Classical Era unit. Ranged unit with 4 [ICON_Movement] Movement and 1 [ICON_Range] Range.'),
--=============================================================================================================
-- SPAIN 
--=============================================================================================================
		-- Civilization Unique Ability
		('LOC_TRAIT_CIVILIZATION_TREASURE_FLEET_EXPANSION2_DESCRIPTION',
		'Gain +1 [ICON_TradeRoute] Trade Route capacity upon unlocking the Exploration civic. +5 [ICON_Gold] Gold, +2 [ICON_Production] Production, and +2 [ICON_Food] Food from [ICON_TradeRoute] Trade Routes between continents. [ICON_TradeRoute] Trade Routes are immune to being plundered over Water tiles. May purchase Traders and naval units with [ICON_Faith] Faith. Founding or conquering a city on a foreign continent grants a free Builder in that city. [ICON_Corps] Fleets and [ICON_Army] Armadas can be formed after unlocking the Mercantilism civic.'),
		('LOC_P0K_ABILITY_TREASURE_FLEET_NAME',
		'Treasure Fleet'),
		('LOC_P0K_ABILITY_TREASURE_FLEET_DESCRIPTION',
		'This unit''s [ICON_TradeRoute] Trade Route cannot be plundered while on a Water tile.'),
		-- Leader Unique Ability
		('LOC_TRAIT_LEADER_EL_ESCORIAL_EXPANSION2_DESCRIPTION',
		'+25% [ICON_Science] Science, [ICON_Production] Production, [ICON_Gold] Gold, and [ICON_Faith] Faith in the [ICON_Capital] Capital. Constructing buildings grants a burst of [ICON_Science] Science equal to 15% of the [ICON_Production] Production cost. Military units and [ICON_Religion] Religious units receive +5 [ICON_Strength] Combat Strength against units of civilizations following other [ICON_Religion] Religions. Inquisitors receive +1 [ICON_Policy] Remove Heresy spread and eliminate 100% of the presence of other [ICON_Religion] Religions.'),
		('LOC_ABILITY_PHILIP_II_COMBAT_BONUS_OTHER_RELIGION_NAME',
		'El Escorial'),
		('LOC_ABILITY_PHILIP_II_COMBAT_BONUS_OTHER_RELIGION_DESCRIPTION',
		'+5 [ICON_Strength] Combat Strength against units of another [ICON_Religion] Religion. (Philip II)'),
		-- Unique Improvement
		('LOC_IMPROVEMENT_MISSION_EXPANSION2_DESCRIPTION',
		'Unlocks the Builder ability to construct a Mission, unique to Spain.[NEWLINE][NEWLINE]+1 [ICON_Science] Science, +1 [ICON_Faith] Faith, and +0.5 [ICON_Housing] Housing. +2 [ICON_Faith] Faith, +1 [ICON_PRODUCTION] Production, and +1 [ICON_Food] Food if on a different continent than the [ICON_Capital] Capital. +1 [ICON_Gold] Gold for each adjacent Farm. +1 [ICON_Science] Science for each adjacent Plantation. Additional [ICON_Food] Food, [ICON_Science] Science, and [ICON_Tourism] Tourism while advancing through the Technology and Civic trees. Must be built adjacent to a Bonus or Luxury resource.'),
		-- Unique Unit (only wording changes)
		('LOC_UNIT_SPANISH_CONQUISTADOR_DESCRIPTION',
		'Spanish unique Renaissance Era unit that replaces the Musketman. +10 [ICON_Strength] Combat Strength if occupying the same tile as a [ICON_Religion] Religious unit. If this unit captures a city or is adjacent to a city when it is captured, the city will automatically adopt Spain''s [ICON_Religion] Religion.'),
--=============================================================================================================
-- SUMER
--=============================================================================================================
		-- Civilization Name
		('LOC_CIVILIZATION_SUMERIA_NAME',
		'Sumer'),
		-- Civilization Unique Ability	
		('LOC_TRAIT_CIVILIZATION_FIRST_CIVILIZATION_NAME',
		'Cuneiform'),
		('LOC_TRAIT_CIVILIZATION_FIRST_CIVILIZATION_DESCRIPTION',
		'Begin the game with a random Technology unlocked. Newly founded cities begin with +1 [ICON_Citizen] Population and +1 [ICON_Housing] Housing. All units ignore the [ICON_Movement] Movement costs of crossing Rivers. Farms adjacent to a River provide +1 [ICON_Food] Food as well as +1 [ICON_Science] Science if adjacent to a City Center and +1 [ICON_Faith] Faith if adjacent to a Ziggurat.'), 
		('LOC_TRAIT_CIVILIZATION_FIRST_CIVILIZATION_CLANS_MODE_DESCRIPTION', -- in Barbarians Mode, they update the text for the Sumer UA, but with this mod there aren't any changes to the Sumer UA. This text is the exact same as the above
		'Begin the game with a random Technology unlocked. Newly founded cities begin with +1 [ICON_Citizen] Population and +1 [ICON_Housing] Housing. All units ignore the [ICON_Movement] Movement costs of crossing Rivers. Farms adjacent to a River provide +1 [ICON_Food] Food as well as +1 [ICON_Science] Science if adjacent to a City Center and +1 [ICON_Faith] Faith if adjacent to a Ziggurat.'), 
		('LOC_P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS_NAME',
		'Land Between Two Rivers'),
		('LOC_P0K_SUMER_ABILITY_LAND_BETWEEN_TWO_RIVERS_DESCRIPTION',
		'Ignore the [ICON_Movement] Movement costs of crossing Rivers.'),
		-- Leader Unique Ability (Heroes Mode Active)
		('LOC_TRAIT_LEADER_GILGAMESH_HEROES_NAME',
		'Epic of Gilgamesh'),
		('LOC_TRAIT_LEADER_GILGAMESH_HEROES_DESCRIPTION',
		'+25% [ICON_Production] Production towards Hero Devotions. Heroes receive +20% [ICON_Lifespan] Lifespan. May purchase City Center buildings with [ICON_Faith] Faith. Military units receive +5 [ICON_Strength] Combat Strength against Barbarians. Upon capturing a Barbarian Outpost, receive a Tribal Village reward in addition to the usual [ICON_Gold] Gold.'),
		-- Leader Unique Ability (Heroes Mode Inactive)
		('LOC_TRAIT_LEADER_ADVENTURES_ENKIDU_NAME',
		'Epic of Gilgamesh'),
		('LOC_TRAIT_LEADER_ADVENTURES_ENKIDU_EXPANSION2_DESCRIPTION',
		'Each city receives free Ancient Walls. May purchase City Center buildings with [ICON_Faith] Faith. Military units receive +5 [ICON_Strength] Combat Strength against Barbarians. Upon capturing a Barbarian Outpost, receive a Tribal Village reward in addition to the usual [ICON_Gold] Gold.'), 
		-- Unique Improvement
		('LOC_IMPROVEMENT_ZIGGURAT_DESCRIPTION',
		'Unlocks the Builder ability to construct a Ziggurat, unique to Sumer.[NEWLINE][NEWLINE]+1 [ICON_Science] Science and +1 [ICON_Faith] Faith. +1 [ICON_Science] if built on Floodplains or Marsh. +1 [ICON_Faith] Faith if in a city with a Holy Site. +1 [ICON_Science] Science for every 2 adjacent Farms. +1 [ICON_Faith] Faith for each adjacent Luxury resource. Additional [ICON_Science] Science and [ICON_Tourism] Tourism while advancing through the Technology and Civics trees. Cannot be built on Hills.'),
		-- Unique Unit
		('LOC_UNIT_SUMERIAN_WAR_CART_DESCRIPTION',
		'Sumerian unique Ancient Era unit that replaces the Heavy Chariot. Cheaper to produce and available from the beginning of the game. +2 [ICON_Movement] Movement when starting a turn in open terrain.');