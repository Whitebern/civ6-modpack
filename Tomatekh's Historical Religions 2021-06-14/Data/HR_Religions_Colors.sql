---------------------------------------------------------------------------
---------------------------------------------------------------------------

--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_BUDDHISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CATHOLICISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CONFUCIANISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_HINDUISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_ISLAM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_JUDAISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_ORTHODOXY';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_PROTESTANTISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_SHINTO';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_SIKHISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_TAOISM';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_ZOROASTRIANISM';

--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_1';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_2';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_3';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_4';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_5';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_6';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_7';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_8';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_9';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_10';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_11';
--DELETE FROM Colors WHERE Type = 'COLOR_RELIGION_CUSTOM_12';

---------------------------------------------------------------------------
---------------------------------------------------------------------------

INSERT OR REPLACE INTO Colors 
		(Type,							Red,			Green,			Blue,		Alpha)
VALUES	
		('COLOR_RELIGION_BUDDHISM_UI',			1,			0.501,			0,		1),
		('COLOR_RELIGION_CATHOLICISM_UI',			1,			0.407,			0.309,		1),	
		('COLOR_RELIGION_CONFUCIANISM_UI',				0.9,			0.425,			0.475,		1),
		('COLOR_RELIGION_HINDUISM_UI',				0.5,			0.5,			1,		1),
		('COLOR_RELIGION_ISLAM_UI',				0,			0.9,			0,		1),
		('COLOR_RELIGION_JUDAISM_UI',				0.35,			0.55,			1,		1),
		--('COLOR_RELIGION_ORTHODOXY_UI',	0.45,			0.75,			1,		1),
		('COLOR_RELIGION_ORTHODOXY_UI',	0.5,			0.7,			1,		1),
		('COLOR_RELIGION_PROTESTANTISM_UI',		1,			0.705,			0.509,		1),
		('COLOR_RELIGION_SHINTO_UI',				0.866,			0.15,			0.133,		1),
		('COLOR_RELIGION_SIKHISM_UI',				0.721,			0.729,			0.427,		1),
		('COLOR_RELIGION_TAOISM_UI',				0.6,			0.6,			0.6,		1),
		--('COLOR_RELIGION_ZOROASTRIANISM_UI',				0.9,			0.9,			0.1,		1),
		('COLOR_RELIGION_ZOROASTRIANISM_UI',				0.922,			0.922,			0.059,		1),

		('COLOR_RELIGION_CUSTOM_1_UI',				0.941,			0.407,			0.082,		1),
		('COLOR_RELIGION_CUSTOM_2_UI',				0.696,			0.3,			0.366,		1),		
		('COLOR_RELIGION_CUSTOM_3_UI',			0.129,			0.521,			0.654,		1),
		('COLOR_RELIGION_CUSTOM_4_UI',				0.674,			0.662,			0.447,		1),
		('COLOR_RELIGION_CUSTOM_5_UI',					0.167,			0.96,			0.901,		1),
		('COLOR_RELIGION_CUSTOM_6_UI',			0.556,			0.27,			0.521,		1),
		('COLOR_RELIGION_CUSTOM_7_UI',					0.227,			0.65,			0.333,		1),
		('COLOR_RELIGION_CUSTOM_8_UI',				0.604,			0.804,			0.196,		1),
		('COLOR_RELIGION_CUSTOM_9_UI',				0.25,			0.25,			0.95,		1),	
		('COLOR_RELIGION_CUSTOM_10_UI',			0.901,			0.18,			0.18,		1),
		('COLOR_RELIGION_CUSTOM_11_UI',			1,			0.498,			1,		1),
		('COLOR_RELIGION_CUSTOM_12_UI',				0.69,			0.69,			0.69,		1);

--INSERT OR REPLACE INTO Colors 
--		(Type,							Red,			Green,			Blue,		Alpha)
--VALUES	('COLOR_RELIGION_BUDDHISM',			1,			0.501,			0,		1),
--		('COLOR_RELIGION_CATHOLICISM',			1,			0.407,			0.309,		1),	
--		('COLOR_RELIGION_CONFUCIANISM',				0.9,			0.425,			0.475,		1),
--		('COLOR_RELIGION_HINDUISM',				0.5,			0.5,			1,		1),
--		('COLOR_RELIGION_ISLAM',				0,			0.9,			0,		1),
--		('COLOR_RELIGION_JUDAISM',				0.35,			0.55,			1,		1),
--		--('COLOR_RELIGION_ORTHODOXY',	0.45,			0.75,			1,		1),
--		('COLOR_RELIGION_ORTHODOXY',	0.5,			0.7,			1,		1),
--		('COLOR_RELIGION_PROTESTANTISM',		1,			0.705,			0.509,		1),
--		('COLOR_RELIGION_SHINTO',			0.866,			0.15,			0.133,			1),
--		('COLOR_RELIGION_SIKHISM',				0.721,			0.729,			0.427,		1),
--		('COLOR_RELIGION_TAOISM',				0.6,			0.6,			0.6,		1),
--		('COLOR_RELIGION_ZOROASTRIANISM',				0.9,			0.9,			0.1,		1),
--
--		('COLOR_RELIGION_CUSTOM_1',				0.941,			0.407,			0.082,		1),
--		('COLOR_RELIGION_CUSTOM_2',				0.696,			0.3,			0.366,		1),		
--		('COLOR_RELIGION_CUSTOM_3',			0.129,			0.521,			0.654,		1),
--		('COLOR_RELIGION_CUSTOM_4',				0.674,			0.662,			0.447,		1),
--		('COLOR_RELIGION_CUSTOM_5',					0.167,			0.96,			0.901,		1),
--		('COLOR_RELIGION_CUSTOM_6',			0.556,			0.27,			0.521,		1),
--		('COLOR_RELIGION_CUSTOM_7',					0.227,			0.65,			0.333,		1),
--		('COLOR_RELIGION_CUSTOM_8',				0.604,			0.804,			0.196,		1),
--		('COLOR_RELIGION_CUSTOM_9',				0.25,			0.25,			0.95,		1),	
--		('COLOR_RELIGION_CUSTOM_10',			0.901,			0.18,			0.18,		1),
--		('COLOR_RELIGION_CUSTOM_11',			1,			0.498,			1,		1),
--		('COLOR_RELIGION_CUSTOM_12',				0.69,			0.69,			0.69,		1);

INSERT OR REPLACE INTO Colors 
		(Type,							Red,			Green,			Blue,		Alpha)
VALUES	--('COLOR_RELIGION_AMATONGO',		0.894,			0.815,			0.039,		1),		
		('COLOR_RELIGION_AMATONGO',		0.839,			0.764,			0.035,		1),	
		('COLOR_RELIGION_ONYAMESOM',				1,			0.686,			0.196,		1),		
		('COLOR_RELIGION_BAHAI',				0.627,			0.47,			0.352,		1),
		('COLOR_RELIGION_B1_MAHAYANA',			0.95,			0.2,			0,		1),
		--('COLOR_RELIGION_CHALDAENISM',				0.831,			0.49,			1,		1),
		('COLOR_RELIGION_CHALDAENISM',				0.8,			0.4,			1,		1),
		--('COLOR_RELIGION_DRUIDISM',			0.26,			0.68,			0.36,		1),
		('COLOR_RELIGION_DRUIDISM',			0.075,			0.49,			0.172,		1),
		('COLOR_RELIGION_JAINISM',			0.9,			0.45,			0.9,		1),
		('COLOR_RELIGION_MANICHAEISM',		0.95,			0.85,			0.2,		1),
		('COLOR_RELIGION_PJELANCA',			0.443,			0.674,			0.454,		1),		
		('COLOR_RELIGION_G7',				0.984,			0.807,			0.694,		1),
		('COLOR_RELIGION_G5',			0.125,			0.694,			0.666,		1),
		('COLOR_RELIGION_SAIRIMAISM',			0.764,			0.69,			0.568,		1),
		('COLOR_RELIGION_SOUTHERN_CULT',		0.117,			0.564,			1,		1),
		--('COLOR_RELIGION_TENGRIISM',			1,			0.623,			0.25,		1),
		('COLOR_RELIGION_TENGRIISM',			1,			0.556,			0.09,		1),
		('COLOR_RELIGION_TJUKURPA',			1,			0.976,			0.749,		1),
		('COLOR_RELIGION_TLATEOMATILIZTLI',	0.65,			1,			0.419,		1),
		('COLOR_RELIGION_WAKAN_TANKA',		0.631,			0.384,			0.282,		1),
		('COLOR_RELIGION_G3',				0.901,			0.658,			0.09,		1),
		('COLOR_RELIGION_G2',				0.382,			0.625,			0.731,		1),		
		('COLOR_RELIGION_G8',				0.262,			0.588,			0.937,		1),
		('COLOR_RELIGION_CNAANISM',			0.819,			0,			0.325,		1),
		('COLOR_RELIGION_C1_ORIENTAL',				0.55,			1,			0.55,		1),
		('COLOR_RELIGION_FORN_SIDR',			1,			1,			0.5,		1),	
		('COLOR_RELIGION_NZAMBIISM',			0.478,			0.658,			0.098,		1),
		('COLOR_RELIGION_SMANISM',				0.5,			1,			1,		1),
		('COLOR_RELIGION_I1_SHIA',				0.5,			0.9,			0,		1),
		('COLOR_RELIGION_VOODOO',				0.564,			0.392,			0.607,		1),
		('COLOR_RELIGION_G4',				0.701,			0.349,			0,		1),
		('COLOR_RELIGION_X1',				0,			0.498,			1,		1),
		('COLOR_RELIGION_C3_ANGLICANISM',			0.8,			0.8,			0.8,		1),
		('COLOR_RELIGION_SGAANAANG',			0.85,			0.85,			0.85,		1),
		('COLOR_RELIGION_HELLENISM',			0.7,			0.75,			0.85,		1),
		('COLOR_RELIGION_C2_NESTORIANISM',			0.85,			0.7,			0.2,		1),
		('COLOR_RELIGION_PESEDJET',			0.721,			0.525,			0.043,		1),
		('COLOR_RELIGION_ITANG',				0,			0.651,			0.576,		1),
		('COLOR_RELIGION_I2_IBADI',				0.1,			0.582,			0.755,		1),
		('COLOR_RELIGION_H3_SHAIVISM',				0.541,			0.169,			0.886,		1),
		('COLOR_RELIGION_H1_VEDISM',				0.886,			0.345,			0.133,		1),
		('COLOR_RELIGION_H2_VAISHNAVISM',				0.118,			0.565,			1,		1),
		('COLOR_RELIGION_H4_SHAKTISM',				0.965,			0.29,			0.541,		1),
		('COLOR_RELIGION_MSHRIKUN',			0.506,			0.676,			0.651,		1),		
		('COLOR_RELIGION_BIRD_FIGURE',		0.585,			0.785,			0.635,		1),
		('COLOR_RELIGION_MUISM',				0.804,			0.498,			0.196,		1),	
		('COLOR_RELIGION_WITRAN_MAPU',					0.4,			0.725,			0.725,		1),			
		('COLOR_RELIGION_KACHINA',					0.760,			0.698,			0.502,		1),
		('COLOR_RELIGION_ANKATTU',					0.639,			0.756,			0.756,		1),
		('COLOR_RELIGION_R7_HEROS_CULT',					0.627,			0.470,			0.354,		1),
		('COLOR_RELIGION_RODNOVERY',					0.925,			0.25,			0.25,		1),		
		('COLOR_RELIGION_MIDEWIWIN',					0.972,			0.87,			0.49,		1),
		('COLOR_RELIGION_IFA',					0.678,			0.494,			0.259,		1),
		('COLOR_RELIGION_ZEMIISM',					0.2,			0.67,			0.354,		1),
		('COLOR_RELIGION_NUM',					1,			0.5,			0.5,		1),
		--('COLOR_RELIGION_PHI',				0.7,			0.35,			0.1,		1),
		('COLOR_RELIGION_PHI',				0.65,			0.45,			0.375,		1),
		('COLOR_RELIGION_LIIM_DINGIRMES',					0.639,			0.631,			0.129,		1),	
		('COLOR_RELIGION_E2_ATENISM',					0.984,			0.925,			0.364,		1),
		('COLOR_RELIGION_E1_AMANAIISM',					1,			0.404,			0.22,		1),
		('COLOR_RELIGION_MNDAENISM',					0.89,			0.66,			0.44,		1),
		('COLOR_RELIGION_I3_DRUZE',					1,			0.552,			0.454,		1),
		('COLOR_RELIGION_G1',					1,			0.722,			0.365,		1),
		('COLOR_RELIGION_YAZDANISM',					0.996,			0.772,			0,		1),
		('COLOR_RELIGION_R1_ATANODJUWAJA_CULT',					0.125,			0.65,			0.766,		1),
		('COLOR_RELIGION_R2_MYSTERIES',					0.584,			0.455,			0.584,		1),
		('COLOR_RELIGION_R3_NEOPLATONISM',				0.56,			0.86,			0.86,		1),
		('COLOR_RELIGION_R6_MITHRAISM',					0.375,			0.5,			0.875,		1),		
		('COLOR_RELIGION_R4_NUMENISM',					1,			0.65,			0.35,		1),
		('COLOR_RELIGION_AGAKKUNNGURNIQ',		0.129,			0.521,			0.654,		1),
		('COLOR_RELIGION_LAIBONI',					0.89,			0.447,			0.231,		1),
		('COLOR_RELIGION_P1_CALVINISM',					1,			1,			0.725,		1),		
		('COLOR_RELIGION_C5_ARIANISM',					0.511,			0.839,			0.912,		1),		
		('COLOR_RELIGION_C4_RESTORATIONISM',					0.951,			0.863,			0.509,		1),
		('COLOR_RELIGION_NOAIDEVUOHTA',					0.847,			0.749,			0.847,		1),	
		('COLOR_RELIGION_P2_BAPTIST',					0.55,			0.45,			0.9,		1),
		('COLOR_RELIGION_B2_VAJRAYANA',					0.95,			0.8,			0.3,		1),
		('COLOR_RELIGION_R5_IMPERIAL_CULT',					0.996,			0.235,			0.235,		1),
		('COLOR_RELIGION_P3_METHODISM',					0.89,			0.258,			0.203,		1),
		('COLOR_RELIGION_P4_PENTECOSTALISM',					1,			0.498,			0.314,		1),
		('COLOR_RELIGION_M1_ASHURISM',					0.851,			0.271,			0.1,		1),
		('COLOR_RELIGION_G9',					0.314,			0.784,			0.575,		1),
		('COLOR_RELIGION_C6_CATHARISM',					0.769,			0.218,			0.327,		1),
		('COLOR_RELIGION_TZOLKIN',					0.604,			0.804,			0.196,		1),
		('COLOR_RELIGION_MLAGAN',					0.878,			0.69,			1,		1),
		('COLOR_RELIGION_G6',					0.95,			0.85,			0.5,		1),
		('COLOR_RELIGION_TMAUKELISM',				0.65,			0.8,			0.85,		1),
		--('COLOR_RELIGION_BMUNTU',					0.804,			0.498,			0.196,		1),
		('COLOR_RELIGION_BMUNTU',					0.039,			0.372,			0.372,		1),
		('COLOR_RELIGION_X3',					0.89,			0.447,			0.231,		1),
		('COLOR_RELIGION_X4',					0.9,			0.75,			0.2,		1),
		('COLOR_RELIGION_X2',					0.48,			0.66,			0.01,		1),
		('COLOR_RELIGION_X5',					0.627,			0.470,			0.354,		1),
		('COLOR_RELIGION_P5_ADVENTISM',					0.9,			0.9,			0.1,		1),
		('COLOR_RELIGION_M2_NAPIR',					0.130,			0.720,			0.150,		1),--	
		('COLOR_RELIGION_U1_SUOMENUSKO',					0,			0.85,			0.65,		1),
		('COLOR_RELIGION_S1_ROMUVA',					0.831,			0.49,			1,		1),
		('COLOR_RELIGION_OENDA',					0.275,			0.6,			0.9,		1),--
		('COLOR_RELIGION_SNTERIA',					0.9,			0.5,			0.45,		1),
		('COLOR_RELIGION_X0',					0.004,			0.8,			1,		1), --Cup
		('COLOR_RELIGION_X9',					0.65,			0.8,			0.85,		1),
		('COLOR_RELIGION_X8',				0.635,			0.784,			0.588,		1),
		('COLOR_RELIGION_Q1',					0.75,			0.25,			0.95,		1),
		('COLOR_RELIGION_A2_CHIMINIGAGUA',					0.981,			0.742,			0.345,		1),
		('COLOR_RELIGION_A1_INTIISM',					0.8,			0.65,			0.15,		1),
		--('COLOR_RELIGION_Q4',					0.95,			0.4,			0.25,		1), -- Fox and Owl
		('COLOR_RELIGION_Q4',					0.7,			0.35,			0.1,		1), -- Fox and Owl
		('COLOR_RELIGION_I4_AHMADI',					0.774,       		0.843,         		0.488,          1),
		('COLOR_RELIGION_AITO',				0.95,			0.3,			0.7,		1),
		('COLOR_RELIGION_RAZANA',					0.9,			0.05,			0.7,		1),
		('COLOR_RELIGION_POHAKANTENNA',					0.65,			0.55,			0.34,		1),
		('COLOR_RELIGION_MHOMA',					0.15,			0.75,			0.55,		1),
		('COLOR_RELIGION_MWARI',					0.6,			0.6,			0.6,		1),
		('COLOR_RELIGION_Q5',						0.901,			0.658,			0.09,		1), --Astrolabe
		('COLOR_RELIGION_Q6',						0.506,			0.676,			0.651,		1),	--Tower	
		('COLOR_RELIGION_P6_ANABAPTISM',			0.6,			0.8,			0.95,		1),
		('COLOR_RELIGION_P7_QUAKER',				0.666,			0.612,			0.427,		1),	
		('COLOR_RELIGION_MOHISM',					0.995,			0.23,			0.24,		1),
		('COLOR_RELIGION_T1_SHENISM',				0.879,			0.157,			0.306,		1),
		('COLOR_RELIGION_DATURA',					0.537,			0.937,			0.835,		1),
		('COLOR_RELIGION_MCHOS',			0.8,			0.45,			0.7,		1),	
		('COLOR_RELIGION_NMMO',						0.306,			0.796,			0.870,		1),
		('COLOR_RELIGION_I5_TWELVER',						0.054,			0.8,			0.95,		1),
		('COLOR_RELIGION_I6_FIVER',					0.820,			0.845,			0.015,		1),
		('COLOR_RELIGION_I7_ISMAILI',					0.66,			0.86,			0.66,		1),
		('COLOR_RELIGION_Q7_LEGALISM',					0.957,			0.710,			0.341,		1),
		('COLOR_RELIGION_Q8_SPIRITISM',					0.882,			0.992,			0.039,		1),
		('COLOR_RELIGION_Q9_DINI_ILAHI',				0.80,			0.55,			0.95,		1),
		('COLOR_RELIGION_P9_UNITARIANISM',				1,			0.425,			0.555,		1),
		('COLOR_RELIGION_P8_WITNESSES',						0.506,			0.676,			0.651,		1),	--Tower	
		('COLOR_RELIGION_K0',						0.506,			0.676,			0.651,		1),	--Tower	
		('COLOR_RELIGION_C7_HUSSITISM',					0.95,			0.451,			0,		1),  --Cup
		('COLOR_RELIGION_C8_BOGOMILISM',					0.65,			0.55,			0.34,		1), --Robe
		('COLOR_RELIGION_K1_PALO',						0.9,			0.70,			0.70,		1),
		('COLOR_RELIGION_Q0',					1,			1,			1,		1),
		('COLOR_RELIGION_X6',					0.85,			0.16,			0.35,		1), -- Pentagram
		('COLOR_RELIGION_A0_PCHAISM',			0.645,			0.702,			0.302,		1),

		('COLOR_RELIGION_FAT_ROOG',				0.952,			0.498,			0.509,		1),
		('COLOR_RELIGION_Z1_ZURVANISM',				0.85,			0.35,			0.5,		1),

		('COLOR_RELIGION_O2_TALA_FONUA',				0.7,			0.9,			0,		1),
		('COLOR_RELIGION_PUATA_TUPUNA',					0.004,			0.8,			1,		1),	
		('COLOR_RELIGION_O1_TANGATA_MANU',				0,			0.85,			0.5,		1),	

		('COLOR_RELIGION_KEPERCAYAAN',			0.761,			0.286,			0.286,		1),

		('COLOR_RELIGION_ODINANI',				0.482,			0.514,			0.675,		1),
		('COLOR_RELIGION_A3_CHIMINIGAGUA',		0.981,			0.742,			0.345,		1),
		('COLOR_RELIGION_C0_CATHOLICISM',		0.890,			0.525,			0.204,		1),
		('COLOR_RELIGION_S0_RODNOVERY',			0.573,			0.374,			0.475,		1),	
		('COLOR_RELIGION_J0_CNAANISM',			0.524,			0.594,			0.747,		1),
		('COLOR_RELIGION_A4_ANDEAN',			1,				0.5,			0.7,		1),
		('COLOR_RELIGION_PCHAISM',				1,				0.5,			0.7,		1),
		('COLOR_RELIGION_G0_MANICHAEISM',		0.666,			0.612,			0.427,		1),

		('COLOR_RELIGION_TIANISM',				0.16,			0.50,			0.43,		1),

		('COLOR_RELIGION_Q3',					1,				0.407,			0.309,		1), --Rose
		('COLOR_RELIGION_X7',					0.831,			0.49,				1,		1), --Spiral
		('COLOR_RELIGION_Q2',					0.721,			0.525,			0.043,		1), --Face
		('COLOR_RELIGION_E0_PESEDJET',			0.981,			0.742,			0.345,		1), --Scarab

		('COLOR_TEST_0',					1,			1,			1,		1),
		('COLOR_TEST_1',					1,			1,			1,		1),
		('COLOR_TEST_2',					1,			1,			1,		1),
		('COLOR_TEST_3',					1,			1,			1,		1),
		('COLOR_TEST_4',					1,			1,			1,		1),
		('COLOR_TEST_5',					1,			1,			1,		1),
		('COLOR_TEST_6',					1,			1,			1,		1),
		('COLOR_TEST_7',					1,			1,			1,		1),
		('COLOR_TEST_8',					1,			1,			1,		1),
		('COLOR_TEST_9',					1,			1,			1,		1),

		('COLOR_EX_BUDDHISM_HR',			1,			0.501,			0,		1),
		('COLOR_EX_CATHOLICISM_HR',			1,			0.407,			0.309,		1),
		('COLOR_EX_CONFUCIANISM_HR',				0.9,			0.425,			0.475,		1),
		('COLOR_EX_HINDU_HR',				0.5,			0.5,			1,		1),
		('COLOR_EX_SUNNI_HR',				0,			0.9,			0,		1),
		--('COLOR_EX_EASTERN_ORTHODOX_HR',	0.45,			0.75,			1,		1),
		('COLOR_EX_EASTERN_ORTHODOX_HR',	0.5,			0.7,			1,		1),
		('COLOR_EX_PROTESTANTISM_HR',		1,			0.705,			0.509,		1),
		('COLOR_EX_JUDAIC_HR',				0.364,			0.529,			1,		1),
		('COLOR_EX_SHINTO_HR',			0.866,			0.15,			0.133,			1),
		('COLOR_EX_SIKH_HR',				0.721,			0.729,			0.427,		1),
		('COLOR_EX_TAOISM_HR',				0.6,			0.6,			0.6,		1),
		--('COLOR_EX_ZOROASTRIANISM_HR',				0.9,			0.9,			0.1,		1),
		('COLOR_EX_ZOROASTRIANISM_HR',				0.922,			0.922,			0.059,		1),
		('COLOR_EX_ELEPHANT_HR',			0.129,			0.521,			0.654,		1),
		('COLOR_EX_BULL_HR',				0.696,			0.3,			0.366,		1),		
		('COLOR_EX_CANCER_HR',				0.941,			0.407,			0.082,		1),
		('COLOR_EX_LEO_HR',				0.674,			0.662,			0.447,		1),
		('COLOR_EX_VIRGO_HR',				0.604,			0.804,			0.196,		1),
		('COLOR_EX_WATER_HR',				0.2,			0.2,			0.9,		1),		
		('COLOR_EX_SCORPIO_HR',			0.556,			0.27,			0.521,		1),
		('COLOR_EX_FIRE_BIRD_HR',			0.901,			0.18,			0.18,		1),
		('COLOR_EX_BUTTERFLY_HR',			1,			0.498,			1,		1),
		('COLOR_EX_PISCES_HR',					0.167,			0.96,			0.901,		1),
		('COLOR_EX_TURTLE_HR',				0.69,			0.69,			0.69,		1),
		('COLOR_EX_SNAKE_HR',					0.227,			0.65,			0.333,		1),
		('COLOR_EX_PESEDJET_HR',			0.721,			0.525,			0.043,		1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------
