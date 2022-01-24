--==========================================================================================================================	
--==========================================================================================================================	
-- !!!IMPORTANT!!!
--
-- 1) Changing any other aspect of this file besides the specified value settings will prevent the mod from functioning correctly. Be careful 
-- not to edit or erase any punctuation marks (comma, bracket) when editing the numerical values.
--
-- 2) If using this mod in multiplayer, all players must have identical value settings for all entries in the configuration tables.
--
-- 3) You should disable this mod before playing any scenario which makes its own changes to the religion system to prevent conflicts.
--==========================================================================================================================	
--==========================================================================================================================		

CREATE TABLE IF NOT EXISTS 				---- DO NOT TOUCH!!
HR_Denominations (					---- DO NOT TOUCH!!
	Value	integer		default		    0,	---- DO NOT TOUCH!!
	Type	text		default		null); 	---- DO NOT TOUCH!!
							---- DO NOT TOUCH!!
INSERT INTO HR_Denominations				---- DO NOT TOUCH!!
	(Value,	       Type)				---- DO NOT TOUCH!!
VALUES							---- DO NOT TOUCH!!

--==========================================================================================================================	
--==========================================================================================================================

-- CONFIGURATION OPTIONS START HERE:

--==========================================================================================================================	
--==========================================================================================================================	
-- LITE MODE & COMPLETE MODE
--
-- Historical Religions may be loaded in either Lite or Complete Mode. By default, the mod will load in Complete Mode.
-- 
-- Lite Mode (setting the value on the left to '0') prompts the mod to load with only a minimum of new religions to represent the leaders included within
-- the base game and its DLC. This option overrides and is not customizable with the individual religion options. However, it is still compatible with the  
-- 'Random & Alternate Religious Preferences' and 'Lite Mode Exceptions' options.
-- 
-- Lite Mode Additional Religions: Amatongo, Ardavda, Ayni, Canaanism, Chaldaeanism, Druidism, Hellenism, Manaism, Oriental Orthodoxy, Pesedjet, Tengriism,
-- Tlateomatiliztli, Wakan Tanka & Witran Mapu
-- 
-- Complete Mode (setting the value on the left to '1') prompts the mod to load the full list of new religions, which can be individually customized in the
-- 'Historical Religions' section below, and is compatible with all other options within the configuration file.
-- 
-- KEY: 0 [Lite Mode]; 1 [Complete Mode]
--==========================================================================================================================
--==========================================================================================================================	

------------------------------------
-- Lite Mode & Complete Mode
------------------------------------

	----
	(1,	/* Set Mod Mode 	:: 0 = Lite Mode <-> 1 = Complete Mode							*/		'HR_LITE_COMPLETE_SWITCH'), 
	----
	
--==========================================================================================================================	
--==========================================================================================================================	
-- HISTORICAL RELIGIONS
--
-- If Historical Religions is set to Complete Mode, the following options may be used to enable / disable individual religions from the mod. All denomination
-- religions also require BOTH their base religion AND their denomination group to be active before they can be enabled. Most denomination groups replace their base 
-- religion with the exception of groups labeled '(Add)' which are enabled in addition to their base religion.
-- 
-- Religions set to 'X' represent base religions included within the original game as well as those added by Lite Mode and cannot be disabled. Religions set to 
-- 'Y' represent base denominations and cannot be disabled within their own denomination group but may still be removed if their denomination branch is disabled. 
--
-- KEY: 0 [Disable]; 1 [Enable]				-- ADMINISTRATIVE: X [Unremovable]; Y [Unremovable Within Denomination Group]
--==========================================================================================================================	
--==========================================================================================================================	

------------------------------------
-- Religions & Denominations
------------------------------------

	----
	(1,	/* Ajivika													*/		'HR_AJIVIKA'),
	(1,	/* Akatt-u					:: Pre-Aryan Indus (Harappa...)					*/		'HR_ANKATT_U'),		
	----
--	(X,	/* Amatongo					:: Southern African (Zulu, Zimbabwe...)				*/--		'HR_AMATONGO'),						
	(1,	/* -- Enable Southern African Groups										*/		'HR_SOUTHERN_AFRICAN_DENOMINATIONS'),			
--	(Y,	/* -- --> Amatongo				:: Southern Bantu (Zulu...)					*/--		'HR_AMATONGO_1'),					
 	(1,	/* -- --> Mwari Cult				:: Shona (Zimbabwe...)						*/		'HR_MWARI_CULT'),					
	----
	(1,	/* Angakkunngurniq 				:: American Arctic (Inuit...)					*/		'HR_AGAKKUNNGURNIQ'),	
--	(X,	/* Ardavda					:: Scythian							*/--		'HR_SAIRIMAISM'),											
	----
--	(X,	/* Ayni    					:: Andean (Inca, Muisca, Caral...)				*/--		'HR_PACHAISM'),
	(1,	/* -- Enable Andean Groups											*/		'HR_ANDEAN_DENOMINATIONS'),
--	(Y,	/* -- --> Ayni					:: Traditional Andean						*/--		'HR_PACHAISM_1'),
	(1,	/* -- --> Intiism				:: State Incan							*/		'HR_INTIISM'),
	(1,	/* -- --> Chiminigagua				:: Muisca							*/		'HR_CHIMINIGAGUA'),
	----		
	(1,	/* Baha'i Faith													*/		'HR_BAHAI'),							
	(1,	/* Bird Figure Cult			   	:: Neolithic Europe (Vinca...)					*/		'HR_BIRD_FIGURE_CULT'),						
	----
--	(X,	/* Buddhism					   								*/--		'HR_BUDDHISM'),							
	(1,	/* -- Enable Buddhist Denominations										*/		'HR_BUDDHIST_DENOMINATIONS'),				
--	(Y,	/* -- --> Theravada 												*/--		'HR_BUDDHISM_1'),					
	(1,	/* -- --> Mahayana  												*/		'HR_MAHAYANA'),					
	(1,	/* -- --> Vajrayana   												*/		'HR_VAJRAYANA'),					
	----
	(1,	/* Bumuntu 					:: Central African (Luba, Lunda...)				*/		'HR_BUMUNTU'),							
--	(X,	/* Canaanism 			   		:: Levantine (Phoenicia, Carthage...) 				*/--		'HR_CANAANISM'),					
	----
--	(X,	/* Chaldaeanism 				:: Mesopotamian (Sumer, Babylon, Assyria...)			*/--		'HR_CHALDAEANISM'),						
	(1,	/* -- Enable Mesopotamian Groups		 								*/		'HR_MESOPOTAMIAN_DENOMINATIONS'),				
-- 	(Y,	/* -- --> Chaldaeanism			  	:: Sumer-Babylonian 						*/--		'HR_CHALDAEANISM_1'),				
	(1,	/* -- --> Ashurism 				:: State Assyrian						*/		'HR_ASHURISM'),					
	(1,	/* -- --> Napir-tuniis			 	:: Elamite 							*/		'HR_NAPIR_TUNIIS'),				
	----
--	(X,	/* Christianity				 	  								*/--		'HR_CHRISTIANITY'),						
--	(X,	/* -- Enable Christian Denominations										*/--		'HR_CHRISTIAN_DENOMINATIONS'),				
--	(Y,	/* -- --> Catholicism				  								*/--		'HR_CHRISTIANITY_1'),				
	(1,	/* -- --- -- Enable Early Christian Heresies (Add)								*/		'HR_CHRISTIAN_HERESIES'),			
	(1,  	/* -- --- -- --> Arianism											*/		'HR_ARIANISM'),			
	(1,   	/* -- --- -- --> Bogomilism											*/		'HR_BOGOMILISM'),			
	(1,   	/* -- --- -- --> Catharism											*/		'HR_CATHARISM'),			
	(1,   	/* -- --- -- --> Hussitism											*/		'HR_HUSSITISM'),			
	(1,	/* -- --> Nestorianism												*/		'HR_NESTORIANISM'),				
--	(Y,	/* -- --> Oriental Orthodoxy			   								*/--		'HR_ORIENTAL_ORTHODOXY'),				
--	(Y,	/* -- --> Eastern Orthodoxy			   								*/--		'HR_EASTERN_ORTHODOXY'),			
--	(Y,	/* -- --> Protestantism		  										*/--		'HR_PROTESTANTISM'),			
	(1,	/* -- --- -- Enable Protestant Denominations	 								*/		'HR_PROTESTANT_DENOMINATIONS'),		
--	(Y,  	/* -- --- -- --> Lutheranism											*/--		'HR_PROTESTANTISM_1'),		
	(1,  	/* -- --- -- --> Calvinism											*/		'HR_CALVINISM'),			
	(1,  	/* -- --- -- --> Anabaptism											*/		'HR_ANABAPTISM'),			
	(1,  	/* -- --- -- --> Anglicanism											*/		'HR_ANGLICANISM'),		
	(1,  	/* -- --- -- --> Baptist Christianity 										*/		'HR_BAPTIST'),			
	(1,  	/* -- --- -- --> Methodism											*/		'HR_METHODISM'),			
	(1,	/* -- --> Restorationism			:: Charismatic, Great Awakening, Primitivism 			*/		'HR_RESTORATIONISM'),				
	(1,	/* -- --- -- Enable Restorationist Religions									*/		'HR_RESTORATIONIST_DENOMINATIONS'),	
	(1,  	/* -- --- -- --> Society of Friends		:: Quaker							*/		'HR_QUAKERS'),			
	(1,  	/* -- --- -- --> Adventism											*/		'HR_ADVENTISM'),			
	(1,   	/* -- --- -- --> Latter-day Saints		:: Mormon							*/  		'HR_RESTORATIONISM_1'),			
	(1,   	/* -- --- -- --> Jehovah's Witnesses										*/		'HR_JEHOVAHS_WITNESSES'),		
	(1,  	/* -- --- -- --> Pentecostalism											*/		'HR_PENTECOSTALISM'),		
	----
--	(X,	/* Confucianism													*/--		'HR_CONFUCIANISM'),						
	(1,	/* Datura Cult					:: Californian (Chumash...)					*/		'HR_DATURA_CULT'),		
	(1,	/* Din-i Ilahi													*/		'HR_DINI_ILAHI'),
	(1,	/* Dreamtime					:: Aboriginal Australian 					*/		'HR_DREAMTIME'),
--	(X,	/* Druidism					:: Celtic (Gauls...)						*/--		'HR_DRUIDISM'),
	(1,	/* Forn Sidr					:: Germanic-Norse (Viking...)					*/		'HR_FORN_SIDR'),
	----
--	(X,	/* Hellenism					:: Greco-Roman (Greece, Rome, Macedon...)			*/--		'HR_HELLENISM'),
	(1,	/* -- Enable Greco-Roman Groups											*/		'HR_GRECO_ROMAN_DENOMINATIONS'),
	(1,	/* -- --> Atanodjuwaja Cult			:: Minoan							*/		'HR_ATANODJUWAJA_CULT'),	
	(1,	/* -- --> Mysteries				:: Greek Mystery						*/		'HR_MYSTERIES'),
--	(Y,	/* -- --> Dodekatheon				:: Traditional Greek						*/--		'HR_HELLENISM_1'),
	(1,	/* -- --> Neoplatonism				:: Philosophical Greek						*/		'HR_NEOPLATONISM'),
	(1,	/* -- --> Numenism				:: Traditional Italic						*/		'HR_NUMENISM'),
	(1,	/* -- --> Imperial Cult				:: State Roman							*/		'HR_IMPERIAL_CULT'),
	(1,	/* -- --> Mithraism				:: Roman Mystery						*/		'HR_MITHRAISM'),
	(1,	/* -- --> Heros Cult				:: Thracian, Heros Karabazmos					*/		'HR_HEROS_CULT'),
	----
--	(X,	/* Hinduism													*/--		'HR_HINDUISM'),
	(1,	/* -- Enable Hindu Denominations										*/		'HR_HINDU_DENOMINATIONS'),	
	(1,	/* -- --> Vedism				:: Historical Vedic						*/		'HR_VEDISM'),
	(1,	/* -- --> Shaivism												*/		'HR_SHAIVISM'),
	(1,	/* -- --> Shaktism												*/		'HR_SHAKTISM'),
--	(Y,	/* -- --> Vaishnavism												*/--		'HR_VAISHNAVISM'),
	(1,	/* -- --> Smartism												*/  		'HR_HINDUISM_1'),
	----
--	(X,	/* Islam													*/--		'HR_ISLAM'),
	(1,	/* -- Enable Islamic Denominations										*/		'HR_ISLAMIC_DENOMINATIONS'),
--	(Y,	/* -- --> Sunni													*/--		'HR_ISLAM_1'),
	(1,	/* -- --- -- Enable Historical Islamic Schools (Add)								*/		'HR_SUNNI_DENOMINATIONS'),
	(1,  	/* -- --- -- --> Mu'tazila											*/		'HR_MUTAZILA'),
	(1,	/* -- --> Shia													*/		'HR_SHIA'),
	(1,	/* -- --- -- Enable Shia Denominations										*/		'HR_SHIA_DENOMINATIONS'),
	(1,  	/* -- --- -- --> Imamiyah			:: Twelver							*/		'HR_IMAMI'),
	(1,  	/* -- --- -- --> Zaidiyah			:: Fiver							*/		'HR_ZAIDI'),
	(1,  	/* -- --- -- --> Ismailiyah											*/		'HR_ISMAILI'),
	(1,	/* -- --- -- Enable Shia Offshoots (Add)									*/		'HR_SHIA_OFFSHOOTS'),
	(1,  	/* -- --- -- --> Alawiyah											*/		'HR_SHIA_1'),
	(1,  	/* -- --- -- --> Druze												*/		'HR_DRUZE'),
	(1,	/* -- --> Ibadiyah												*/		'HR_IBADI'),
	(1,	/* -- --> Ahmadiyah												*/		'HR_AHMADI'),
	----
	(1,	/* Itang					:: Micronesian (Nan Madol...)					*/		'HR_ITANG'),
	(1,	/* Jainism													*/		'HR_JAINISM'),
--	(X,	/* Judaism													*/--		'HR_JUDAISM'),
	(1,	/* Kachina					:: American Southwest (Pueblo...)				*/		'HR_KACHINA'),
	----
	(1,	/* Kepercayaan					:: Maritime Southeast Asian					*/		'HR_KEPERCAYAAN'),
	(1,	/* -- Enable Nusantara Groups											*/		'HR_NUSANTARA_DENOMINATIONS'),
	(1,	/* -- --> Kejawen				:: Javanese							*/  		'HR_KEPERCAYAAN_1'),
	(1,	/* -- --> Anito					:: Philippine Folk						*/		'HR_ANITO'),
	----
	(1,	/* Laiboni					:: East African (Maasai...)					*/		'HR_LAIBONI'),
	(1,	/* Legalism					:: Chinese Fajia 						*/		'HR_LEGALISM'),
	(1,	/* Li'im Dingirmes				:: Hittite							*/		'HR_LIIM_DINGIRMES'),
	(1,	/* Malagan					:: Melanesian (Papua, Fiji...)					*/		'HR_MALAGAN'),
	----
--	(X,	/* Manaism					:: Polynesian (Tonga, Hawai'i, Rapa Nui, Maori...) 		*/--		'HR_MANAISM'),
	(1,	/* -- Enable Polynesian Groups											*/		'HR_POLYNESIAN_DENOMINATIONS'),
--	(Y,	/* -- --> Tala-e-Fonua				:: West Polynesian (Tonga, Samoa...)				*/--		'HR_MANAISM_1'),
	(1,	/* -- --> Puta Tumu				:: East Polynesian (Hawai'i, Maori...)				*/		'HR_PUATA_TUPUNA'),
	(1,	/* -- --> Tangata Manu Cult			:: Rapa Nui							*/		'HR_TANGATA_MANU'),
	----
	(1,	/* Mandaeanism													*/		'HR_MANDAEANISM'),
	(1,	/* Manichaeaism 												*/		'HR_MANICHAEAISM'),
	(1,	/* Mi-chos					:: Tibetan, Bon							*/		'HR_MI_CHOS'),
	(1,	/* Mohism													*/		'HR_MOHISM'),
	(1,	/* Mushrikun					:: Pre-Islamic Arabic						*/		'HR_MUSHRIKUN'),
	----
	(1,	/* Noaidevuohta					:: Uralic							*/		'HR_NOAIDEVUOHTA'),
	(1,	/* -- Enable Uralic Groups											*/		'HR_URALIC_DENOMINATIONS'),
	(1,	/* -- --> Noaidevuohta				:: Sami								*/  		'HR_NOAIDEVUOHTA_1'),
	(1,	/* -- --> Suomenusko				:: Finnish							*/		'HR_SUOMENUSKO'),
	----
	(1,	/* Nommo					:: Sahel (Dogon...)						*/		'HR_NOMMO'),
	(1,	/* N'um						:: Khoe-San							*/		'HR_NUM'),
	----
	(1,	/* Nzambiism					:: Bakongo							*/		'HR_NZAMBIISM'),
	(1,	/* -- Enable Kongolese Groups											*/		'HR_KONGOLESE_DENOMINATIONS'),
	(1,	/* -- --> Nzambiism												*/  		'HR_NZAMBIISM_1'),
	(1,	/* -- --> Palo					:: Diasporic Bakongo			 			*/		'HR_PALO'),
	----
	(1,	/* Onyamesom					:: Akan (Ashanti...)						*/		'HR_ONYAMESOM'),
	----
	(1,	/* Orenda					:: Eastern Woodlands (Iroquois, Anishinaabe...)			*/		'HR_ORENDA'),
	(1,	/* -- Enable Eastern American Groups										*/		'HR_EASTERN_AMERICAN_DENOMINATIONS'),
	(1,	/* -- --> Orenda				:: Iroquoian							*/  		'HR_ORENDA_1'),
	(1,	/* -- --> Midewiwin				:: Lodge, Medicine Society (Algonquin...)			*/		'HR_MIDEWIWIN'),
	----
	(1,	/* Orisha					:: Gulf of Guinea (Yoruba, Edo, Igbo, Fon...)			*/		'HR_ORISHA'),
	(1,	/* -- Enable Volta-Niger Groups											*/		'HR_VOLTA_NIGER_DENOMINATIONS'),
	(1,	/* -- --> Ifa					:: Yoruba, Edo (Oyo, Benin...)					*/  		'HR_ORISHA_1'),
	(1,	/* -- --> Odinani				:: Igbo (Nri...)						*/		'HR_ODINANI'),
	(1,	/* -- --> Voodoo				:: Fon, Diasporic Fon						*/		'HR_VOODOO'),
	(1,	/* -- --> Santeria				:: Diasporic Yoruba						*/		'HR_SANTERIA'),
	----
	(1,	/* Pajelanca					:: Amazonian (Tupi...)						*/		'HR_PAJELANCA'),
	----
--	(X,	/* Pesedjet					:: Egyptian (Egypt, Nubia...)					*/--		'HR_PESEDJET'),
	(1,	/* -- Enable Egyptian Groups											*/		'HR_EGYPTIAN_DENOMINATIONS'),
	(1,	/* -- --> Amanaiism				:: Libyan, Berber						*/		'HR_AMANAIISM'),
--	(Y,	/* -- --> Pesedjet												*/--		'HR_PESEDJET_1'),
	(1,	/* -- --> Atenism												*/		'HR_ATENISM'),
	----
	(1,	/* Pohakantenna					:: Great Basin (Shoshone...)					*/		'HR_POHAKANTENNA'),
	(1,	/* Razana					:: Malagasy							*/		'HR_RAZANA'),
	----
	(1,	/* Rodnovery					:: Balto-Slavic							*/		'HR_RODNOVERY'),
	(1,	/* -- Enable Balto-Slavic Groups										*/		'HR_BALTO_SLAVIC_DENOMINATIONS'),
	(1,	/* -- --> Rodnovery				:: Slavic							*/  		'HR_RODNOVERY_1'),
	(1,	/* -- --> Romuva				:: Blatic (Lithuania...)					*/		'HR_ROMUVA'),
	----
	(1,	/* Samanism					:: Siberian							*/		'HR_SAMANISM'),
	(1,	/* Sasna Phi					:: Tai Folk							*/		'HR_SASNA_PHI'),
	(1,	/* Scaanaang					:: Pacific Northwest (Haida...)					*/		'HR_SCAANAANG'),
	----
	(1,	/* Shenism					:: East Asian Animism						*/		'HR_SHENISM'),
	(1,	/* -- Enable Folk Taoic Groups											*/		'HR_SHENISM_DENOMINATIONS'),
	(1,	/* -- --> Mukyo					:: Korean Folk							*/		'HR_MUISM'),
	(1,	/* -- --> Shenism				:: Chinese Folk							*/		'HR_SHENISM_1'),
	(1,	/* -- --> Tho Than				:: Vietnamese Folk						*/		'HR_TIANISM'),
	----
--	(X,	/* Shinto													*/--		'HR_SHINTO'),
--	(X,	/* Sikhism													*/--		'HR_SIKHISM'),
	----	
	(1,	/* Southern Cult				:: Mound Builder						*/		'HR_SOUTHERN_CULT'),
	(1,	/* -- Enable Mound Builder Groups										*/		'HR_MOUND_BUILDER_DENOMINATIONS'),
	(1,	/* -- --> Fox and Owl Cult			:: Archaic (Poverty Point...)					*/		'HR_FOX_AND_OWL_CULT'),
	(1,	/* -- --> Southern Cult				:: Mississippian						*/		'HR_SOUTHERN_CULT_1'),
	(1,	/* -- --> Mahoma				:: Floridian (Calusa...)					*/		'HR_MAHOMA'),
	----
	(1,	/* Spiritism													*/		'HR_SPIRITISM'),
--	(X,	/* Taoism													*/--		'HR_TAOISM'),
	(1,	/* Tat Roog					:: West Coastal African (Serer...)				*/		'HR_TAT_ROOG'),
	(1,	/* Temaukelism					:: Patagonian							*/		'HR_TEMAUKELISM'),
--	(X,	/* Tengriism					:: Steppe (Mongolia...)						*/--		'HR_TENGRIISM'),
	----
--	(X,	/* Tlateomatiliztli				:: Mesoamerican (Aztec, Maya, Olmec...)				*/--		'HR_TLATEOMATILIZTLI'),
	(1,	/* -- Enable Mesoamerican Groups										*/		'HR_MESOAMERICAN_DENOMINATIONS'),
	(1,	/* -- --> Tzolk'in				:: Classic, Preclassic (Maya, Olmec...)				*/		'HR_TZOLKIN'),
--	(Y,	/* -- --> Tlateomatiliztli			:: Postclassic (Aztec...)					*/--		'HR_TLATEOMATILIZTLI_1'),
	----
--	(X,	/* Wakan Tanka					:: Great Plains (Sioux, Plains Cree...)				*/--		'HR_WAKAN_TANKA'),
--	(X,	/* Witran Mapu					:: Mapuche							*/--		'HR_WITRAN_MAPU'),
	(1,	/* Yazidism					:: Kurdish (Yazidis, Yarsans, Alevis...)			*/		'HR_YAZDANISM'),
	(1,	/* Zemiism					:: Antillean (Taino...)						*/		'HR_ZEMIISM'),
	----
--	(X,	/* Zoroastrianism												*/--		'HR_ZOROASTRIANISM'),
	(1,	/* -- Enable Zoroastrian Denominations										*/		'HR_ZOROASTRIAN_DENOMINATIONS'),
--	(Y,	/* -- --> Mazdayasna				:: Zoroastrianism						*/--		'HR_ZOROASTRIANISM_1'),
	(1,	/* -- --> Zurvanism												*/		'HR_ZURVANISM'),
	----

------------------------------------
-- Custom Icons
------------------------------------

	----
	(1,	/* Aries													*/		'HR_RAM'),
--	(X,	/* Taurus													*/--		'HR_BULL'),
	(1,	/* Gemini													*/		'HR_TWIN'),
--	(X,	/* Cancer													*/--		'HR_CRAB'),
--	(X,	/* Leo														*/--		'HR_LION'),
--	(X,	/* Virgo													*/--		'HR_FROND'),
	(1,	/* Libra													*/		'HR_SCALES'),
--	(X,	/* Scorpio													*/--		'HR_SCORPION'),
	(1,	/* Sagittarius													*/		'HR_BOW'),
	(1,	/* Capricorn													*/		'HR_GOAT'),
--	(X,	/* Aquarius													*/--		'HR_WATER'),
--	(X,	/* Pisces													*/--		'HR_FISH'),
	----
--	(X,	/* Snake													*/--		'HR_SNAKE'),
	(1,	/* Octopus													*/		'HR_OCTOPUS'),
	----
	(1,	/* Dragon													*/		'HR_DRAGON'),
--	(X,	/* Bird														*/--		'HR_BIRD'),
	(1,	/* Tiger													*/		'HR_TIGER'),
--	(X,	/* Turtle													*/--		'HR_TURTLE'),
	----
--	(X,	/* Elephant													*/--		'HR_ELEPHANT'),
--	(X,	/* Butterfly													*/--		'HR_BUTTERFLY'),
	(1,	/* Beetle													*/		'HR_BEETLE'),
	----
	(1,	/* Torch													*/		'HR_WAND'),
	(1,	/* Pentagram													*/		'HR_COIN'),
	(1,	/* Sword													*/		'HR_SWORD'),
	(1,	/* Cup														*/		'HR_CUP'),
	----
	(1,	/* Eye of Providence												*/		'HR_EYE'),
	(1,	/* Ouroboros													*/		'HR_OUROBOROS'),
	(1,	/* Mask														*/		'HR_ALT_CANAANISM'),
	(1,	/* Caduceus													*/		'HR_CADUCEUS'),
	----
	(1,	/* Tree														*/		'HR_TREE'),
	(1,	/* Rose														*/		'HR_ROSE'),
	----
	(1,	/* Spiral													*/		'HR_SPIRAL'),
	(1,	/* Venus Figure													*/		'HR_VENUS'),
	----
	(1,	/* Atom														*/		'HR_ATOM'),
	----

------------------------------------
-- Misc. Unused Religions & Icons
------------------------------------
	
	----
	(0,	/* Unitarianism					:: Requires 'Restorationist Religions'				*/		'HR_UNITARIANISM'),
	----
	(0,	/* Unused Face Icon												*/		'HR_FACE'),
	----														
	(0,	/* Unused Catholicism Icon											*/		'HR_ALT_CATHOLICISM'),
	(0,	/* Unused Rodnovery Icon											*/		'HR_ALT_RODNOVERY'),
	(0,	/* Unused Ayni Icon												*/		'HR_ALT_PACHAISM'),
	(0,	/* Unused Manichaeaism Icon											*/		'HR_ALT_MANICHAEAISM'),
	----

--==========================================================================================================================	
--==========================================================================================================================	
-- LITE MODE EXCEPTIONS
--
-- The following options can be used to enable specific religions when Lite Mode is enabled. Denominations do not require or interact with the individual religion
-- options listed above and can be activated independently of their base religion. This option group is not meant to be exhaustive, but rather facilitate the 
-- 'Alternate Religious Preferences' section below.
--
-- KEY: 0 [Disable]; 1 [Enable]
--==========================================================================================================================
--==========================================================================================================================	

------------------------------------
-- Additional Lite Mode Religions
------------------------------------

	----
	(0,	/* Forn Sidr		:: 1 = Loads Forn Sidr when Lite Mode is enabled					*/		'HR_FORN_SIDR_LITE_EXCEPTION'),
	(0,	/* Jainism		:: 1 = Loads Jainism when Lite Mode is enabled						*/		'HR_JAINISM_LITE_EXCEPTION'),
	(0,	/* Legalism		:: 1 = Loads Legalism when Lite Mode is enabled						*/		'HR_LEGALISM_LITE_EXCEPTION'),
	(0,	/* Nzambiism		:: 1 = Loads Nzambiism when Lite Mode is enabled					*/		'HR_NZAMBIISM_LITE_EXCEPTION'),	
	----

------------------------------------
-- Additional Lite Mode Denominations
------------------------------------

	----
	(0,	/* Mahayana		:: 1 = Loads Mahayana (Buddhism changes to Theravada) when Lite Mode is enabled		*/		'HR_MAHAYANA_LITE_EXCEPTION'),
	(0,	/* Vajrayana		:: 1 = Loads Vajrayana (Buddhism changes to Theravada) when Lite Mode is enabled	*/		'HR_VAJRAYANA_LITE_EXCEPTION'),
		----
	(0,	/* Anglicanism		:: 1 = Loads Anglicanism when Lite Mode is enabled					*/		'HR_ANGLICAN_LITE_EXCEPTION'),
	(0,	/* Calvinism		:: 1 = Loads Calvinism (Protestantism changes to Lutheranism) when Lite Mode is enabled */		'HR_CALVINISM_LITE_EXCEPTION'),
	(0,	/* Pentecostalism	:: 1 = Loads Pentecostalism when Lite Mode is enabled 					*/		'HR_PENTECOSTALISM_LITE_EXCEPTION'),
	----
	(0,	/* Imperial Cult	:: 1 = Loads Imperial Cult (Hellenism changes to Dodekatheon) when Lite Mode is enabled	*/		'HR_IMPERIAL_LITE_EXCEPTION'),
	(0,	/* Mithraism		:: 1 = Loads Mithraism when Lite Mode is enabled					*/		'HR_MITHRAS_LITE_EXCEPTION'),
	----
	(0,	/* Vedism		:: 1 = Loads Vedism when Lite Mode is enabled						*/		'HR_VEDISM_LITE_EXCEPTION'),
	(0,	/* Shaivism		:: 1 = Loads Shaivism (Hinduism changes to Vaishnavism) when Lite Mode is enabled	*/		'HR_SHAIVISM_LITE_EXCEPTION'),
	----
	(0,	/* Shia			:: 1 = Loads Shia (Islam changes to Sunni) when Lite Mode is enabled			*/		'HR_SHIA_LITE_EXCEPTION'),
	----
	(0,	/* Midewiwin		:: 1 = Loads Midewiwin when Lite Mode is enabled					*/		'HR_MIDEWIWIN_LITE_EXCEPTION'),
	----
	(0,	/* Mukyo		:: 1 = Loads Mukyo when Lite Mode is enabled						*/		'HR_MUISM_LITE_EXCEPTION'),
	(0,	/* Tho Than		:: 1 = Loads Tho Than when Lite Mode is enabled						*/		'HR_TIANISM_LITE_EXCEPTION'),
	----	
	(0,	/* Tzolk'in		:: 1 = Loads Tzolk'in when Lite Mode is enabled						*/		'HR_TZOLKIN_LITE_EXCEPTION'),
	----
	
------------------------------------
-- Additional Lite Mode Custom Icons
------------------------------------

	----
	(1,	/* Atom Icon		:: 1 = Loads the Atom Custom Icon when Lite Mode is enabled				*/		'HR_ATHEISM_LITE_EXCEPTION'),
	----

--==========================================================================================================================	
--==========================================================================================================================
-- RANDOM & ALTERNATE RELIGIOUS PREFERENCES
--
-- The following options can be used to change the religious preferences of specific leaders.
--
-- The first option group removes all religious preferences which prompts leaders to choose a random available religion when founding a religion.
--
-- The second option group allows you to set an alternate historical choice based on the specified leader or civilization. Alternate preferences require 
-- the preferred religion to be enabled within the mod, otherwise the leader will default to their most appropriate enabled base religion.
--
-- KEY: 0, 1, 2... [Set Leader Preference to Specified Religion]
--==========================================================================================================================	
--==========================================================================================================================

------------------------------------
-- Random Religious Preferences
------------------------------------

	----
	(0,	/* All Leaders		:: 0 = Pre-set Preferences <-> 1 = Random Preferences								*/		'HR_RANDOM_PREFERENCES'),
	----

------------------------------------
-- Alternate Religious Preferences
------------------------------------

	----
	(0,	/* Alexander		:: 0 = Hellenism (Dodekatheon) / [GREECE: 1 = Eastern Orthodoxy] 						*/		'HR_ALEXANDER_MODERN'),
	(0,	/* Amanitore		:: 0 = Pesedjet / [SUDAN: 1 = Islam (Sunni)]									*/		'HR_AMANITORE_MODERN'),
	(0,	/* Ambiorix		:: 0 = Druidism, 1 = Forn Sidr / [BELGIUM: 2 = Catholicism]							*/		'HR_AMBIORIX_FORN_SIDR'),
	(0,	/* Barbarossa		:: 0 = Catholicism / [GERMANY: 1 = Protestantism (Lutheranism)] 						*/		'HR_BARBAROSSA_LUTHERANISM'),
	(0,	/* Basil		:: 0 = Eastern Orthodoxy, 1 = Catholicism									*/		'HR_BASIL_CATHOLICISM'),	
	(0,	/* Chandragupta		:: 0 = Jainism, 1 = Hinduism (Vedism) 										*/		'HR_CHANDRAGUPTA_JAINISM'),
	(0,	/* Cleopatra		:: 0 = Pesedjet, 1 = Hellenism (Dodekatheon) / [EGYPT: 2 = Islam (Sunni)]					*/		'HR_CLEOPATRA_HELLENISM'),
	(0,	/* Curtin		:: 0 = Protestantism (Calvinism), 1 = None 									*/		'HR_CURTIN_ATHEISM'),
	(0,	/* Cyrus		:: 0 = Zoroastrianism (Mazdayasna) / [IRAN: 1 = Islam (Shia)]							*/		'HR_CYRUS_MODERN'),
	(0,	/* Dido			:: 0 = Canaanism / [CARTHAGE: 1 = Hellenism (Imperial Cult)] / [SYRIA: 2 = Islam (Sunni)]			*/		'HR_CARTHAGE_LEBANON'),
	(0,	/* Eleanor (England)	:: 0 = Catholicism / [ENGLAND: 1 = Protestantism (Anglicanism)]							*/		'HR_ELEANOR_ENGLAND'),
	(0,	/* Genghis		:: 0 = Tengriism / [MONGOLIA: 1 = Buddhism (Vajrayana)]								*/		'HR_MODERN_MONGOLIA'),
	(0,	/* Gilgamesh		:: 0 = Chaldaeanism / [IRAQ: 1 = Islam (Shia)]									*/		'HR_GILGAMESH_IRAQ'),
	(0,	/* Gitarja		:: 0 = Hinduism (Shaivism) / [INDONESIA: 1 = Islam (Sunni)]							*/		'HR_GITARJA_ISLAM'),
	(0,	/* Gorgo		:: 0 = Hellenism (Dodekatheon) / [GREECE: 1 = Eastern Orthodoxy] 						*/		'HR_GORGO_MODERN'),
	(0,	/* Hammurabi		:: 0 = Chaldaeanism / [IRAQ: 1 = Islam (Shia)]									*/		'HR_HAMMURABI_IRAQ'),
	(0,	/* Hardrada		:: 0 = Eastern Orthodoxy, 1 = Catholicism / [VIKING: 2 = Forn Sidr] / [NORWAY: 3 = Protestantism (Lutheranism)] */		'HR_HARDRADA_FORN_SIDR_LUTHERANISM'),	
	(0,	/* Hojo			:: 0 = Buddhism (Mahayana) / [JAPAN: 1 = Shinto]								*/		'HR_HOJO_SHINTO'),	
	(0,	/* Jayavarman		:: 0 = Buddhism (Mahayana) / [CAMBODIA: 1 = (Theravada)]							*/		'HR_JAYAVARMAN_THERAVADA'),
	(0,	/* Kristina		:: 0 = Catholicism, 1 = Protestantism (Lutheranism) 								*/		'HR_KRISTINA_LUTHERANISM'),
	(0,	/* Kublai (Mongolia)	:: 0 = Buddhism (Vajrayana) / [MONGOLIA: 1 = Tengriism]								*/		'HR_KUBLAI_TENGRIISM'),
	(0,	/* Kublai (China)	:: 0 = Buddhism (Vajrayana) / [MONGOLIA: 1 = Tengriism] / [CHINA: 2 = Taoism, 3 = State Atheism, 4 = None]	*/		'HR_KUBLAI_CHINA_TENGRIISM'),		
	(0,	/* Kupe			:: 0 = Manaism (Puta Tumu) / [MODERN: 1 = Protestantism (Anglicanism)]						*/		'HR_KUPE_MODERN'),
	(0,	/* Lady Six Sky		:: 0 = Tlateomatiliztli (Tzolk'in) / [MEXICO: 1 = Catholicism]							*/		'HR_MAYA_MODERN'),
	(0,	/* Lautaro		:: 0 = Witran Mapu / [MODERN: 1 = Catholicism]									*/		'HR_MAPUCHE_MODERN'),
	(0,	/* Montezuma		:: 0 = Tlateomatiliztli / [MEXICO: 1 = Catholicism]								*/		'HR_AZTEC_MODERN'),
	(0,	/* Mvemba a Nzinga	:: 0 = Catholicism, 1 = Nzambiism 										*/		'HR_MVEMBA_NZAMBIISM'),
	(0,	/* Pachacuti		:: 0 = Ayni (Intiism) / [PERU: 1 = Catholicism]									*/		'HR_INCA_MODERN'),
	(0,	/* Pericles		:: 0 = Hellenism (Dodekatheon) / [GREECE: 1 = Eastern Orthodoxy]						*/		'HR_PERICLES_MODERN'),
	(0,	/* Poundmaker		:: 0 = Wakan Tanka / [WOODLAND CREE: 1 = Midewiwin] / [MODERN: 2 = Protestantism (Anglicanism)]			*/		'HR_POUNDMAKER_MIDEWIWIN'),
	(0,	/* Qin			:: 0 = Legalism, 1 = Taoism / [CHINA: 2 = State Atheism, 3 = None]						*/		'HR_QIN_LEGALISM'),
	(0,	/* Robert the Bruce	:: 0 = Catholicism / [SCOTLAND: 1 = Protestantism (Calvinism)]							*/		'HR_SCOTLAND_MODERN'),
	(0,	/* Seondeok		:: 0 = Buddhism (Mahayana) / [KOREA: 1 = Mukyo, 2 = Confucianism, 3 = None] 					*/		'HR_SEONDEOK_CONFUCIANISM_MUISM'),	
	(0,	/* Shaka		:: 0 = Amatongo / [SOUTH AFRICA: 1 = Restorationism (Pentecostalism)]						*/		'HR_SOUTH_AFRICA_MODERN'),
	(0,	/* Tomyris		:: 0 = Sairimaism / [CENTRAL ASIA: 1 = Islam (Sunni)]								*/		'HR_TOMYRIS_MODERN'),
	(0,	/* Trajan		:: 0 = Hellenism (Imperial Cult) / [ROME: 1 = (Numenism), 2 = (Sol Invictus), 3 = Catholicism]			*/		'HR_ITALY_MODERN'),
	(0,	/* Trieu		:: 0 = Tho Than, 1 = Buddhism (Mahayana), 2 = None 								*/		'HR_TRIEU_CONFUCIANISM'),	
	(0,	/* Wilhelmina		:: 0 = Protestantism (Calvinism) / [NETHERLANDS: 1 = None]							*/		'HR_NETHERLANDS_MODERN'),
	----

--==========================================================================================================================	
--==========================================================================================================================	
-- CHANGE DEFAULT RELIGION NAMES
--
-- The following options can be used to change the default name of specific religions. The various names represent alternate, colloquial and/or more ethnically specific 
-- names as well as historically related religions and sub-religions.
--
-- These options require the game language set to English and religions will still retain their default order in the selection screen.
--
-- KEY: 0, 1, 2... [Set Religion Default Name]
--==========================================================================================================================
--==========================================================================================================================

------------------------------------
-- Change Default Names
------------------------------------

	----
	(0,	/* Ahmadiyah		:: 0 = Ahmadiyah <-> 1 = Ahmadi Islam 							*/		'HR_NAMING_AHMADI'),
	(0,	/* Ardavda		:: 0 = Ardavda <-> 1 = Uatsdin <-> 2 = Assianism 	 				*/		'HR_NAMING_SCYTHIA'),	
	(0,	/* Atenism		:: 0 = Atenism <-> 1 = Amarna Heresy							*/		'HR_NAMING_ATENISM'),	
	(0,	/* Baha'i		:: 0 = Baha'i <-> 1 = Baha'i Faith							*/		'HR_NAMING_BAHAI'),	
	(0,	/* Calvinism		:: 0 = Calvinism <-> 1 = Reformed Protestantism <-> 2 = Presbyterianism			*/		'HR_NAMING_CALVINISM'),	
	(0,	/* Dodekatheon		:: 0 = Dodekatheon <-> 1 = Olympianism							*/		'HR_NAMING_DODEKATHEON'),			
	(0,	/* Dreamtime		:: 0 = Dreamtime <-> 1 = Altjirrinja <-> 2 = Tjukurpa <-> 3 = Wapar			*/		'HR_NAMING_DREAMTIME'),
	(0,	/* Forn Sidr		:: 0 = Forn Sidr <-> 1 = Asatru <-> 2 = Wotanism <-> 3 = Heathenism 			*/		'HR_NAMING_NORSE_RELIGIONS'),
	(0,	/* Ibadiyah		:: 0 = Ibadiyah <-> 1 = Ibadi <-> 2 = Ibadi Islam 					*/		'HR_NAMING_IBADI'),
	(0,	/* Ifa			:: 0 = Ifa <-> 1 = Itan									*/		'HR_NAMING_IFA'),	
	(0,	/* Imamiyah		:: 0 = Imamiyah <-> 1 = Ithnashariyah <-> 2 = Twelver					*/		'HR_NAMING_TWELVER'),	
	(0,	/* Ismailiyah		:: 0 = Ismailiyah <-> 1 = Ismaili Islam							*/		'HR_NAMING_ISMAILI'),	
	(0,	/* Latter-day Saints	:: 0 = Latter-day Saints <-> 1 = Mormonism						*/		'HR_NAMING_MORMONISM'),
	(0,	/* Legalism		:: 0 = Legalism <-> 1 = Fajia								*/		'HR_NAMING_LEGLISM'),
	(0,	/* Mazdayasna		:: 0 = Mazdayasna <-> 1 = Zoroastrianism						*/		'HR_NAMING_ZOROASTRIANISM'),
	(0,	/* Mi-chos		:: 0 = Mi-chos <-> 1 = Bon								*/		'HR_NAMING_BON'),
	(0,	/* Mithraism		:: 0 = Mithraism <-> 1 = Sol Invictus							*/		'HR_NAMING_MITHRAISM'),
	(0,	/* Mukyo		:: 0 = Mukyo <-> 1 = Sinkyo								*/		'HR_NAMING_MUKYO'),
	(0,	/* Mushrikun		:: 0 = Mushrikun <-> 1 = Wathanism							*/		'HR_NAMING_ARABIC'),
	(0,	/* Nestorianism		:: 0 = Nestorianism <-> 1 = Church of the East						*/		'HR_NAMING_NESTORIANISM'),
	(0,	/* Oriental Orthodoxy	:: 0 = Oriental Orthodoxy <-> 1 = Miaphysitism <-> 2 = Coptic Christianity		*/		'HR_NAMING_ORIENTAL'),
	(0,	/* Palo			:: 0 = Palo <-> 1 = Antonianism								*/		'HR_NAMING_PALO'),	
	(0,	/* Pentecostalism	:: 0 = Pentecostalism <-> 1 = Charismatic Christianity					*/		'HR_NAMING_PENTECOSTALISM'),		
	(0,	/* Pesedjet		:: 0 = Pesedjet <-> 1 = Kemetism <-> 2 = Neterism					*/		'HR_NAMING_PESEDJET'),	
	(0,	/* Puta Tumu		:: 0 = Puta Tumu <-> 1 = Whakapapa							*/		'HR_NAMING_PUTA_TUMU'),
	(0,	/* Rodnovery		:: 0 = Rodnovery <-> 1 = Vedism								*/		'HR_NAMING_RODNOVERY'),
	(0,	/* Shia			:: 0 = Shia <-> 1 = Shia Islam	 							*/		'HR_NAMING_SHIA'),
	(0,	/* Society of Friends	:: 0 = Society of Friends <-> 1 = Quakerism						*/		'HR_NAMING_QUAKER'),
	(0,	/* Sunni		:: 0 = Sunni <-> 1 = Sunni Islam							*/		'HR_NAMING_SUNI'),	
	(0,	/* Tlateomatiliztli	:: 0 = Tlateomatiliztli <-> 1 = Teotl							*/		'HR_NAMING_TEOTL'),
	(0,	/* Voodoo		:: 0 = Voodoo <-> 1 = Vodun								*/		'HR_NAMING_VOODOO'),
	(0,	/* Vedicism		:: 0 = Vedicism <-> 1 = Brahmanism							*/		'HR_NAMING_VEDICISM'),
	(0,	/* Wakan Tanka		:: 0 = Wakan Tanka <-> 1 = Gitche Manitou						*/		'HR_NAMING_WAKAN'),
	(0,	/* Yazidism		:: 0 = Yazidism <-> 1 = Yarsanism <-> 2 = Alevism					*/		'HR_NAMING_YAZIDI'),
	(0,	/* Zaidiyah		:: 0 = Zaidiyah <-> 1 = Zaidi Islam <-> 2 = Fiver					*/		'HR_NAMING_FIVER'),
	----
	(0,	/* Atom Icon		:: 0 = Atom Icon (Custom) <-> 1 = State Atheism (Named) 				*/		'HR_NAMING_ATOM_ICON'),
	----

--==========================================================================================================================	
--==========================================================================================================================	
-- UNPREFERRED RELIGIONS ARE NAMEABLE (FUNCTION AS CUSTOM ICONS)
--
-- This option sets all religions not preferred by a leader AND not included in the base game or Lite Mode to function as a custom icon (allowing you to rename the icon 
-- when founding a religion).
--
-- It is not recommended to use this option in conjunction with the 'Random Religious Preferences' option, as it can cause interface errors if the AI is forced to choose 
-- a custom icon as its preferred religion. This option requires Complete Mode.
--
-- KEY: 0 [Disable]; 1 [Enable]
--==========================================================================================================================
--==========================================================================================================================

------------------------------------
-- Unpreferred Religions Are Nameable
------------------------------------

	----
	(0,	/* Unpreferred Religions :: 0 = Pre-set Names <-> 1 = Custom Names						*/		'HR_CUSTOM_NAMES');
	----

--==========================================================================================================================
--==========================================================================================================================










