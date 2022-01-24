--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
--HR_Religions
--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

DELETE FROM Religions WHERE ReligionType = 'RELIGION_BUDDHISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CATHOLICISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CONFUCIANISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_HINDUISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_ISLAM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_JUDAISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_ORTHODOXY';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_SHINTO';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_SIKHISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_TAOISM';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_ZOROASTRIANISM';

DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_1';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_2';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_3';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_4';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_5';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_6';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_7';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_8';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_9';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_10';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_11';
DELETE FROM Religions WHERE ReligionType = 'RELIGION_CUSTOM_12';

--

CREATE TABLE IF NOT EXISTS
MomentIllustrations (
    MomentIllustrationType							text												default null,
    MomentDataType									text												default null,
	GameDataType									text												default null,
	Texture											text												default null);	

------------------------------------------------

-- Ajivika

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q1'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AJIVIKA' AND Value = 1);
			
INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q1'),			('LOC_RELIGION_Q1'),  				('Q1'),			0,				     ('COLOR_RELIGION_Q1')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AJIVIKA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q1'),					('HM_Religion_Q1.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AJIVIKA' AND Value = 1);
		
-- Akatt-u	
			
INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_ANKATTU'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANKATT_U' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_ANKATTU'),			('LOC_RELIGION_ANKATTU'),  			('An'),			0,				    ('COLOR_RELIGION_ANKATTU')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANKATT_U' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_ANKATTU'),				('HM_Religion_Ankattu.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANKATT_U' AND Value = 1);

------------------------------------------------

-- Amatongo

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_AMATONGO',  								'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
VALUES  	('RELIGION_AMATONGO',			'LOC_RELIGION_AMATONGO',  			'Am',			0,				    'COLOR_RELIGION_AMATONGO');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_AMATONGO',			'HM_Religion_Amatongo.dds');

-- Mwari Cult

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MWARI'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_AFRICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MWARI_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MWARI'),			('LOC_RELIGION_MWARI'),  			('Mw'),			0,				      ('COLOR_RELIGION_MWARI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_AFRICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MWARI_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MWARI'),					('HM_Religion_Mwari.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_AFRICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MWARI_CULT' AND Value = 1);

------------------------------------------------

-- Angakkunngurniq

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_AGAKKUNNGURNIQ'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AGAKKUNNGURNIQ' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_AGAKKUNNGURNIQ'),		('LOC_RELIGION_AGAKKUNNGURNIQ'),  		('Ag'),			0,				      ('COLOR_RELIGION_AGAKKUNNGURNIQ')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AGAKKUNNGURNIQ' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_AGAKKUNNGURNIQ'),		('HM_Religion_Agakkunngurniq.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AGAKKUNNGURNIQ' AND Value = 1);

------------------------------------------------

-- Sairimaism

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_SAIRIMAISM',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_SAIRIMAISM',			'LOC_RELIGION_SAIRIMAISM',			'Sa',			0,			             'COLOR_RELIGION_SAIRIMAISM');


INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_SAIRIMAISM',			'HM_Religion_Sairimaism.dds');

------------------------------------------------

-- Ayni

INSERT INTO Types
		(Type, 										           Kind)
VALUES  	('RELIGION_A0_PCHAISM',  								'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_A0_PCHAISM',		'LOC_RELIGION_A0_PCHAISM',			'A0',			0,				       'COLOR_RELIGION_A0_PCHAISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_A0_PCHAISM',			'HM_Religion_A0_Pchaism.dds');

-- Intiism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_A1_INTIISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INTIISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_A1_INTIISM'),		('LOC_RELIGION_A1_INTIISM'),  			('A1'),			0,				       ('COLOR_RELIGION_A1_INTIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INTIISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_A1_INTIISM'),			('HM_Religion_A1_Intiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INTIISM' AND Value = 1);

-- Chiminigagua

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_A3_CHIMINIGAGUA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHIMINIGAGUA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_A3_CHIMINIGAGUA'),		('LOC_RELIGION_A3_CHIMINIGAGUA'),  		('A3'),			0,				     ('COLOR_RELIGION_A3_CHIMINIGAGUA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHIMINIGAGUA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_A3_CHIMINIGAGUA'),		('HM_Religion_A3_Chiminigagua.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHIMINIGAGUA' AND Value = 1);

------------------------------------------------

-- Baha'i

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_BAHAI'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAHAI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_BAHAI'),			('LOC_RELIGION_BAHAI'),  			('Ba'),			0,				      ('COLOR_RELIGION_BAHAI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAHAI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_BAHAI'),					('HM_Religion_Bahai.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAHAI' AND Value = 1);

-- Bird Figure Cult	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_BIRD_FIGURE'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BIRD_FIGURE_CULT' AND Value = 1);


INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_BIRD_FIGURE'),		('LOC_RELIGION_BIRD_FIGURE'),  		('Bi'),			0,				('COLOR_RELIGION_BIRD_FIGURE')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BIRD_FIGURE_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_BIRD_FIGURE'),			('HM_Religion_Bird_Figure_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BIRD_FIGURE_CULT' AND Value = 1);

------------------------------------------------

-- Buddhism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
VALUES  	('RELIGION_BUDDHISM',			'LOC_RELIGION_BUDDHISM',  			'Bu',			0,				    'COLOR_RELIGION_BUDDHISM');

-- Mahayana

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_B1_MAHAYANA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_B1_MAHAYANA'),		('LOC_RELIGION_B1_MAHAYANA'),  			('B1'),			0,				    ('COLOR_RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_B1_MAHAYANA'),			('HM_Religion_B1_Mahayana.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_B1_MAHAYANA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_B1_MAHAYANA'),		('LOC_RELIGION_B1_MAHAYANA'),  			('B1'),			0,				    ('COLOR_RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_B1_MAHAYANA'),			('HM_Religion_B1_Mahayana.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Vajrayana

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_B2_VAJRAYANA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_B2_VAJRAYANA'),		('LOC_RELIGION_B2_VAJRAYANA'),  		('B2'),			0,				  ('COLOR_RELIGION_B2_VAJRAYANA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_B2_VAJRAYANA'),			('HM_Religion_B2_Vajrayana.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_B2_VAJRAYANA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_B2_VAJRAYANA'),		('LOC_RELIGION_B2_VAJRAYANA'),  		('B2'),			0,				  ('COLOR_RELIGION_B2_VAJRAYANA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_B2_VAJRAYANA'),			('HM_Religion_B2_Vajrayana.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------

-- Bumuntu

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_BMUNTU'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUMUNTU' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_BMUNTU'),			('LOC_RELIGION_BMUNTU'),  			('Bm'),			0,				       ('COLOR_RELIGION_BMUNTU')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUMUNTU' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_BMUNTU'),				('HM_Religion_Bmuntu.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUMUNTU' AND Value = 1);

-- Canaanism

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_CNAANISM',  								'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_CNAANISM',		'LOC_RELIGION_CNAANISM',			'Cn',			0,				       'COLOR_RELIGION_CNAANISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_CNAANISM',			'HM_Religion_Cnaanism.dds');

------------------------------------------------

-- Chaldaeanism

INSERT INTO Types
		(Type, 													Kind)
VALUES  	('RELIGION_CHALDAENISM',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_CHALDAENISM',		'LOC_RELIGION_CHALDAENISM',			'Ch',			0,				       'COLOR_RELIGION_CHALDAENISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_CHALDAENISM',			'HM_Religion_Chaldaeanism.dds');

-- Ashurism

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_M1_ASHURISM'),  							('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ASHURISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_M1_ASHURISM'),		('LOC_RELIGION_M1_ASHURISM'),  			('M1'),			0,				      ('COLOR_RELIGION_M1_ASHURISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ASHURISM' AND Value = 1);


INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_M1_ASHURISM'),			('HM_Religion_M1_Ashurism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ASHURISM' AND Value = 1);

-- Napir-tuniis

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_M2_NAPIR'),  							('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAPIR_TUNIIS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_M2_NAPIR'),			('LOC_RELIGION_M2_NAPIR'),  			('M2'),			0,				       ('COLOR_RELIGION_M2_NAPIR')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAPIR_TUNIIS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_M2_NAPIR'),				('HM_Religion_M2_Napir.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOPOTAMIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAPIR_TUNIIS' AND Value = 1);

------------------------------------------------

-- Catholicism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
VALUES 		('RELIGION_CATHOLICISM',		'LOC_RELIGION_CATHOLICISM',			'Ca',			0,			   'COLOR_RELIGION_CATHOLICISM');

UPDATE MomentIllustrations
SET Texture = 'HM_Religion_9b_Catholicism.dds'
WHERE GameDataType = 'RELIGION_CATHOLICISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CATHOLICISM');

--

CREATE TRIGGER HRCatholicIcon
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_CATHOLICISM' = NEW.GameDataType
BEGIN

	UPDATE MomentIllustrations
	SET Texture = 'HM_Religion_9b_Catholicism.dds'
	WHERE GameDataType = 'RELIGION_CATHOLICISM'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CATHOLICISM');

END;

-- Arianism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C5_ARIANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ARIANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_C5_ARIANISM'),		('LOC_RELIGION_C5_ARIANISM'),  			('C5'),			0,				   ('COLOR_RELIGION_C5_ARIANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ARIANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C5_ARIANISM'),			('HM_Religion_C5_Arianism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ARIANISM' AND Value = 1);

-- Nestorianism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C2_NESTORIANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NESTORIANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_C2_NESTORIANISM'),		('LOC_RELIGION_C2_NESTORIANISM'),  		('C2'),			0,				  ('COLOR_RELIGION_C2_NESTORIANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NESTORIANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C2_NESTORIANISM'),		('HM_Religion_C2_Nestorianism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NESTORIANISM' AND Value = 1);

-- Oriental Orthodoxy

INSERT INTO Types
		(Type, 													Kind)
VALUES  	('RELIGION_C1_ORIENTAL',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_C1_ORIENTAL',		'LOC_RELIGION_C1_ORIENTAL',			'C1',			0,				       'COLOR_RELIGION_C1_ORIENTAL');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_C1_ORIENTAL',			'HM_Religion_C1_Oriental.dds');

-- Bogomilism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C8_BOGOMILISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOGOMILISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_C8_BOGOMILISM'),		('LOC_RELIGION_C8_BOGOMILISM'),  			('C8'),			0,			            ('COLOR_RELIGION_C8_BOGOMILISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOGOMILISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C8_BOGOMILISM'),				('HM_Religion_C8_Bogomilism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOGOMILISM' AND Value = 1);

-- Eastern Orthodoxy

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_ORTHODOXY',		'LOC_RELIGION_ORTHODOXY',			'Or',			0,				       'COLOR_RELIGION_ORTHODOXY');

UPDATE MomentIllustrations
SET Texture = 'HM_Religion_9g_Orthodox.dds'
WHERE GameDataType = 'RELIGION_ORTHODOXY'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ORTHODOXY');

--

CREATE TRIGGER HREOrthodoxIcon
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_ORTHODOXY' = NEW.GameDataType
BEGIN

	UPDATE MomentIllustrations
	SET Texture = 'HM_Religion_9g_Orthodox.dds'
	WHERE GameDataType = 'RELIGION_ORTHODOXY'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ORTHODOXY');

END;

-- Catharism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C6_CATHARISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CATHARISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_C6_CATHARISM'),		('LOC_RELIGION_C6_CATHARISM'),  		('C6'),			0,				  ('COLOR_RELIGION_C6_CATHARISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CATHARISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C6_CATHARISM'),			('HM_Religion_C6_Catharism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CATHARISM' AND Value = 1);

-- Hussitism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C7_HUSSITISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HUSSITISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_C7_HUSSITISM'),		('LOC_RELIGION_C7_HUSSITISM'),  			('C7'),			0,			            ('COLOR_RELIGION_C7_HUSSITISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HUSSITISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C7_HUSSITISM'),				('HM_Religion_C7_Hussitism_B.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHRISTIAN_HERESIES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HUSSITISM' AND Value = 1);

-- Protestantism / Lutheranism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_PROTESTANTISM',		'LOC_RELIGION_PROTESTANTISM',			'Pr',			0,				       'COLOR_RELIGION_PROTESTANTISM');

-- Calvinism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P1_CALVINISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P1_CALVINISM'),		('LOC_RELIGION_P1_CALVINISM'),  		('P1'),			0,			          ('COLOR_RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P1_CALVINISM'),			('HM_Religion_P1_Calvinism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P1_CALVINISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_P1_CALVINISM'),		('LOC_RELIGION_P1_CALVINISM'),  		('P1'),			0,			          ('COLOR_RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P1_CALVINISM'),			('HM_Religion_P1_Calvinism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Anabaptism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P6_ANABAPTISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANABAPTISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P6_ANABAPTISM'),		('LOC_RELIGION_P6_ANABAPTISM'),  			('P6'),			0,			            ('COLOR_RELIGION_P6_ANABAPTISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANABAPTISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P6_ANABAPTISM'),			('HM_Religion_P6_Anabaptism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANABAPTISM' AND Value = 1);

-- Anglicanism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C3_ANGLICANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_C3_ANGLICANISM'),		('LOC_RELIGION_C3_ANGLICANISM'),  		('C3'),			0,			           ('COLOR_RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C3_ANGLICANISM'),		('HM_Religion_C3_Anglicanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICANISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C3_ANGLICANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICAN_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_C3_ANGLICANISM'),		('LOC_RELIGION_C3_ANGLICANISM'),  		('C3'),			0,			           ('COLOR_RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICAN_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C3_ANGLICANISM'),		('HM_Religion_C3_Anglicanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANGLICAN_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Unitarianism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P9_UNITARIANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_UNITARIANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P9_UNITARIANISM'),		('LOC_RELIGION_P9_UNITARIANISM'),  			('P9'),			0,			            ('COLOR_RELIGION_P9_UNITARIANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_UNITARIANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P9_UNITARIANISM'),				('HM_Religion_P9_Unitarianism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_UNITARIANISM' AND Value = 1);

-- Baptist Christianity

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P2_BAPTIST'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAPTIST' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P2_BAPTIST'),		('LOC_RELIGION_P2_BAPTIST'),  			('P2'),			0,			            ('COLOR_RELIGION_P2_BAPTIST')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAPTIST' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P2_BAPTIST'),			('HM_Religion_P2_Baptist.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BAPTIST' AND Value = 1);

-- Quakers

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P7_QUAKER'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QUAKERS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P7_QUAKER'),		('LOC_RELIGION_P7_QUAKER'),  			('P7'),			0,			            ('COLOR_RELIGION_P7_QUAKER')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QUAKERS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P7_QUAKER'),				('HM_Religion_P7_Quaker.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QUAKERS' AND Value = 1);

-- Methodism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P3_METHODISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_METHODISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P3_METHODISM'),		('LOC_RELIGION_P3_METHODISM'),  		('P3'),			0,			          ('COLOR_RELIGION_P3_METHODISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_METHODISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P3_METHODISM'),			('HM_Religion_P3_Methodism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_METHODISM' AND Value = 1);

-- Adventism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P5_ADVENTISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ADVENTISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P5_ADVENTISM'),		('LOC_RELIGION_P5_ADVENTISM'),  		('P5'),			0,			             ('COLOR_RELIGION_P5_ADVENTISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ADVENTISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P5_ADVENTISM'),			('HM_Religion_P5_Adventism_2.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ADVENTISM' AND Value = 1);

-- Restorationism / Mormonism

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C4_RESTORATIONISM'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_C4_RESTORATIONISM'),		('LOC_RELIGION_C4_RESTORATIONISM'),  		('C4'),			0,				     ('COLOR_RELIGION_C4_RESTORATIONISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C4_RESTORATIONISM'),		('HM_Religion_C4_Restorationism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C4_RESTORATIONISM'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_C4_RESTORATIONISM'),		('LOC_RELIGION_C4_RESTORATIONISM'),  		('C4'),			0,				     ('COLOR_RELIGION_C4_RESTORATIONISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C4_RESTORATIONISM'),		('HM_Religion_C4_Restorationism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM_1' AND Value = 1);

---------------------------

-- Jehovah's Witnesses

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P8_WITNESSES'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JEHOVAHS_WITNESSES' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P8_WITNESSES'),		('LOC_RELIGION_P8_WITNESSES'),  			('P8'),			0,			            ('COLOR_RELIGION_P8_WITNESSES')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JEHOVAHS_WITNESSES' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P8_WITNESSES'),				('HM_Religion_P8_Witnesses.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JEHOVAHS_WITNESSES' AND Value = 1);

-- Pentecostalism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P4_PENTECOSTALISM'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P4_PENTECOSTALISM'),		('LOC_RELIGION_P4_PENTECOSTALISM'),  		('P4'),			0,			          ('COLOR_RELIGION_P4_PENTECOSTALISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P4_PENTECOSTALISM'),		('HM_Religion_P4_Pentecostalism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_P4_PENTECOSTALISM'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_P4_PENTECOSTALISM'),		('LOC_RELIGION_P4_PENTECOSTALISM'),  		('P4'),			0,			          ('COLOR_RELIGION_P4_PENTECOSTALISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_P4_PENTECOSTALISM'),		('HM_Religion_P4_Pentecostalism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PENTECOSTALISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------

-- Confucianism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_CONFUCIANISM',		'LOC_RELIGION_CONFUCIANISM',			'Co',			0,			        'COLOR_RELIGION_CONFUCIANISM');

-- Datura Cult

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_DATURA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DATURA_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_DATURA'),			('LOC_RELIGION_DATURA'),  			('Di'),			0,			           ('COLOR_RELIGION_DATURA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DATURA_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_DATURA'),				('HM_Religion_Datura.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DATURA_CULT' AND Value = 1);

-- Din-i Ilahi	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q9_DINI_ILAHI'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DINI_ILAHI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q9_DINI_ILAHI'),			('LOC_RELIGION_Q9_DINI_ILAHI'),  			('Q9'),			0,			           ('COLOR_RELIGION_Q9_DINI_ILAHI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DINI_ILAHI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q9_DINI_ILAHI'),					('HM_Religion_Q9_Dini_Ilahi.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DINI_ILAHI' AND Value = 1);

-- Dreamtime

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TJUKURPA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DREAMTIME' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TJUKURPA'),			('LOC_RELIGION_TJUKURPA'),  			('Tj'),			0,			           ('COLOR_RELIGION_TJUKURPA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DREAMTIME' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TJUKURPA'),				('HM_Religion_Tjukurpa.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DREAMTIME' AND Value = 1);

-- Druidism

INSERT INTO Types
		(Type, 													Kind)
VALUES  	('RELIGION_DRUIDISM',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_DRUIDISM',		'LOC_RELIGION_DRUIDISM',			'Dr',			0,				       'COLOR_RELIGION_DRUIDISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_DRUIDISM',			'HM_Religion_Druidism.dds');

-- Forn Sidr

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_FORN_SIDR'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_FORN_SIDR'),			('LOC_RELIGION_FORN_SIDR'),  			('Fo'),			0,				      ('COLOR_RELIGION_FORN_SIDR')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_FORN_SIDR'),				('HM_Religion_Forn_Sidr.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_FORN_SIDR'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_FORN_SIDR'),			('LOC_RELIGION_FORN_SIDR'),  			('Fo'),			0,				      ('COLOR_RELIGION_FORN_SIDR')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_FORN_SIDR'),				('HM_Religion_Forn_Sidr.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FORN_SIDR_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------

-- Atanodjuwaja Cult	

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R1_ATANODJUWAJA_CULT'),  				('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATANODJUWAJA_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R1_ATANODJUWAJA_CULT'),	('LOC_RELIGION_R1_ATANODJUWAJA_CULT'),  	('R1'),			0,				     ('COLOR_RELIGION_R1_ATANODJUWAJA_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATANODJUWAJA_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R1_ATANODJUWAJA_CULT'),	('HM_Religion_R1_Atanodjuwaja_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATANODJUWAJA_CULT' AND Value = 1);

-- Mysteries

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R2_MYSTERIES'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MYSTERIES' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R2_MYSTERIES'),		('LOC_RELIGION_R2_MYSTERIES'),  		('R2'),			0,				  ('COLOR_RELIGION_R2_MYSTERIES')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MYSTERIES' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R2_MYSTERIES'),			('HM_Religion_R2_Mysteries.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MYSTERIES' AND Value = 1);

-- Hellenism / Dodekatheon

INSERT INTO Types
		(Type, 													Kind)
VALUES  	('RELIGION_HELLENISM',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,					 Color)
VALUES 		('RELIGION_HELLENISM',	'LOC_RELIGION_HELLENISM',	'He',			0,									'COLOR_RELIGION_HELLENISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_HELLENISM',			'HM_Religion_Hellenism.dds');

-- Neoplatonism

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R3_NEOPLATONISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NEOPLATONISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R3_NEOPLATONISM'),		('LOC_RELIGION_R3_NEOPLATONISM'),  		('R3'),			0,			       ('COLOR_RELIGION_R3_NEOPLATONISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NEOPLATONISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R3_NEOPLATONISM'),		('HM_Religion_R3_Neoplatonism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NEOPLATONISM' AND Value = 1);

-- Numenism

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R4_NUMENISM'),  							('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUMENISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R4_NUMENISM'),		('LOC_RELIGION_R4_NUMENISM'),  			('R4'),			0,				      ('COLOR_RELIGION_R4_NUMENISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUMENISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R4_NUMENISM'),			('HM_Religion_R4_Numenism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUMENISM' AND Value = 1);

-- Imperial Cult

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R5_IMPERIAL_CULT'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R5_IMPERIAL_CULT'),		('LOC_RELIGION_R5_IMPERIAL_CULT'),  		('R5'),			0,				   ('COLOR_RELIGION_R5_IMPERIAL_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R5_IMPERIAL_CULT'),		('HM_Religion_R5_Imperial_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_CULT' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_R5_IMPERIAL_CULT'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_R5_IMPERIAL_CULT'),		('LOC_RELIGION_R5_IMPERIAL_CULT'),  		('R5'),			0,				   ('COLOR_RELIGION_R5_IMPERIAL_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R5_IMPERIAL_CULT'),		('HM_Religion_R5_Imperial_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Mithraism	

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R6_MITHRAISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R6_MITHRAISM'),		('LOC_RELIGION_R6_MITHRAISM'),  		('R6'),			0,				    ('COLOR_RELIGION_R6_MITHRAISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R6_MITHRAISM'),			('HM_Religion_R6_Mithraism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R6_MITHRAISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAS_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R6_MITHRAISM'),		('LOC_RELIGION_R6_MITHRAISM'),  		('R6'),			0,				    ('COLOR_RELIGION_R6_MITHRAISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAS_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R6_MITHRAISM'),			('HM_Religion_R6_Mithraism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MITHRAS_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Heros Cult

INSERT INTO Types 
		(Type, 													Kind)
SELECT  	('RELIGION_R7_HEROS_CULT'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HEROS_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_R7_HEROS_CULT'),		('LOC_RELIGION_R7_HEROS_CULT'),  		('R7'),			0,				     ('COLOR_RELIGION_R7_HEROS_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HEROS_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_R7_HEROS_CULT'),			('HM_Religion_R7_Heros_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HEROS_CULT' AND Value = 1);

------------------------------------------------

-- Vedism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H1_VEDISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT  	('RELIGION_H1_VEDISM'),			('LOC_RELIGION_H1_VEDISM'),  			('H1'),			0,				      ('COLOR_RELIGION_H1_VEDISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H1_VEDISM'),				('HM_Religion_H1_Vedism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H1_VEDISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_H1_VEDISM'),			('LOC_RELIGION_H1_VEDISM'),  			('H1'),			0,				      ('COLOR_RELIGION_H1_VEDISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H1_VEDISM'),				('HM_Religion_H1_Vedism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VEDISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Shaivism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H3_SHAIVISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_H3_SHAIVISM'),		('LOC_RELIGION_H3_SHAIVISM'),  			('H3'),			0,				      ('COLOR_RELIGION_H3_SHAIVISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H3_SHAIVISM'),			('HM_Religion_H3_Shaivism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H3_SHAIVISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_H3_SHAIVISM'),		('LOC_RELIGION_H3_SHAIVISM'),  			('H3'),			0,				      ('COLOR_RELIGION_H3_SHAIVISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H3_SHAIVISM'),			('HM_Religion_H3_Shaivism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Shaktism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H4_SHAKTISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAKTISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_H4_SHAKTISM'),		('LOC_RELIGION_H4_SHAKTISM'),  			('H4'),			0,				     ('COLOR_RELIGION_H4_SHAKTISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAKTISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H4_SHAKTISM'),			('HM_Religion_H4_Shaktism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAKTISM' AND Value = 1);

-- Vaishnavism

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_H2_VAISHNAVISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_H2_VAISHNAVISM'),		('LOC_RELIGION_H2_VAISHNAVISM'),  		('H2'),			0,				     ('COLOR_RELIGION_H2_VAISHNAVISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_H2_VAISHNAVISM'),		('HM_Religion_H2_Vaishnavism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------------

-- Hinduism / Smartism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_HINDUISM',			'LOC_RELIGION_HINDUISM',			'Hi',			0,			               'COLOR_RELIGION_HINDUISM');

------------------------------------------------

-- Islam / Sunni

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_ISLAM',			'LOC_RELIGION_ISLAM',				'Is',			0,			               'COLOR_RELIGION_ISLAM');

-- Shia (No Denom)

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I1_SHIA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I1_SHIA'),			('LOC_RELIGION_I1_SHIA'),  			('I1'),			0,				       ('COLOR_RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I1_SHIA'),				('HM_Religion_I1_Shia.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 0);

--

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I1_SHIA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I1_SHIA'),			('LOC_RELIGION_I1_SHIA'),  			('I1'),			0,				       ('COLOR_RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I1_SHIA'),				('HM_Religion_I1_Shia.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

---------------------------

-- Imamiyyah

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I5_TWELVER'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMAMI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I5_TWELVER'),			('LOC_RELIGION_I5_TWELVER'),  			('I5'),			0,				       ('COLOR_RELIGION_I5_TWELVER')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMAMI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I5_TWELVER'),				('HM_Religion_I5_Twelver.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMAMI' AND Value = 1);

-- Ibadi

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I2_IBADI'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IBADI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I2_IBADI'),			('LOC_RELIGION_I2_IBADI'),  			('I2'),			0,				      ('COLOR_RELIGION_I2_IBADI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IBADI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I2_IBADI'),				('HM_Religion_I2_Ibadi.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IBADI' AND Value = 1);

-- Zaidiyyah

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I6_FIVER'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZAIDI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I6_FIVER'),			('LOC_RELIGION_I6_FIVER'),  			('I6'),			0,				       ('COLOR_RELIGION_I6_FIVER')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZAIDI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I6_FIVER'),				('HM_Religion_I6_Fiver.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZAIDI' AND Value = 1);

-- Mu'tazila

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q5'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUNNI_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUTAZILA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q5'),			('LOC_RELIGION_Q5'),  			('Q5'),			0,				     ('COLOR_RELIGION_Q5')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUNNI_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUTAZILA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q5'),					('HM_Religion_Q5.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUNNI_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUTAZILA' AND Value = 1);

-- Ismailiyyah

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I7_ISMAILI'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISMAILI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I7_ISMAILI'),			('LOC_RELIGION_I7_ISMAILI'),  			('I7'),			0,				       ('COLOR_RELIGION_I7_ISMAILI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISMAILI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I7_ISMAILI'),				('HM_Religion_I7_Ismaili.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISMAILI' AND Value = 1);

-- Alawiyyah (Shia)

---------------------------

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I1_SHIA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_OFFSHOOTS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I1_SHIA'),			('LOC_RELIGION_I1_SHIA'),  			('I1'),			0,				       ('COLOR_RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_OFFSHOOTS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I1_SHIA'),				('HM_Religion_I1_Shia.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_OFFSHOOTS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_1' AND Value = 1);

---------------------------

-- Druze

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I3_DRUZE'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRUZE' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I3_DRUZE'),			('LOC_RELIGION_I3_DRUZE'),  			('I3'),			0,				     ('COLOR_RELIGION_I3_DRUZE')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRUZE' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I3_DRUZE'),				('HM_Religion_I3_Druze.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRUZE' AND Value = 1);

-- Ahmadi

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_I4_AHMADI'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AHMADI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_I4_AHMADI'),			('LOC_RELIGION_I4_AHMADI'),  			('I4'),			0,				     ('COLOR_RELIGION_I4_AHMADI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AHMADI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_I4_AHMADI'),				('HM_Religion_I4_Ahmadi.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AHMADI' AND Value = 1);

------------------------------------------------

-- Itang

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_ITANG'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITANG' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_ITANG'),			('LOC_RELIGION_ITANG'),  			('It'),			0,				      ('COLOR_RELIGION_ITANG')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITANG' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_ITANG'),					('HM_Religion_Itang.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITANG' AND Value = 1);

-- Jainism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_JAINISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_JAINISM'),			('LOC_RELIGION_JAINISM'),  			('Ja'),			0,				    ('COLOR_RELIGION_JAINISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_JAINISM'),				('HM_Religion_Jainism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_JAINISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_JAINISM'),			('LOC_RELIGION_JAINISM'),  			('Ja'),			0,				    ('COLOR_RELIGION_JAINISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_JAINISM'),				('HM_Religion_Jainism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Judaism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_JUDAISM',			'LOC_RELIGION_JUDAISM',				'Ju',			0,			              'COLOR_RELIGION_JUDAISM');

-- Kachina

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_KACHINA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KACHINA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_KACHINA'),			('LOC_RELIGION_KACHINA'),  			('Ka'),			0,				    ('COLOR_RELIGION_KACHINA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KACHINA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_KACHINA'),				('HM_Religion_Kachina.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KACHINA' AND Value = 1);

------------------------------------------------

-- Kepercayaan / Kejawen

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_KEPERCAYAAN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_KEPERCAYAAN'),			('LOC_RELIGION_KEPERCAYAAN'),  			('Ke'),			0,				     ('COLOR_RELIGION_KEPERCAYAAN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_KEPERCAYAAN'),					('HM_Religion_Kepercayaan.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_KEPERCAYAAN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_KEPERCAYAAN'),			('LOC_RELIGION_KEPERCAYAAN'),  			('Ke'),			0,				     ('COLOR_RELIGION_KEPERCAYAAN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_KEPERCAYAAN'),					('HM_Religion_Kepercayaan.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN_1' AND Value = 1);

---------------------------

-- Anito

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_AITO'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANITO' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_AITO'),			('LOC_RELIGION_AITO'),  			('Ai'),			0,				      ('COLOR_RELIGION_AITO')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANITO' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_AITO'),					('HM_Religion_Aito.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANITO' AND Value = 1);

------------------------------------------------

-- Laiboni

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_LAIBONI'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LAIBONI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_LAIBONI'),			('LOC_RELIGION_LAIBONI'),  			('La'),			0,				     ('COLOR_RELIGION_LAIBONI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LAIBONI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_LAIBONI'),				('HM_Religion_Laiboni.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LAIBONI' AND Value = 1);

-- Legalism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q7_LEGALISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q7_LEGALISM'),			('LOC_RELIGION_Q7_LEGALISM'),  			('Q7'),			0,				     ('COLOR_RELIGION_Q7_LEGALISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q7_LEGALISM'),					('HM_Religion_Q7_Legalism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q7_LEGALISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q7_LEGALISM'),			('LOC_RELIGION_Q7_LEGALISM'),  			('Q7'),			0,				     ('COLOR_RELIGION_Q7_LEGALISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q7_LEGALISM'),					('HM_Religion_Q7_Legalism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LEGALISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Li'im Dingirmes

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_LIIM_DINGIRMES'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LIIM_DINGIRMES' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_LIIM_DINGIRMES'),		('LOC_RELIGION_LIIM_DINGIRMES'),  		('Li'),			0,				    ('COLOR_RELIGION_LIIM_DINGIRMES')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LIIM_DINGIRMES' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_LIIM_DINGIRMES'),		('HM_Religion_Liim_Dingirmes.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LIIM_DINGIRMES' AND Value = 1);

-- Malagan

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MLAGAN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MALAGAN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MLAGAN'),			('LOC_RELIGION_MLAGAN'),  			('Ml'),			0,				     ('COLOR_RELIGION_MLAGAN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MALAGAN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MLAGAN'),				('HM_Religion_Mlagan.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MALAGAN' AND Value = 1);

------------------------------------------------

-- Manaism / Tala-e-Fonua	

INSERT INTO Types
		(Type, 										           Kind)
VALUES  	('RELIGION_O2_TALA_FONUA',  								'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES 		('RELIGION_O2_TALA_FONUA',		'LOC_RELIGION_O2_TALA_FONUA',			'O2',			0,				       'COLOR_RELIGION_O2_TALA_FONUA');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_O2_TALA_FONUA',		'HM_Religion_O2_Tala_Fonua.dds');

-- Whakapapa / Puta Tumu	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_PUATA_TUPUNA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PUATA_TUPUNA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_PUATA_TUPUNA'),		('LOC_RELIGION_PUATA_TUPUNA'),  		('Pu'),			0,			     ('COLOR_RELIGION_PUATA_TUPUNA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PUATA_TUPUNA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_PUATA_TUPUNA'),			('HM_Religion_Puata_Tupuna.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PUATA_TUPUNA' AND Value = 1);

-- Tangata Manu	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_O1_TANGATA_MANU'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TANGATA_MANU' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_O1_TANGATA_MANU'),		('LOC_RELIGION_O1_TANGATA_MANU'),  		('O1'),			0,			      ('COLOR_RELIGION_O1_TANGATA_MANU')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TANGATA_MANU' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_O1_TANGATA_MANU'),		('HM_Religion_O1_Tangata_Manu.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TANGATA_MANU' AND Value = 1);

------------------------------------------------

-- Mandaeanism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MNDAENISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANDAEANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MNDAENISM'),			('LOC_RELIGION_MNDAENISM'),  			('Mn'),			0,				    ('COLOR_RELIGION_MNDAENISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANDAEANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MNDAENISM'),				('HM_Religion_Mndaenism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANDAEANISM' AND Value = 1);

-- Manichaeaism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MANICHAEISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANICHAEAISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MANICHAEISM'),			('LOC_RELIGION_MANICHAEISM'),  		('Ma'),			0,				('COLOR_RELIGION_MANICHAEISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANICHAEAISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MANICHAEISM'),			('HM_Religion_Manichaeism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MANICHAEAISM' AND Value = 1);

-- Mi-chos	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MCHOS'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MI_CHOS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MCHOS'),			('LOC_RELIGION_MCHOS'),  			('Mc'),			0,				      ('COLOR_RELIGION_MCHOS')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MI_CHOS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MCHOS'),					('HM_Religion_Mchos.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MI_CHOS' AND Value = 1);

-- Mohism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MOHISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOHISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MOHISM'),			('LOC_RELIGION_MOHISM'),  			('Mo'),			0,				      ('COLOR_RELIGION_MOHISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOHISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MOHISM'),				('HM_Religion_Mohism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOHISM' AND Value = 1);

-- Mushrikun

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MSHRIKUN'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUSHRIKUN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MSHRIKUN'),			('LOC_RELIGION_MSHRIKUN'),  			('Ms'),			0,				  ('COLOR_RELIGION_MSHRIKUN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUSHRIKUN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MSHRIKUN'),				('HM_Religion_Mshrikun.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUSHRIKUN' AND Value = 1);

------------------------------------------------

-- Noaidevuohta

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NOAIDEVUOHTA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NOAIDEVUOHTA'),		('LOC_RELIGION_NOAIDEVUOHTA'),  		('No'),			0,				       ('COLOR_RELIGION_NOAIDEVUOHTA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NOAIDEVUOHTA'),			('HM_Religion_Noaidevuohta.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NOAIDEVUOHTA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NOAIDEVUOHTA'),		('LOC_RELIGION_NOAIDEVUOHTA'),  		('No'),			0,				       ('COLOR_RELIGION_NOAIDEVUOHTA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NOAIDEVUOHTA'),			('HM_Religion_Noaidevuohta.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA_1' AND Value = 1);

---------------------------

-- Suomenusko

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_U1_SUOMENUSKO'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUOMENUSKO' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_U1_SUOMENUSKO'),		('LOC_RELIGION_U1_SUOMENUSKO'),  		('U1'),			0,				    ('COLOR_RELIGION_U1_SUOMENUSKO')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUOMENUSKO' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_U1_SUOMENUSKO'),			('HM_Religion_U1_Suomenusko.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SUOMENUSKO' AND Value = 1);

------------------------------------------------

-- Nommo

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NMMO'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOMMO' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NMMO'),			('LOC_RELIGION_NMMO'),  				('Nm'),			0,				        ('COLOR_RELIGION_NMMO')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOMMO' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NMMO'),					('HM_Religion_Nmmo.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOMMO' AND Value = 1);

-- N'um

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NUM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NUM'),			('LOC_RELIGION_NUM'),  				('Nu'),			0,				        ('COLOR_RELIGION_NUM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NUM'),					('HM_Religion_Num.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUM' AND Value = 1);

------------------------------------------------

-- Nzambiism

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NZAMBIISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NZAMBIISM'),			('LOC_RELIGION_NZAMBIISM'),  				('Nz'),			0,				        ('COLOR_RELIGION_NZAMBIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NZAMBIISM'),				('HM_Religion_Nzambiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NZAMBIISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NZAMBIISM'),			('LOC_RELIGION_NZAMBIISM'),  				('Nz'),			0,				        ('COLOR_RELIGION_NZAMBIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NZAMBIISM'),				('HM_Religion_Nzambiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_1' AND Value = 1);

---------------------------

---------------------
-- Midewiwin Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MIDEWIWIN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MIDEWIWIN'),			('LOC_RELIGION_MIDEWIWIN'),  		('Mi'),			0,				('COLOR_RELIGION_MIDEWIWIN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MIDEWIWIN'),				('HM_Religion_Midewiwin.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Muism Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MUISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MUISM'),			('LOC_RELIGION_MUISM'),  			('Mu'),			0,				      ('COLOR_RELIGION_MUISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MUISM'),					('HM_Religion_Muism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Nzambiism Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_NZAMBIISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_NZAMBIISM'),			('LOC_RELIGION_NZAMBIISM'),  				('Nz'),			0,				        ('COLOR_RELIGION_NZAMBIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_NZAMBIISM'),				('HM_Religion_Nzambiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------

-- Palo

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_K1_PALO'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PALO' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_K1_PALO'),			('LOC_RELIGION_K1_PALO'),  				('K1'),			0,				        ('COLOR_RELIGION_K1_PALO')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PALO' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_K1_PALO'),				('HM_Religion_K1_Palo.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KONGOLESE_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PALO' AND Value = 1);

------------------------------------------------

-- Onyamesom

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_ONYAMESOM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ONYAMESOM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_ONYAMESOM'),			('LOC_RELIGION_ONYAMESOM'),  			('On'),			0,				       ('COLOR_RELIGION_ONYAMESOM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ONYAMESOM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_ONYAMESOM'),				('HM_Religion_Onyamesom.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ONYAMESOM' AND Value = 1);

------------------------------------------------

-- Orenda

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_OENDA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_OENDA'),			('LOC_RELIGION_OENDA'),  			('Oe'),			0,				     ('COLOR_RELIGION_OENDA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_OENDA'),					('HM_Religion_Oenda.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_OENDA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_OENDA'),			('LOC_RELIGION_OENDA'),  			('Oe'),			0,				     ('COLOR_RELIGION_OENDA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_OENDA'),					('HM_Religion_Oenda.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA_1' AND Value = 1);

---------------------------

-- Midewiwin

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MIDEWIWIN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MIDEWIWIN'),			('LOC_RELIGION_MIDEWIWIN'),  		('Mi'),			0,				('COLOR_RELIGION_MIDEWIWIN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MIDEWIWIN'),				('HM_Religion_Midewiwin.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORENDA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EASTERN_AMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MIDEWIWIN' AND Value = 1);

------------------------------------------------

-- Orisha

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_IFA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_IFA'),			('LOC_RELIGION_IFA'),  				('If'),			0,				       ('COLOR_RELIGION_IFA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_IFA'),					('HM_Religion_Ifa.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_IFA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_IFA'),			('LOC_RELIGION_IFA'),  				('If'),			0,				       ('COLOR_RELIGION_IFA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_IFA'),					('HM_Religion_Ifa.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA_1' AND Value = 1);

---------------------------

-- Odinani

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_ODINANI'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ODINANI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_ODINANI'),			('LOC_RELIGION_ODINANI'),  			('Od'),			0,				     ('COLOR_RELIGION_ODINANI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ODINANI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_ODINANI'),				('HM_Religion_Odinani.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ODINANI' AND Value = 1);

-- Voodoo

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_VOODOO'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOODOO' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_VOODOO'),			('LOC_RELIGION_VOODOO'),  			('Vo'),			0,				     ('COLOR_RELIGION_VOODOO')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOODOO' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_VOODOO'),				('HM_Religion_Voodoo.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOODOO' AND Value = 1);

-- Santeria

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_SNTERIA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SANTERIA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_SNTERIA'),			('LOC_RELIGION_SNTERIA'),  			('Sn'),			0,				   ('COLOR_RELIGION_SNTERIA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SANTERIA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_SNTERIA'),				('HM_Religion_Snteria.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SANTERIA' AND Value = 1);

------------------------------------------------

-- Pajelanca

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_PJELANCA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PAJELANCA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_PJELANCA'),			('LOC_RELIGION_PJELANCA'),  			('Pj'),			0,				  ('COLOR_RELIGION_PJELANCA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PAJELANCA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_PJELANCA'),				('HM_Religion_Pjelanca.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PAJELANCA' AND Value = 1);

------------------------------------------------

-- Amanaiism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_E1_AMANAIISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANAIISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_E1_AMANAIISM'),		('LOC_RELIGION_E1_AMANAIISM'),  		('E1'),			0,				      ('COLOR_RELIGION_E1_AMANAIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANAIISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_E1_AMANAIISM'),			('HM_Religion_E1_Amanaiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANAIISM' AND Value = 1);

-- Pesedjet

INSERT INTO Types
		(Type, 										           Kind)
VALUES  	('RELIGION_PESEDJET',  								'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_PESEDJET',			'LOC_RELIGION_PESEDJET',			'Pe',			0,			            'COLOR_RELIGION_PESEDJET');


INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_PESEDJET',			'HM_Religion_Pesedjet.dds');

-- Atenism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_E2_ATENISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATENISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_E2_ATENISM'),		('LOC_RELIGION_E2_ATENISM'),  			('E2'),			0,				       ('COLOR_RELIGION_E2_ATENISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATENISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_E2_ATENISM'),			('HM_Religion_E2_Atenism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EGYPTIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATENISM' AND Value = 1);

------------------------------------------------

-- Pohakantenna

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_POHAKANTENNA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POHAKANTENNA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_POHAKANTENNA'),		('LOC_RELIGION_POHAKANTENNA'),  		('Po'),			0,				      ('COLOR_RELIGION_POHAKANTENNA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POHAKANTENNA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_POHAKANTENNA'),			('HM_Religion_Pohakantenna.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POHAKANTENNA' AND Value = 1);

-- Razana

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_RAZANA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAZANA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_RAZANA'),			('LOC_RELIGION_RAZANA'),  			('Ra'),			0,				     ('COLOR_RELIGION_RAZANA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAZANA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_RAZANA'),				('HM_Religion_Razana.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAZANA' AND Value = 1);

------------------------------------------------

-- Rodnovery

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_RODNOVERY'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_RODNOVERY'),			('LOC_RELIGION_RODNOVERY'),  			('Ro'),			0,				 ('COLOR_RELIGION_RODNOVERY')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_RODNOVERY'),				('HM_Religion_Rodnovery.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_RODNOVERY'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_RODNOVERY'),			('LOC_RELIGION_RODNOVERY'),  			('Ro'),			0,				 ('COLOR_RELIGION_RODNOVERY')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_RODNOVERY'),				('HM_Religion_Rodnovery.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY_1' AND Value = 1);

---------------------------

-- Romuva

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_S1_ROMUVA'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROMUVA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_S1_ROMUVA'),			('LOC_RELIGION_S1_ROMUVA'),  			('S1'),			0,			             ('COLOR_RELIGION_S1_ROMUVA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROMUVA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_S1_ROMUVA'),				('HM_Religion_S1_Romuva.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RODNOVERY' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BALTO_SLAVIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROMUVA' AND Value = 1);

------------------------------------------------

-- Samanism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_SMANISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SAMANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_SMANISM'),			('LOC_RELIGION_SMANISM'),  			('Sm'),			0,				      ('COLOR_RELIGION_SMANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SAMANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_SMANISM'),				('HM_Religion_Smanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SAMANISM' AND Value = 1);

-- Sasna Phi

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_PHI'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SASNA_PHI' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_PHI'),			('LOC_RELIGION_PHI'),  				('Ph'),			0,				('COLOR_RELIGION_PHI')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SASNA_PHI' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_PHI'),					('HM_Religion_Phi.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SASNA_PHI' AND Value = 1);

-- Scaanaang

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_SGAANAANG'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCAANAANG' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_SGAANAANG'),			('LOC_RELIGION_SGAANAANG'),  			('Sg'),			0,				  ('COLOR_RELIGION_SGAANAANG')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCAANAANG' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_SGAANAANG'),				('HM_Religion_Sgaanaang.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCAANAANG' AND Value = 1);

------------------------------------------------

-- Muism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MUISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MUISM'),			('LOC_RELIGION_MUISM'),  			('Mu'),			0,				      ('COLOR_RELIGION_MUISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MUISM'),					('HM_Religion_Muism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM' AND Value = 1);

---------------------
-- Muism Exception Start
---------------------
--
--INSERT INTO Types 
--		(Type, 										           Kind)
--SELECT  	('RELIGION_MUISM'),  						('KIND_RELIGION')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);
--
--INSERT INTO Religions 
--		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
--SELECT  	('RELIGION_MUISM'),			('LOC_RELIGION_MUISM'),  			('Mu'),			0,				      ('COLOR_RELIGION_MUISM')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);
--
--INSERT OR REPLACE INTO MomentIllustrations
--			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
--SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MUISM'),					('HM_Religion_Muism.dds')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MUISM_LITE_EXCEPTION' AND Value = 1);
--
---------------------
-- Exception End
---------------------

-- Shenism 

---------------------------

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_T1_SHENISM'),			('LOC_RELIGION_T1_SHENISM'),  			('T1'),			0,			             ('COLOR_RELIGION_T1_SHENISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 0);

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_T1_SHENISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_T1_SHENISM'),			('HM_Religion_T1_Shenism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_T1_SHENISM'),			('LOC_RELIGION_T1_SHENISM'),  			('T1'),			0,			             ('COLOR_RELIGION_T1_SHENISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_1' AND Value = 1);


INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_T1_SHENISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_T1_SHENISM'),			('HM_Religion_T1_Shenism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_1' AND Value = 1);

---------------------------

-- Tho Than

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TIANISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TIANISM'),			('LOC_RELIGION_TIANISM'),  			('Ti'),			0,				      ('COLOR_RELIGION_TIANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TIANISM'),					('HM_Religion_Tianism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM' AND Value = 1);

---------------------
-- Tho Than Exception Start
---------------------
--
--INSERT INTO Types 
--		(Type, 										           Kind)
--SELECT  	('RELIGION_TIANISM'),  						('KIND_RELIGION')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);
--
--INSERT INTO Religions 
--		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
--SELECT  	('RELIGION_TIANISM'),			('LOC_RELIGION_TIANISM'),  			('Ti'),			0,				      ('COLOR_RELIGION_TIANISM')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);
--
--INSERT OR REPLACE INTO MomentIllustrations
--			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
--SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TIANISM'),					('HM_Religion_Tianism.dds')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);
--
---------------------
-- Exception End
---------------------

------------------------------------------------

-- Shinto

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,								IconString,		RequiresCustomName,				Color)
VALUES	('RELIGION_SHINTO',			'LOC_RELIGION_SHINTO',				'Sh',			0,								'COLOR_RELIGION_SHINTO');

-- Sikhism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,								IconString,		RequiresCustomName,				Color)
VALUES	('RELIGION_SIKHISM',		'LOC_RELIGION_SIKHISM',				'Si',			0,								'COLOR_RELIGION_SIKHISM');

------------------------------------------------

-- Fox and Owl Cult

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q4'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FOX_AND_OWL_CULT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q4'),			('LOC_RELIGION_Q4'),  				('Q4'),			0,				      ('COLOR_RELIGION_Q4')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FOX_AND_OWL_CULT' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q4'),					('HM_Religion_Q4.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FOX_AND_OWL_CULT' AND Value = 1);

-- Southern Cult

---------------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_SOUTHERN_CULT'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 0);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_SOUTHERN_CULT'),		('LOC_RELIGION_SOUTHERN_CULT'),  		('So'),			0,			      ('COLOR_RELIGION_SOUTHERN_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 0);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_SOUTHERN_CULT'),			('HM_Religion_Southern_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 0);

--

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_SOUTHERN_CULT'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT_1' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_SOUTHERN_CULT'),		('LOC_RELIGION_SOUTHERN_CULT'),  		('So'),			0,			      ('COLOR_RELIGION_SOUTHERN_CULT')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT_1' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_SOUTHERN_CULT'),			('HM_Religion_Southern_Cult.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT_1' AND Value = 1);

---------------------------

-- Mahoma

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_MHOMA'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHOMA' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_MHOMA'),			('LOC_RELIGION_MHOMA'),  			('Mh'),			0,				     ('COLOR_RELIGION_MHOMA')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHOMA' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_MHOMA'),					('HM_Religion_Mhoma.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTHERN_CULT' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MOUND_BUILDER_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHOMA' AND Value = 1);

------------------------------------------------

-- Spiritism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q8_SPIRITISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRITISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q8_SPIRITISM'),			('LOC_RELIGION_Q8_SPIRITISM'),  			('Q8'),			0,				  ('COLOR_RELIGION_Q8_SPIRITISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRITISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q8_SPIRITISM'),					('HM_Religion_Q8_Spiritism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRITISM' AND Value = 1);

-- Taoism

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_TAOISM',			'LOC_RELIGION_TAOISM',				'Ta',			0,			              'COLOR_RELIGION_TAOISM');

-- Tat Roog

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_FAT_ROOG'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TAT_ROOG' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_FAT_ROOG'),			('LOC_RELIGION_FAT_ROOG'),  			('Fa'),			0,				      ('COLOR_RELIGION_FAT_ROOG')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TAT_ROOG' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_FAT_ROOG'),				('HM_Religion_Fat_Roog.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TAT_ROOG' AND Value = 1);

-- Temaukelism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TMAUKELISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TEMAUKELISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TMAUKELISM'),		('LOC_RELIGION_TMAUKELISM'),  			('Tm'),			0,			        ('COLOR_RELIGION_TMAUKELISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TEMAUKELISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TMAUKELISM'),			('HM_Religion_Tmaukelism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TEMAUKELISM' AND Value = 1);

-- Tengriism

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_TENGRIISM',  							'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_TENGRIISM',		'LOC_RELIGION_TENGRIISM',		'Te',			0,			    'COLOR_RELIGION_TENGRIISM');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_TENGRIISM',			'HM_Religion_Tengriism.dds');

------------------------------------------------

---------------------
-- Tho Than Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TIANISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TIANISM'),			('LOC_RELIGION_TIANISM'),  			('Ti'),			0,				      ('COLOR_RELIGION_TIANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TIANISM'),					('HM_Religion_Tianism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIANISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------

-- Tzolk'in	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TZOLKIN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TZOLKIN'),			('LOC_RELIGION_TZOLKIN'),  			('TZ'),			0,			   	       ('COLOR_RELIGION_TZOLKIN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TZOLKIN'),				('HM_Religion_Tzolkin.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_TZOLKIN'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_TZOLKIN'),			('LOC_RELIGION_TZOLKIN'),  			('TZ'),			0,			   	       ('COLOR_RELIGION_TZOLKIN')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_TZOLKIN'),				('HM_Religion_Tzolkin.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

-- Tlateomatiliztli

INSERT INTO Types
		(Type, 										           Kind)
VALUES  	('RELIGION_TLATEOMATILIZTLI',  						'KIND_RELIGION');

INSERT INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_TLATEOMATILIZTLI',		'LOC_RELIGION_TLATEOMATILIZTLI',		'Tl',			0,			    'COLOR_RELIGION_TLATEOMATILIZTLI');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_TLATEOMATILIZTLI',	'HM_Religion_Tlateomatiliztli.dds');

------------------------------------------------

-- Wakan Tanka	

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_WAKAN_TANKA',  							'KIND_RELIGION');

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
VALUES  	('RELIGION_WAKAN_TANKA',			'LOC_RELIGION_WAKAN_TANKA',  			'Wa',			0,				    'COLOR_RELIGION_WAKAN_TANKA');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_WAKAN_TANKA',			'HM_Religion_Wakan_Tanka.dds');

-- Witran Mapu

INSERT INTO Types
		(Type, 										           Kind)
VALUES	('RELIGION_WITRAN_MAPU',  							'KIND_RELIGION');

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
VALUES  	('RELIGION_WITRAN_MAPU',			'LOC_RELIGION_WITRAN_MAPU',  			'Wi',			0,				    'COLOR_RELIGION_WITRAN_MAPU');

INSERT OR REPLACE INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_RELIGION',		'MOMENT_DATA_RELIGION',		'RELIGION_WITRAN_MAPU',			'HM_Religion_Witran_Mapu.dds');

-- Yazidism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_YAZDANISM'),  					('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_YAZDANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_YAZDANISM'),			('LOC_RELIGION_YAZDANISM'),  			('Ya'),			0,				    ('COLOR_RELIGION_YAZDANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_YAZDANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_YAZDANISM'),				('HM_Religion_Yazdanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_YAZDANISM' AND Value = 1);

-- Zemiism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_ZEMIISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZEMIISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_ZEMIISM'),			('LOC_RELIGION_ZEMIISM'),  			('Ze'),			0,				      ('COLOR_RELIGION_ZEMIISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZEMIISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_ZEMIISM'),				('HM_Religion_Zemiism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZEMIISM' AND Value = 1);

------------------------------------------------

-- Zoroastrianism / Mazdayasna

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_ZOROASTRIANISM',		'LOC_RELIGION_ZOROASTRIANISM',			'Zo',			0,			      'COLOR_RELIGION_ZOROASTRIANISM');

-- Zurvanism

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Z1_ZURVANISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZURVANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Z1_ZURVANISM'),			('LOC_RELIGION_Z1_ZURVANISM'),  			('Z1'),			0,			             ('COLOR_RELIGION_Z1_ZURVANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZURVANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Z1_ZURVANISM'),			('HM_Religion_Z1_Zurvanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZURVANISM' AND Value = 1);

------------------------------------------------

-- Aries	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G1'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G1'),			('LOC_RELIGION_G1'),  				('G1'),			1,				      ('COLOR_RELIGION_G1')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G1'),					('HM_Religion_G1.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RAM' AND Value = 1);
									
-- Taurus	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_2',		'LOC_RELIGION_CUSTOM',			'02',			1,			      'COLOR_RELIGION_CUSTOM_2');
										
-- Gemini	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G2'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TWIN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				 Color)
SELECT  	('RELIGION_G2'),			('LOC_RELIGION_G2'),  				('G2'),			1,				      ('COLOR_RELIGION_G2')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TWIN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G2'),					('HM_Religion_G2.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TWIN' AND Value = 1);
											
-- Cancer
	
INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_1',		'LOC_RELIGION_CUSTOM',			'01',			1,			      'COLOR_RELIGION_CUSTOM_1');
									
-- Leo	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_4',		'LOC_RELIGION_CUSTOM',			'04',			1,			      'COLOR_RELIGION_CUSTOM_4');

-- Virgo	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_8',		'LOC_RELIGION_CUSTOM',			'08',			1,			      'COLOR_RELIGION_CUSTOM_8');
									
-- Libra

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G3'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCALES' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G3'),			('LOC_RELIGION_G3'),  				('G3'),			1,				      ('COLOR_RELIGION_G3')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCALES' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G3'),					('HM_Religion_G3.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCALES' AND Value = 1);
											
-- Scorpio		

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_6',		'LOC_RELIGION_CUSTOM',			'06',			1,			      'COLOR_RELIGION_CUSTOM_6');
																
-- Sagittarius	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G4'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOW' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G4'),			('LOC_RELIGION_G4'),  				('G4'),			1,				        ('COLOR_RELIGION_G4')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOW' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G4'),					('HM_Religion_G4.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BOW' AND Value = 1);
									
-- Capricorn	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G5'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GOAT' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G5'),			('LOC_RELIGION_G5'),  				('G5'),			1,				  ('COLOR_RELIGION_G5')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GOAT' AND Value = 1);
							
INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G5'),					('HM_Religion_G5.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GOAT' AND Value = 1);

-- Aquarius	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_9',		'LOC_RELIGION_CUSTOM',			'09',			1,			      'COLOR_RELIGION_CUSTOM_9');
									
-- Pisces	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_5',		'LOC_RELIGION_CUSTOM',			'05',			1,			      'COLOR_RELIGION_CUSTOM_5');
																	
-- Snake	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_7',		'LOC_RELIGION_CUSTOM',			'07',			1,			      'COLOR_RELIGION_CUSTOM_7');
																
-- Octopus		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X8'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OCTOPUS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X8'),			('LOC_RELIGION_X8'),  				('X8'),			1,				('COLOR_RELIGION_X8')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OCTOPUS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X8'),					('HM_Religion_X8.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OCTOPUS' AND Value = 1);
					
-- Dragon	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X1'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRAGON' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X1'),			('LOC_RELIGION_X1'),  				('X1'),			1,				     ('COLOR_RELIGION_X1')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRAGON' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X1'),					('HM_Religion_X1.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_DRAGON' AND Value = 1);
									
-- Bird		

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_10',		'LOC_RELIGION_CUSTOM',			'10',			1,			      'COLOR_RELIGION_CUSTOM_10');

-- Tiger	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G6'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIGER' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G6'),			('LOC_RELIGION_G6'),  				('G6'),			1,				      ('COLOR_RELIGION_G6')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIGER' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G6'),					('HM_Religion_G6.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TIGER' AND Value = 1);
									
-- Turtle	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_12',		'LOC_RELIGION_CUSTOM',			'12',			1,			      'COLOR_RELIGION_CUSTOM_12');
						
-- Elephant	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_3',		'LOC_RELIGION_CUSTOM',			'03',			1,			      'COLOR_RELIGION_CUSTOM_3');
							
-- Butterfly	

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
VALUES		('RELIGION_CUSTOM_11',		'LOC_RELIGION_CUSTOM',			'11',			1,			      'COLOR_RELIGION_CUSTOM_11');
							
-- Beetle		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_E0_PESEDJET'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BEETLE' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_E0_PESEDJET'),			('LOC_RELIGION_E0_PESEDJET'),  				('E0'),			1,				       ('COLOR_RELIGION_E0_PESEDJET')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BEETLE' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_E0_PESEDJET'),		('HM_Religion_E0_Pesedjet.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BEETLE' AND Value = 1);
							
-- Torch	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X3'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_WAND' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X3'),			('LOC_RELIGION_X3'),  				('X3'),			1,				      ('COLOR_RELIGION_X3')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_WAND' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X3'),					('HM_Religion_X3.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_WAND' AND Value = 1);
							
-- Pentagram	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X6'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_COIN' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X6'),			('LOC_RELIGION_X6'),  				('X6'),			1,				  ('COLOR_RELIGION_X6')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_COIN' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X6'),					('HM_Religion_X6.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_COIN' AND Value = 1);
									
-- Sword		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X9'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SWORD' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X9'),			('LOC_RELIGION_X9'),  				('X9'),			1,				      ('COLOR_RELIGION_X9')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SWORD' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X9'),					('HM_Religion_X9.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SWORD' AND Value = 1);
				
-- Cup				

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X0'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUP' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X0'),			('LOC_RELIGION_X0'),  				('X0'),			1,				        ('COLOR_RELIGION_X0')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUP' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X0'),					('HM_Religion_X0.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUP' AND Value = 1);
							
-- Eye of Providence	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X4'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EYE' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X4'),			('LOC_RELIGION_X4'),  				('X4'),			1,				 ('COLOR_RELIGION_X4')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EYE' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X4'),					('HM_Religion_X4.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_EYE' AND Value = 1);
							
-- Ouroboros	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X5'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OUROBOROS' AND Value = 1);	

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X5'),			('LOC_RELIGION_X5'),  				('X5'),			1,				  ('COLOR_RELIGION_X5')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OUROBOROS' AND Value = 1);	

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X5'),					('HM_Religion_X5.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_OUROBOROS' AND Value = 1);	
	
------------------------------------------------
		
-- Mask / Alt Canaanism	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_J0_CNAANISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CANAANISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_J0_CNAANISM'),			('LOC_RELIGION_J0_CNAANISM'),  				('J0'),			1,				       ('COLOR_RELIGION_J0_CNAANISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CANAANISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_J0_CNAANISM'),		('HM_Religion_J0_Cnaanism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CANAANISM' AND Value = 1);

-- Bes	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q2'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FACE' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_Q2'),			('LOC_RELIGION_Q2'),  				('Q2'),			1,				      ('COLOR_RELIGION_Q2')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FACE' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q2'),					('HM_Religion_Q2.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_FACE' AND Value = 1);

------------------------------------------------	
	
-- Caduceus		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G9'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CADUCEUS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G9'),			('LOC_RELIGION_G9'),  				('G9'),			1,				   ('COLOR_RELIGION_G9')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CADUCEUS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G9'),					('HM_Religion_G9.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CADUCEUS' AND Value = 1);	
															
-- Tree	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X2'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TREE' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X2'),			('LOC_RELIGION_X2'),  				('X2'),			1,				       ('COLOR_RELIGION_X2')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TREE' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X2'),					('HM_Religion_X2.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TREE' AND Value = 1);
												
-- Rose		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_Q3'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROSE' AND Value = 1)
AND NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

INSERT OR REPLACE INTO Religions
		(ReligionType,				Name,						IconString,		RequiresCustomName,			          Color)
SELECT   	('RELIGION_Q3'),			('LOC_RELIGION_Q3'),  			('Q3'),			1,				      ('COLOR_RELIGION_Q3')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROSE' AND Value = 1)
AND NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_Q3'),					('HM_Religion_Q3.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ROSE' AND Value = 1)
AND NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');
											
-- Spiral		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_X7'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRAL' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_X7'),			('LOC_RELIGION_X7'),  				('X7'),			1,				     ('COLOR_RELIGION_X7')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRAL' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_X7'),					('HM_Religion_X7.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SPIRAL' AND Value = 1);
										
-- Venus Figure	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G7'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VENUS' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G7'),			('LOC_RELIGION_G7'),  				('G7'),			1,				      ('COLOR_RELIGION_G7')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VENUS' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G7'),					('HM_Religion_G7.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VENUS' AND Value = 1);
							
-- Atom		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G8'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATOM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G8'),			('LOC_RELIGION_G8'),  				('G8'),			1,				       ('COLOR_RELIGION_G8')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATOM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G8'),					('HM_Religion_G8.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATOM' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G8'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATHEISM_LITE_EXCEPTION' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,		                  Color)
SELECT  	('RELIGION_G8'),			('LOC_RELIGION_G8'),  				('G8'),			1,				       ('COLOR_RELIGION_G8')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATHEISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G8'),					('HM_Religion_G8.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ATHEISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

------------------------------------------------	
									
-- Alt Catholicism	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_C0_CATHOLICISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CATHOLICISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_C0_CATHOLICISM'),			('LOC_RELIGION_C0_CATHOLICISM'),  				('C0'),			1,				       ('COLOR_RELIGION_C0_CATHOLICISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CATHOLICISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_C0_CATHOLICISM'),		('HM_Religion_C0_Catholicism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_CATHOLICISM' AND Value = 1);
									
-- Alt Rodnovery	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_S0_RODNOVERY'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_RODNOVERY' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_S0_RODNOVERY'),			('LOC_RELIGION_S0_RODNOVERY'),  				('S0'),			1,				       ('COLOR_RELIGION_S0_RODNOVERY')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_RODNOVERY' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_S0_RODNOVERY'),		('HM_Religion_S0_Rodnovery.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_RODNOVERY' AND Value = 1);
													
-- Alt Pachaism		

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_PCHAISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_PACHAISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_PCHAISM'),			('LOC_RELIGION_PCHAISM'),  				('Pc'),			1,				       ('COLOR_RELIGION_PCHAISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_PACHAISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_PCHAISM'),		('HM_Religion_Pchaism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_PACHAISM' AND Value = 1);
					
-- Alt Manichaeaism	

INSERT INTO Types 
		(Type, 										           Kind)
SELECT  	('RELIGION_G0_MANICHAEISM'),  						('KIND_RELIGION')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_MANICHAEAISM' AND Value = 1);

INSERT INTO Religions 
		(ReligionType,				Name,						IconString,		RequiresCustomName,				  Color)
SELECT  	('RELIGION_G0_MANICHAEISM'),			('LOC_RELIGION_G0_MANICHAEISM'),  				('G0'),			1,				       ('COLOR_RELIGION_G0_MANICHAEISM')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_MANICHAEAISM' AND Value = 1);

INSERT OR REPLACE INTO MomentIllustrations
			(MomentIllustrationType,					MomentDataType,							GameDataType,						Texture)
SELECT  	('MOMENT_ILLUSTRATION_RELIGION'),			('MOMENT_DATA_RELIGION'),  				('RELIGION_G0_MANICHAEISM'),		('HM_Religion_G0_Manichaeism.dds')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALT_MANICHAEAISM' AND Value = 1);

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
--HR_Religions_Text_Update
--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

------------------------------------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_THERAVADA'
WHERE ReligionType = 'RELIGION_BUDDHISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_BUDDHISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_THERAVADA'
WHERE ReligionType = 'RELIGION_BUDDHISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_BUDDHISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_THERAVADA'
WHERE ReligionType = 'RELIGION_BUDDHISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_BUDDHISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

UPDATE Religions
SET Name = 'LOC_RELIGION_LUTHERANISM'
WHERE ReligionType = 'RELIGION_PROTESTANTISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_LUTHERANISM'
WHERE ReligionType = 'RELIGION_PROTESTANTISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

UPDATE Religions
SET Name = 'LOC_RELIGION_H2_VAISHNAVISM'
WHERE ReligionType = 'RELIGION_HINDUISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HINDUISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_SMARTISM'
WHERE ReligionType = 'RELIGION_HINDUISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HINDUISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_H2_VAISHNAVISM'
WHERE ReligionType = 'RELIGION_HINDUISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HINDUISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

UPDATE Religions
SET Name = 'LOC_RELIGION_SUNNI'
WHERE ReligionType = 'RELIGION_ISLAM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ISLAM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_SUNNI'
WHERE ReligionType = 'RELIGION_ISLAM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ISLAM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

UPDATE Religions
SET Name = 'LOC_RELIGION_I8_ALI'
WHERE ReligionType = 'RELIGION_I1_SHIA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_DODEKATHEON'
WHERE ReligionType = 'RELIGION_HELLENISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HELLENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

UPDATE Religions
SET Name = 'LOC_RELIGION_DODEKATHEON'
WHERE ReligionType = 'RELIGION_HELLENISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HELLENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

--

UPDATE Religions
SET Name = 'LOC_RELIGION_ORISHA'
WHERE ReligionType = 'RELIGION_IFA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_IFA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_MORMONISM'
WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_AYNI_ALT'
WHERE ReligionType = 'RELIGION_A0_PCHAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A0_PCHAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_MAZDAISM'
WHERE ReligionType = 'RELIGION_ZOROASTRIANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ZOROASTRIANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1);

--

UPDATE Religions
SET Name = 'LOC_RELIGION_O9_TALA_FONUA'
WHERE ReligionType = 'RELIGION_O2_TALA_FONUA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_O2_TALA_FONUA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1);

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
--HR_Religions_Set
--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

------------------------------------------------

--------------- Random

DELETE FROM FavoredReligions WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RANDOM_PREFERENCES' AND Value = 1);

CREATE TRIGGER HRRandomPreferences
AFTER INSERT ON FavoredReligions
BEGIN
	DELETE FROM FavoredReligions WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RANDOM_PREFERENCES' AND Value = 1);
END;

------------------------------------------------

--------------- Alexander

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ALEXANDER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ALEXANDER'),  						    		('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER');

-- 

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ALEXANDER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALEXANDER_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ALEXANDER'),  						    		('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALEXANDER_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCAlexanderHR
AFTER INSERT ON Leaders WHEN 'LEADER_ALEXANDER' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ALEXANDER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ALEXANDER'),  						    		('RELIGION_HELLENISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ALEXANDER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALEXANDER_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ALEXANDER'),  						    		('RELIGION_ORTHODOXY')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ALEXANDER_MODERN' AND Value = 1);

END;

--------------- Amanitore

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMANITORE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_AMANITORE'),  						    ('RELIGION_PESEDJET')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMANITORE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANITORE_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_AMANITORE'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANITORE_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCAmanitoreHR
AFTER INSERT ON Leaders WHEN 'LEADER_AMANITORE' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMANITORE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_AMANITORE'),  						    ('RELIGION_PESEDJET')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMANITORE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANITORE_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_AMANITORE'),  						    		('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMANITORE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMANITORE_MODERN' AND Value = 1);

END;

--------------- Ambiorix

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_AMBIORIX'),  							('RELIGION_DRUIDISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_AMBIORIX'),  								('RELIGION_FORN_SIDR')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_AMBIORIX'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 2);

--

CREATE TRIGGER DLCAmbiorixHR
AFTER INSERT ON Units WHEN 'UNIT_GAUL_GAESATAE' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_AMBIORIX'),  							('RELIGION_DRUIDISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_AMBIORIX'),  								('RELIGION_FORN_SIDR')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_AMBIORIX'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 2);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_AMBIORIX'),  						    		('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_AMBIORIX')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 2);


END;

--------------- Ba Trieu

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_LADY_TRIEU'),  								('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_LADY_TRIEU'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TIANISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_LADY_TRIEU'),  								('RELIGION_TIANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TIANISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 2);

--

CREATE TRIGGER DLCTrieuHR
AFTER INSERT ON Units WHEN 'UNIT_VIETNAMESE_VOI_CHIEN' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_LADY_TRIEU'),  								('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_LADY_TRIEU'),  								('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 0)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TIANISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_LADY_TRIEU'),  								('RELIGION_TIANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 0)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TIANISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_TRIEU'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_TRIEU')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 2);

END;

--------------- Basil II

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BASIL'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_BASIL'),  							('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BASIL'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BASIL_CATHOLICISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_BASIL'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BASIL_CATHOLICISM' AND Value = 1);

--

CREATE TRIGGER DLCBasilHR
AFTER INSERT ON Units WHEN 'UNIT_GAUL_GAESATAE' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BASIL'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_BASIL'),  							('RELIGION_ORTHODOXY')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BASIL'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BASIL_CATHOLICISM' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_BASIL'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BASIL')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BASIL_CATHOLICISM' AND Value = 1);

END;

--------------- Catherine

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CATHERINE_DE_MEDICI'),  							('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI');

--------------- Catherine Alt

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_CATHERINE_DE_MEDICI_ALT'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT');

--

CREATE TRIGGER DLCCatherineAltHR
AFTER INSERT ON Projects WHEN 'PROJECT_COURT_FESTIVAL' = NEW.ProjectType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_CATHERINE_DE_MEDICI_ALT'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT');

END;

--------------- Chandragupta

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_CHANDRAGUPTA'),  								('RELIGION_HINDUISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H1_VEDISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_CHANDRAGUPTA'),  								('RELIGION_H1_VEDISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H1_VEDISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JAINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_CHANDRAGUPTA'),  								('RELIGION_JAINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JAINISM');

--

CREATE TRIGGER DLCChandraguptaHR
AFTER INSERT ON Units WHEN 'UNIT_ZULU_IMPI' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_CHANDRAGUPTA'),  								('RELIGION_HINDUISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H1_VEDISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_CHANDRAGUPTA'),  								('RELIGION_H1_VEDISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H1_VEDISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CHANDRAGUPTA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 0)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JAINISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_CHANDRAGUPTA'),  								('RELIGION_JAINISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CHANDRAGUPTA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 0)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JAINISM');

END;

--------------- Cleopatra

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CLEOPATRA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CLEOPATRA'),  							('RELIGION_PESEDJET')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CLEOPATRA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CLEOPATRA_HELLENISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_CLEOPATRA'),  								('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CLEOPATRA_HELLENISM' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CLEOPATRA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CLEOPATRA_HELLENISM' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CLEOPATRA'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CLEOPATRA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CLEOPATRA_HELLENISM' AND Value = 2);

--------------- Cyrus

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_CYRUS'),  								('RELIGION_ZOROASTRIANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_I5_TWELVER')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

--

CREATE TRIGGER DLCCyrusHR
AFTER INSERT ON HistoricalAgendas WHEN 'LEADER_CYRUS' = NEW.LeaderType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_CYRUS'),  								('RELIGION_ZOROASTRIANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_I1_SHIA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_CYRUS'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_CYRUS'),  						    		('RELIGION_I5_TWELVER')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_CYRUS')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

END;

--------------- Dido

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_DIDO'),  						    ('RELIGION_CNAANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_DIDO'),  						    		('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_DIDO'),  						    		('RELIGION_R5_IMPERIAL_CULT')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_DIDO'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 2);

--

CREATE TRIGGER DLCDidoHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_DIDO'),  						    ('RELIGION_CNAANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_DIDO'),  						    		('RELIGION_HELLENISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_DIDO'),  						    		('RELIGION_R5_IMPERIAL_CULT')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_DIDO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 2);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_DIDO'),  						    		('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_DIDO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CARTHAGE_LEBANON' AND Value = 2);

END;

--------------- Eleanor (England)

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_ELEANOR_ENGLAND'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ELEANOR_ENGLAND'),  						    		('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ELEANOR_ENGLAND'),  						    		('RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

--

CREATE TRIGGER DLCEleanorHR1
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_ELEANOR_ENGLAND'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ELEANOR_ENGLAND'),  						    		('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ELEANOR_ENGLAND'),  						    		('RELIGION_C3_ANGLICANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ELEANOR_ENGLAND' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

END;

--------------- Eleanor (France)

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_FRANCE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_FRANCE');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_ELEANOR_FRANCE'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_FRANCE');

--

CREATE TRIGGER DLCEleanorHR2
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ELEANOR_FRANCE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_FRANCE');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_ELEANOR_FRANCE'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_FRANCE');

END;

--------------- Frederick Barbarossa

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BARBAROSSA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BARBAROSSA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_BARBAROSSA'),  							('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BARBAROSSA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_BARBAROSSA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BARBAROSSA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BARBAROSSA_LUTHERANISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_BARBAROSSA'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_BARBAROSSA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BARBAROSSA_LUTHERANISM' AND Value = 1);

--------------- Gandhi

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GANDHI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GANDHI');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GANDHI'),  								('RELIGION_HINDUISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GANDHI');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GANDHI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GANDHI')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GANDHI'),  								('RELIGION_H2_VAISHNAVISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GANDHI')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM');

--------------- Genghis Khan

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_GENGHIS_KHAN'),  						    ('RELIGION_TENGRIISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_B2_VAJRAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

--

CREATE TRIGGER DLCGenghisHR
AFTER INSERT ON Leaders WHEN 'LEADER_GENGHIS_KHAN' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_GENGHIS_KHAN'),  						    ('RELIGION_TENGRIISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GENGHIS_KHAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_GENGHIS_KHAN'),  						    		('RELIGION_B2_VAJRAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GENGHIS_KHAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

END;

--------------- Gilgamesh

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GILGAMESH'),  							('RELIGION_CHALDAENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GILGAMESH'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GILGAMESH'),  						    		('RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GILGAMESH'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GILGAMESH'),  						    		('RELIGION_I5_TWELVER')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GILGAMESH')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

--------------- Gitarja

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GITARJA'),  								('RELIGION_HINDUISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H3_SHAIVISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GITARJA'),  								('RELIGION_H3_SHAIVISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H3_SHAIVISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GITARJA_ISLAM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GITARJA'),  								('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GITARJA_ISLAM' AND Value = 1);

--

CREATE TRIGGER DLCGitarjaHR
AFTER INSERT ON HistoricalAgendas WHEN 'LEADER_GITARJA' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_GITARJA'),  								('RELIGION_HINDUISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H3_SHAIVISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_GITARJA'),  								('RELIGION_H3_SHAIVISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H3_SHAIVISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GITARJA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GITARJA_ISLAM' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_GITARJA'),  								('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GITARJA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GITARJA_ISLAM' AND Value = 1);

END;

--------------- Gorgo

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GORGO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GORGO');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_GORGO'),  								('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GORGO');

-- Modern

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GORGO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GORGO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GORGO_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_GORGO'),  						    		('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_GORGO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GORGO_MODERN' AND Value = 1);

--------------- Hammurabi

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_HAMMURABI'),  								('RELIGION_CHALDAENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI');

-- 

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_I1_SHIA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_I5_TWELVER')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

--

CREATE TRIGGER DLCHammBabylon
AFTER INSERT ON Units WHEN 'UNIT_BABYLONIAN_SABUM_KIBITTUM' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_HAMMURABI'),  								('RELIGION_CHALDAENISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_I1_SHIA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HAMMURABI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_HAMMURABI'),  						    		('RELIGION_I5_TWELVER')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HAMMURABI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

END;

--------------- Harald Hardrada

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HARDRADA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_HARDRADA'),  							('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HARDRADA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_HARDRADA'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HARDRADA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_HARDRADA'),  								('RELIGION_FORN_SIDR')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HARDRADA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 3);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_HARDRADA'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HARDRADA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 3);

--------------- Hojo

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HOJO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_HOJO'),  								('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HOJO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_HOJO'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_HOJO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HOJO_SHINTO' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_HOJO'),  								('RELIGION_SHINTO')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_HOJO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HOJO_SHINTO' AND Value = 1);

--------------- Jadwiga

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JADWIGA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JADWIGA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_JADWIGA'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JADWIGA');

--

CREATE TRIGGER DLCJadwigaHR
AFTER INSERT ON HistoricalAgendas WHEN 'LEADER_JADWIGA' = NEW.LeaderType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JADWIGA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JADWIGA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_JADWIGA'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JADWIGA');

END;

--------------- Jayavarman

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_JAYAVARMAN'),  							('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_JAYAVARMAN'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAYAVARMAN_THERAVADA' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_JAYAVARMAN'),  								('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAYAVARMAN_THERAVADA' AND Value = 1);

--

CREATE TRIGGER DLCJayavarmanHR
AFTER INSERT ON HistoricalAgendas WHEN 'LEADER_JAYAVARMAN' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_JAYAVARMAN'),  							('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_JAYAVARMAN'),  								('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JAYAVARMAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAYAVARMAN_THERAVADA' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_JAYAVARMAN'),  								('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JAYAVARMAN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_JAYAVARMAN_THERAVADA' AND Value = 1);

END;

--------------- Joao

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOAO_III'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOAO_III');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_JOAO_III'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOAO_III');

--

CREATE TRIGGER DLCPortugalHR1
AFTER INSERT ON Units WHEN 'UNIT_PORTUGUESE_NAU' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOAO_III'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOAO_III');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_JOAO_III'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOAO_III');

END;

--------------- John Curtin

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_JOHN_CURTIN'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_JOHN_CURTIN'),  								('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CURTIN_ATHEISM' AND Value = 1);

--

CREATE TRIGGER DLCCurtinHR
AFTER INSERT ON Leaders WHEN 'LEADER_JOHN_CURTIN' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_JOHN_CURTIN'),  								('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_JOHN_CURTIN'),  								('RELIGION_P1_CALVINISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_JOHN_CURTIN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_JOHN_CURTIN')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CURTIN_ATHEISM' AND Value = 1);

END;

--------------- Kristina

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KRISTINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KRISTINA'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KRISTINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KRISTINA_LUTHERANISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KRISTINA'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KRISTINA_LUTHERANISM' AND Value = 1);

--

CREATE TRIGGER DLCKristinaHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KRISTINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KRISTINA'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KRISTINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KRISTINA_LUTHERANISM' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KRISTINA'),  								('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KRISTINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KRISTINA_LUTHERANISM' AND Value = 1);

END;

--------------- Kublai Khan (Mongolia)

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_B2_VAJRAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_TENGRIISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_TENGRIISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_TENGRIISM' AND Value = 1);

--

CREATE TRIGGER DLCKublaiMongolHR
AFTER INSERT ON HistoricalAgendas WHEN 'LEADER_KUBLAI_KHAN_MONGOLIA' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_B2_VAJRAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_TENGRIISM' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KUBLAI_KHAN_MONGOLIA'),  								('RELIGION_TENGRIISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_MONGOLIA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_TENGRIISM' AND Value = 1);

END;

--------------- Kublai Khan (China)

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_B2_VAJRAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_TENGRIISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  						    		('RELIGION_TAOISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 2);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_G8')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 4);

--

CREATE TRIGGER DLCKublaiChinaHR
AFTER INSERT ON Units WHEN 'UNIT_VIETNAMESE_VOI_CHIEN' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_B2_VAJRAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_TENGRIISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 2);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  						    		('RELIGION_TAOISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 2);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUBLAI_KHAN_CHINA'),  								('RELIGION_G8')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUBLAI_KHAN_CHINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 4);

END;

--------------- Kupe

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_KUPE'),  				('RELIGION_O2_TALA_FONUA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PUATA_TUPUNA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_KUPE'),  								('RELIGION_PUATA_TUPUNA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PUATA_TUPUNA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_KUPE'),  						    		('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_KUPE'),  						    		('RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

--

CREATE TRIGGER DLCKupeHR
AFTER INSERT ON Leaders WHEN 'LEADER_KUPE' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_KUPE'),  				('RELIGION_O2_TALA_FONUA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PUATA_TUPUNA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_KUPE'),  								('RELIGION_PUATA_TUPUNA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PUATA_TUPUNA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_KUPE'),  						    		('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_KUPE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_KUPE'),  						    		('RELIGION_C3_ANGLICANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_KUPE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUPE_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

END;

--------------- Lady Six Sky

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_LADY_SIX_SKY'),  				('RELIGION_TLATEOMATILIZTLI')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TZOLKIN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_LADY_SIX_SKY'),  								('RELIGION_TZOLKIN')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TZOLKIN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAYA_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_LADY_SIX_SKY'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAYA_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCMayaDLC
AFTER INSERT ON Units WHEN 'UNIT_COLOMBIAN_LLANERO' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_LADY_SIX_SKY'),  						    		('RELIGION_TLATEOMATILIZTLI')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TZOLKIN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_LADY_SIX_SKY'),  								('RELIGION_TZOLKIN')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TZOLKIN');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LADY_SIX_SKY'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAYA_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_LADY_SIX_SKY'),  						    		('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LADY_SIX_SKY')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAYA_MODERN' AND Value = 1);

END;

--------------- Lautaro

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAUTARO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_LAUTARO'),  						    ('RELIGION_WITRAN_MAPU')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAUTARO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAPUCHE_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_LAUTARO'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAPUCHE_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCLautaroHR
AFTER INSERT ON Leaders WHEN 'LEADER_LAUTARO' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAUTARO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_LAUTARO'),  						    ('RELIGION_WITRAN_MAPU')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAUTARO'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAPUCHE_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_LAUTARO'),  						    		('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAUTARO')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAPUCHE_MODERN' AND Value = 1);

END;

--------------- Mansa Musa

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MANSA_MUSA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MANSA_MUSA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_MANSA_MUSA'),  								('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MANSA_MUSA');

--

CREATE TRIGGER DLCMansaHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MANSA_MUSA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MANSA_MUSA');
	
	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_MANSA_MUSA'),  								('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MANSA_MUSA');

END;

--------------- Matthias Corvinus

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_MATTHIAS_CORVINUS'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS');

--

CREATE TRIGGER DLCMathiasHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS');
	
	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_MATTHIAS_CORVINUS'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MATTHIAS_CORVINUS');

END;

--------------- Menelik II

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MENELIK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MENELIK');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_MENELIK'),  							('RELIGION_C1_ORIENTAL')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MENELIK');

--

CREATE TRIGGER DLCEthiopiaMenelikHR
AFTER INSERT ON Units WHEN 'UNIT_ETHIOPIAN_OROMO_CAVALRY' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MENELIK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MENELIK');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_MENELIK'),  							('RELIGION_C1_ORIENTAL')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MENELIK');

END;

--------------- Montezuma

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MONTEZUMA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_MONTEZUMA'),  						    		('RELIGION_TLATEOMATILIZTLI')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MONTEZUMA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AZTEC_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_MONTEZUMA'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AZTEC_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCMontezumaHR
AFTER INSERT ON Units WHEN 'UNIT_AZTEC_EAGLE_WARRIOR' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MONTEZUMA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_MONTEZUMA'),  						    		('RELIGION_TLATEOMATILIZTLI')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MONTEZUMA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AZTEC_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_MONTEZUMA'),  						    		('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MONTEZUMA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AZTEC_MODERN' AND Value = 1);

END;

--------------- Mvemba a Nzinga

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MVEMBA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MVEMBA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_MVEMBA'),  							('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MVEMBA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_MVEMBA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MVEMBA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MVEMBA_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_NZAMBIISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_MVEMBA'),  								('RELIGION_NZAMBIISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_MVEMBA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MVEMBA_NZAMBIISM' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_NZAMBIISM');

--------------- Pachacuti

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PACHACUTI'),  				('RELIGION_A0_PCHAISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A1_INTIISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_PACHACUTI'),  								('RELIGION_A1_INTIISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A1_INTIISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INCA_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PACHACUTI'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INCA_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCPachacutiHR
AFTER INSERT ON Leaders WHEN 'LEADER_PACHACUTI' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_PACHACUTI'),  				('RELIGION_A0_PCHAISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A1_INTIISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_PACHACUTI'),  								('RELIGION_A1_INTIISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A1_INTIISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PACHACUTI'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INCA_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_PACHACUTI'),  						    		('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PACHACUTI')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_INCA_MODERN' AND Value = 1);
	
END;

--------------- Pedro II

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PEDRO'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PEDRO');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PEDRO'),  							('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PEDRO');

--------------- Pericles

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PERICLES'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PERICLES');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_PERICLES'),  								('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PERICLES');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PERICLES'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PERICLES')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PERICLES_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PERICLES'),  						    		('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PERICLES')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PERICLES_MODERN' AND Value = 1);

--------------- Peter

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PETER_GREAT'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PETER_GREAT');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PETER_GREAT'),  							('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PETER_GREAT');

--------------- Phillip II

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_PHILIP_II'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PHILIP_II');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_PHILIP_II'),  							('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_PHILIP_II');

--------------- Poundmaker

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_POUNDMAKER'),  						    ('RELIGION_WAKAN_TANKA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MIDEWIWIN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_POUNDMAKER'),  								('RELIGION_MIDEWIWIN')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MIDEWIWIN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_POUNDMAKER'),  						    		('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_POUNDMAKER'),  						    		('RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

--

CREATE TRIGGER DLCPoundHR
AFTER INSERT ON Leaders WHEN 'LEADER_POUNDMAKER' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_POUNDMAKER'),  						    ('RELIGION_WAKAN_TANKA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MIDEWIWIN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_POUNDMAKER'),  								('RELIGION_MIDEWIWIN')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MIDEWIWIN');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_POUNDMAKER'),  						    		('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_POUNDMAKER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_POUNDMAKER'),  						    		('RELIGION_C3_ANGLICANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_POUNDMAKER')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 2)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

END;

--------------- Qin

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_QIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_QIN'),  							('RELIGION_TAOISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_QIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_Q7_LEGALISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_QIN'),  								('RELIGION_Q7_LEGALISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 0)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_Q7_LEGALISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_QIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_QIN'),  								('RELIGION_G8')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_QIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_QIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 3);

--------------- Robert the Bruce

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_ROBERT_THE_BRUCE'),  					('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ROBERT_THE_BRUCE'),  						    		('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_ROBERT_THE_BRUCE'),  						    		('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

--

CREATE TRIGGER DLCRobertHR
AFTER INSERT ON Units WHEN 'UNIT_ZULU_IMPI' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_ROBERT_THE_BRUCE'),  					('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ROBERT_THE_BRUCE'),  						    		('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_ROBERT_THE_BRUCE'),  						    		('RELIGION_P1_CALVINISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_ROBERT_THE_BRUCE')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SCOTLAND_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

END;

--------------- Saladin

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SALADIN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SALADIN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_SALADIN'),  								('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SALADIN');

--------------- Seondeok

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_SEONDEOK'),  							('RELIGION_BUDDHISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_SEONDEOK'),  								('RELIGION_B1_MAHAYANA')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MUISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_SEONDEOK'),  								('RELIGION_MUISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MUISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_SEONDEOK'),  								('RELIGION_CONFUCIANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 2);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 3);

--

CREATE TRIGGER DLCSeondeokHR
AFTER INSERT ON Units WHEN 'UNIT_ZULU_IMPI' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_SEONDEOK'),  							('RELIGION_BUDDHISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_SEONDEOK'),  								('RELIGION_B1_MAHAYANA')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MUISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_SEONDEOK'),  								('RELIGION_MUISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MUISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 2);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_SEONDEOK'),  								('RELIGION_CONFUCIANISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 2);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SEONDEOK'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SEONDEOK')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 3);

END;

--------------- Shaka

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  ('LEADER_SHAKA'),  						    ('RELIGION_AMATONGO')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_C4_RESTORATIONISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_P4_PENTECOSTALISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM');


--

CREATE TRIGGER DLCShakaHR
AFTER INSERT ON Leaders WHEN 'LEADER_SHAKA' = NEW.LeaderType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  ('LEADER_SHAKA'),  						    ('RELIGION_AMATONGO')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_C4_RESTORATIONISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SHAKA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_SHAKA'),  						    		('RELIGION_P4_PENTECOSTALISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SHAKA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM');

END;

--------------- Simon Bolivar

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SIMON_BOLIVAR'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SIMON_BOLIVAR');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_SIMON_BOLIVAR'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SIMON_BOLIVAR');

--

CREATE TRIGGER DLCColombiaDLC
AFTER INSERT ON Units WHEN 'UNIT_COLOMBIAN_LLANERO' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SIMON_BOLIVAR'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SIMON_BOLIVAR');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_SIMON_BOLIVAR'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SIMON_BOLIVAR');

END;

--------------- Suleiman

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SULEIMAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SULEIMAN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_SULEIMAN'),  								('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SULEIMAN');

--

CREATE TRIGGER DLCSuleimanHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_SULEIMAN'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SULEIMAN');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_SULEIMAN'),  								('RELIGION_ISLAM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_SULEIMAN');

END;

--------------- Tamar

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TAMAR'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TAMAR');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_TAMAR'),  							('RELIGION_ORTHODOXY')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TAMAR');

--

CREATE TRIGGER DLCTamarHR
AFTER INSERT ON Units WHEN 'UNIT_ZULU_IMPI' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TAMAR'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TAMAR');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 								 	ReligionType)
	SELECT  	('LEADER_TAMAR'),  							('RELIGION_ORTHODOXY')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TAMAR');

END;

--------------- Teddy Roosevelt

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_T_ROOSEVELT'),  							('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_T_ROOSEVELT'),  								('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

--------------- Teddy Alt

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_T_ROOSEVELT_ROUGHRIDER'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_T_ROOSEVELT_ROUGHRIDER'),  								('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

--

CREATE TRIGGER DLCTeddyAltHR
AFTER INSERT ON Units WHEN 'UNIT_AMERICAN_ROUGH_RIDER' = NEW.UnitType
BEGIN

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_T_ROOSEVELT_ROUGHRIDER'),  								('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_T_ROOSEVELT_ROUGHRIDER'),  								('RELIGION_P1_CALVINISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_T_ROOSEVELT_ROUGHRIDER')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

END;

--------------- Tomyris

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TOMYRIS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TOMYRIS');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_TOMYRIS'),  							('RELIGION_SAIRIMAISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TOMYRIS');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TOMYRIS'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TOMYRIS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TOMYRIS_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_TOMYRIS'),  						    		('RELIGION_ISLAM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TOMYRIS')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TOMYRIS_MODERN' AND Value = 1);

--------------- Trajan

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TRAJAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_TRAJAN'),  							('RELIGION_HELLENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TRAJAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_TRAJAN'),  								('RELIGION_R5_IMPERIAL_CULT')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TRAJAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R4_NUMENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 1);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_TRAJAN'),  								('RELIGION_R4_NUMENISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R4_NUMENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 1);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TRAJAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R6_MITHRAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_TRAJAN'),  								('RELIGION_R6_MITHRAISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R6_MITHRAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_TRAJAN'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 3);

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_TRAJAN'),  						    		('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_TRAJAN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 3);

--------------- Victoria

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_VICTORIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_VICTORIA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 								 	ReligionType)
SELECT  	('LEADER_VICTORIA'),  							('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_VICTORIA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_VICTORIA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_VICTORIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_VICTORIA'),  								('RELIGION_C3_ANGLICANISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_VICTORIA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM');

--------------- Wilfrid Laurier

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAURIER'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAURIER');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  ('LEADER_LAURIER'),  								('RELIGION_CATHOLICISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAURIER');

--

CREATE TRIGGER DLCLaurierHR
AFTER INSERT ON Units WHEN 'UNIT_CANADA_MOUNTIE' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_LAURIER'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAURIER');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  ('LEADER_LAURIER'),  								('RELIGION_CATHOLICISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_LAURIER');

END;

--------------- Wilhelmina

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_WILHELMINA'),  								('RELIGION_PROTESTANTISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions 
		(LeaderType, 									ReligionType)
SELECT  	('LEADER_WILHELMINA'),  								('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

--

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NETHERLANDS_MODERN' AND Value = 1);

--

CREATE TRIGGER DLCWilhelminaHR
AFTER INSERT ON Units WHEN 'UNIT_ZULU_IMPI' = NEW.UnitType
BEGIN
	
	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_WILHELMINA'),  								('RELIGION_PROTESTANTISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	INSERT OR REPLACE INTO FavoredReligions 
			(LeaderType, 									ReligionType)
	SELECT  	('LEADER_WILHELMINA'),  								('RELIGION_P1_CALVINISM')
	WHERE EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

	--

	DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILHELMINA'
	AND EXISTS (SELECT * FROM Leaders WHERE LeaderType = 'LEADER_WILHELMINA')
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NETHERLANDS_MODERN' AND Value = 1);

END;

------------------------------------------------

--------------- Update

------------------------------------------------

--------------- Hindu Fix

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_H2_VAISHNAVISM'
WHERE ReligionType = 'RELIGION_HINDUISM'
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM');

--

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_HINDUISM'
WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM'
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 0);

--

CREATE TRIGGER HRHindu1
AFTER INSERT ON FavoredReligions 
BEGIN

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_H2_VAISHNAVISM'
	WHERE ReligionType = 'RELIGION_HINDUISM'
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM');

	--

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_HINDUISM'
	WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM'
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 0);

END;

--------------- Shia Fix

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_I5_TWELVER'
WHERE ReligionType = 'RELIGION_I1_SHIA'
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

--

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_I1_SHIA'
WHERE ReligionType = 'RELIGION_I5_TWELVER'
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 0);

--

CREATE TRIGGER HRAlawiyyah1
AFTER INSERT ON FavoredReligions 
BEGIN

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_I5_TWELVER'
	WHERE ReligionType = 'RELIGION_I1_SHIA'
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER');

	--

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_I1_SHIA'
	WHERE ReligionType = 'RELIGION_I5_TWELVER'
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 0);

END;

--------------- Ayni Fix

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_A0_PCHAISM'
WHERE ReligionType = 'RELIGION_PCHAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A0_PCHAISM');

--

CREATE TRIGGER HRAndeanFix1
AFTER INSERT ON FavoredReligions 
BEGIN

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_A0_PCHAISM'
	WHERE ReligionType = 'RELIGION_PCHAISM'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A0_PCHAISM');

END;

--------------- Muisca Fix

UPDATE FavoredReligions
SET ReligionType = 'RELIGION_A3_CHIMINIGAGUA'
WHERE ReligionType = 'RELIGION_A2_CHIMINIGAGUA'
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A3_CHIMINIGAGUA');

--

CREATE TRIGGER HRAndeanFix3
AFTER INSERT ON FavoredReligions 
BEGIN

	UPDATE FavoredReligions
	SET ReligionType = 'RELIGION_A3_CHIMINIGAGUA'
	WHERE ReligionType = 'RELIGION_A2_CHIMINIGAGUA'
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1)
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A3_CHIMINIGAGUA');

END;

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
--HR_Custom_Names
--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

----
-- Text Edit Extra Religions
----

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_G8'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_G8'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

--

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_G8'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATOM_ICON' AND Value = 1);

--
--UPDATE Religions
--SET RequiresCustomName = 0
--WHERE ReligionType = 'RELIGION_X4'
--AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_X4')
--AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_EYE_ICON' AND Value = 1);
--

------------------------------------------------

-----
-- Custom names
----

UPDATE Religions
SET RequiresCustomName = 1
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

------------------------------------------------

--------------- Base

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_BUDDHISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_BUDDHISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_CATHOLICISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CATHOLICISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_CONFUCIANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CONFUCIANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_HINDUISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HINDUISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_ISLAM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ISLAM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_JUDAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JUDAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_ORTHODOXY'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ORTHODOXY')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_PROTESTANTISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PROTESTANTISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_SHINTO'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_SHINTO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_SIKHISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_SIKHISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_TAOISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TAOISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_ZOROASTRIANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_ZOROASTRIANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

------------------------------------------------

--------------- Lite

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_C1_ORIENTAL'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C1_ORIENTAL')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_AMATONGO'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_AMATONGO')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_CHALDAENISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CHALDAENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_HELLENISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_HELLENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_PESEDJET'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PESEDJET')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_SAIRIMAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_SAIRIMAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_TENGRIISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TENGRIISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_TLATEOMATILIZTLI'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TLATEOMATILIZTLI')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_WAKAN_TANKA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_WAKAN_TANKA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_WITRAN_MAPU'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_WITRAN_MAPU')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_CNAANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_CNAANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_A0_PCHAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A0_PCHAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_O2_TALA_FONUA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_O2_TALA_FONUA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_DRUIDISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_DRUIDISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

------------------------------------------------

--------------- Full

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_TZOLKIN'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TZOLKIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_PUATA_TUPUNA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_PUATA_TUPUNA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_A1_INTIISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_A1_INTIISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R5_IMPERIAL_CULT')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_B1_MAHAYANA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B1_MAHAYANA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_Q7_LEGALISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_Q7_LEGALISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 0);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_NZAMBIISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_NZAMBIISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MVEMBA_NZAMBIISM' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_H3_SHAIVISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H3_SHAIVISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H2_VAISHNAVISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_H1_VEDISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_H1_VEDISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_JAINISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_JAINISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CHANDRAGUPTA_JAINISM' AND Value = 0);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_P1_CALVINISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_C3_ANGLICANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C3_ANGLICANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_FORN_SIDR'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_AMBIORIX_FORN_SIDR' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_FORN_SIDR'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_FORN_SIDR')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HARDRADA_FORN_SIDR_LUTHERANISM' AND Value = 2);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_MUISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MUISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SEONDEOK_CONFUCIANISM_MUISM' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_MIDEWIWIN'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MIDEWIWIN')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POUNDMAKER_MIDEWIWIN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_TIANISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_TIANISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TRIEU_CONFUCIANISM' AND Value = 0);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_B2_VAJRAYANA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_TENGRIISM' AND Value = 0);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I1_SHIA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I5_TWELVER'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CYRUS_MODERN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_B2_VAJRAYANA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_B2_VAJRAYANA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MODERN_MONGOLIA' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I1_SHIA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I5_TWELVER'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GILGAMESH_IRAQ' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I1_SHIA'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I1_SHIA')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_I5_TWELVER'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_I5_TWELVER')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HAMMURABI_IRAQ' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P4_PENTECOSTALISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_C4_RESTORATIONISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SOUTH_AFRICA_MODERN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_R4_NUMENISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R4_NUMENISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 1);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_R6_MITHRAISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_R6_MITHRAISM')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_G8'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

UPDATE Religions
SET RequiresCustomName = 0
WHERE ReligionType = 'RELIGION_G8'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_G8')
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

------------------------------------------------

--------------- Mods

CREATE TRIGGER HRCustomNameUpdate1
AFTER INSERT ON FavoredReligions 
BEGIN

	UPDATE Religions
	SET RequiresCustomName = 0
	WHERE ReligionType = NEW.ReligionType
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = NEW.ReligionType)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

END;

CREATE TRIGGER HRCustomNameUpdate2
AFTER UPDATE ON FavoredReligions 
BEGIN

	UPDATE Religions
	SET RequiresCustomName = 0
	WHERE ReligionType = NEW.ReligionType
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = NEW.ReligionType)
	AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CUSTOM_NAMES' AND Value = 1);

END;

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
--HR_Compatibility
--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

------------------------------------------------

DELETE FROM Types WHERE Type = 'RELIGION_MOISM' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

CREATE TRIGGER HRDouble1
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_MOISM' = NEW.GameDataType
BEGIN

	DELETE FROM Types WHERE Type = 'RELIGION_MOISM' 
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

END;

--

DELETE FROM Religions WHERE ReligionType = 'RELIGION_MOISM' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

CREATE TRIGGER HRDouble2
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_MOISM' = NEW.GameDataType
BEGIN

	DELETE FROM Religions WHERE ReligionType = 'RELIGION_MOISM' 
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

END;

--

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_MOISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

CREATE TRIGGER HRDoubleMoism
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_MOISM' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_MOISM'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

END;

------------------------------------------------

DELETE FROM Types WHERE Type = 'RELIGION_QUAKERS' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

CREATE TRIGGER HRDouble3
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_QUAKERS' = NEW.GameDataType
BEGIN

	DELETE FROM Types WHERE Type = 'RELIGION_QUAKERS' 
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

END;

--

DELETE FROM Religions WHERE ReligionType = 'RELIGION_QUAKERS' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

CREATE TRIGGER HRDouble4
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_QUAKERS' = NEW.GameDataType
BEGIN

	DELETE FROM Religions WHERE ReligionType = 'RELIGION_QUAKERS' 
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

END;

--

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_QUAKERS'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

CREATE TRIGGER HRDoubleQuakers
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_QUAKERS' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_QUAKERS'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

END;

------------------------------------------------

DELETE FROM Types WHERE Type = 'RELIGION_Q3' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

CREATE TRIGGER HRRoseDouble1
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_LEU_ROSE' = NEW.GameDataType
BEGIN

	DELETE FROM Types WHERE Type = 'RELIGION_Q3';

END;

--

DELETE FROM Religions WHERE ReligionType = 'RELIGION_Q3' 
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

CREATE TRIGGER HRRoseDouble2
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_LEU_ROSE' = NEW.GameDataType
BEGIN

	DELETE FROM Religions WHERE ReligionType = 'RELIGION_Q3';

END;

--

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_Q3'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

CREATE TRIGGER HRRoseDouble3
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_LEU_ROSE' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_Q3';

END;

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

--------
------ Notes:
--------
-- New Icons:
---- Ajivika  - Ascetic
---- Alawiyah - Flag Star
---- Yazidism - Peacock
--------
-- New Religions:
---- Samaritanism - Jewish Denom
---- Starovery / E. Orthodox Old Believers - E. Orthodox Denom
--------
---- Representation for New Age East Asian ? (Cao Dai, Hoahaoism, Tenriism) ? 
--------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
