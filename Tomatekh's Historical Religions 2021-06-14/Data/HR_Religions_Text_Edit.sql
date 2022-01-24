---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
-- English
----

---------------------------------------------------------------------------
---------------------------------------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_KEPERCAYAAN'),  	('en_US'),			('Kejawen')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KEPERCAYAAN' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NUSANTARA_DENOMINATIONS' AND Value = 1);

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_R6_MITHRAISM'),  	('en_US'),			('Sol Invictus')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('en_US'),			('State Atheism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Atheism is not a religion or organized philosophy in and of itself, but rather the absence of belief in the existence of deities. More broadly, it is also used to refer to the rejection of religion in general and thus still presented in contrast to even nontheistic religions. However, when incorporated into political regimes it can form the basis of organized political ideology oftentimes dedicated to systematic secularization attempts by the state.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('State atheism is then a form of religion-state relationship linked to the promotion of irreligion. It may refer to a government''s promotion of anti-clericalism, which opposes religious institutional power and influence in all aspects of public and political life, including the involvement of religion in the everyday life of the citizen. In contrast to general atheism, it is organized and guided by government issued guidelines and tenets. In more directed instances, state atheism may not even be entirely irreligious, but rather seek to recontextualize traditionally religious subject matter or figures into a secular national context.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('State atheism is different from a secular state which purports to be officially neutral in matters of religion, supporting neither religion nor irreligion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('en_US'),			('State Atheism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Atheism is not a religion or organized philosophy in and of itself, but rather the absence of belief in the existence of deities. More broadly, it is also used to refer to the rejection of religion in general and thus still presented in contrast to even nontheistic religions. However, when incorporated into political regimes it can form the basis of organized political ideology oftentimes dedicated to systematic secularization attempts by the state.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('State atheism is then a form of religion-state relationship linked to the promotion of irreligion. It may refer to a government''s promotion of anti-clericalism, which opposes religious institutional power and influence in all aspects of public and political life, including the involvement of religion in the everyday life of the citizen. In contrast to general atheism, it is organized and guided by government issued guidelines and tenets. In more directed instances, state atheism may not even be entirely irreligious, but rather seek to recontextualize traditionally religious subject matter or figures into a secular national context.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('State atheism is different from a secular state which purports to be officially neutral in matters of religion, supporting neither religion nor irreligion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

----
--Text Edit
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_P1_CALVINISM'),  	('en_US'),			('Reformed Protestantism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_CALVINISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_P1_CALVINISM'),  	('en_US'),			('Presbyterianism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_CALVINISM' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_TJUKURPA'),  	('en_US'),			('Altjirrinja')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_DREAMTIME' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_TJUKURPA'),  	('en_US'),			('Tjukurpa')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_DREAMTIME' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_TJUKURPA'),  	('en_US'),			('Wapar')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_DREAMTIME' AND Value = 3);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_FORN_SIDR'),  	('en_US'),			('Asatru')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_TWELVER' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_FORN_SIDR'),  	('en_US'),			('Wotanism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_NORSE_RELIGIONS' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_FORN_SIDR'),  	('en_US'),			('Heathenism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_NORSE_RELIGIONS' AND Value = 3);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I5_TWELVER'),  	('en_US'),			('Ithnashariyah')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_TWELVER' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I5_TWELVER'),  	('en_US'),			('Twelver')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_TWELVER' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_MORMONISM'),  	('en_US'),			('Mormonism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_MORMONISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_Q7_LEGALISM'),  	('en_US'),			('Fajia')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_LEGLISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_MAZDAISM'),  	('en_US'),			('Zoroastrianism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ZOROASTRIANISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_MCHOS'),  	('en_US'),			('Bon')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_BON' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_R6_MITHRAISM'),  	('en_US'),			('Sol Invictus')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_MITHRAISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_MUISM'),  	('en_US'),			('Sinkyo')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_MUKYO' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_C2_NESTORIANISM'),  	('en_US'),			('Church of the East')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_NESTORIANISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_C1_ORIENTAL'),  	('en_US'),			('Miaphysitism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ORIENTAL' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_C1_ORIENTAL'),  	('en_US'),			('Coptic Christianity')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ORIENTAL' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_K1_PALO'),  	('en_US'),			('Antonianism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_PALO' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_PUATA_TUPUNA'),  	('en_US'),			('Whakapapa')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_PUTA_TUMU' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_P7_QUAKER'),  	('en_US'),			('Quakerism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_QUAKER' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_VOODOO'),  	('en_US'),			('Vodun')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_VOODOO' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_WAKAN_TANKA'),  	('en_US'),			('Gitche Manitou')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_WAKAN' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I6_FIVER'),  	('en_US'),			('Zaidi')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_FIVER' AND Value = 1);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I6_FIVER'),  	('en_US'),			('Zaidi Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_FIVER' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I6_FIVER'),  	('en_US'),			('Fiver')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_FIVER' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_P4_PENTECOSTALISM'),  	('en_US'),			('Charismatic Christianity')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_PENTECOSTALISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_BAHAI'),  	('en_US'),			('Baha''i Faith')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_BAHAI' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_SUNNI'),  	('en_US'),			('Sunnism')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SUNI' AND Value = 1);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_SUNNI'),  	('en_US'),			('Sunni Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SUNI' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I1_SHIA'),  	('en_US'),			('Shiaism')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SHIA' AND Value = 1);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I1_SHIA'),  	('en_US'),			('Shia Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SHIA' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I2_IBADI'),  	('en_US'),			('Ibadism')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_IBADI' AND Value = 2);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I2_IBADI'),  	('en_US'),			('Ibadi')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_IBADI' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I2_IBADI'),  	('en_US'),			('Ibadi Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_IBADI' AND Value = 2);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I7_ISMAILI'),  	('en_US'),			('Ismailism')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ISMAILI' AND Value = 1);
--
--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I7_ISMAILI'),  	('en_US'),			('Ismaili')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ISMAILI' AND Value = 2);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I7_ISMAILI'),  	('en_US'),			('Ismaili Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ISMAILI' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_I4_AHMADI'),  	('en_US'),			('Ahmadi')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_AHMADI' AND Value = 1);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_I4_AHMADI'),  	('en_US'),			('Ahmadi Islam')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_AHMADI' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_ORISHA'),  	('en_US'),			('Itan')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_IFA' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_E2_ATENISM'),  	('en_US'),			('Amarna Heresy')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATENISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_RODNOVERY'),  	('en_US'),			('Vedism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_RODNOVERY' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_H1_VEDISM'),  	('en_US'),			('Vedicism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_RODNOVERY' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_H1_VEDISM'),  	('en_US'),			('Brahmanism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_VEDICISM' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_TLATEOMATILIZTLI'),  	('en_US'),			('Teotl')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_TEOTL' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_YAZDANISM'),  	('en_US'),			('Yazdanism')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_YAZIDI' AND Value = 1);
--
--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_YAZDANISM'),  	('en_US'),			('Yarsanism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_YAZIDI' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_YAZDANISM'),  	('en_US'),			('Alevism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_YAZIDI' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_DODEKATHEON'),  	('en_US'),			('Olympianism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_DODEKATHEON' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_PESEDJET'),  	('en_US'),			('Kemetism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_PESEDJET' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_PESEDJET'),  	('en_US'),			('Neterism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_PESEDJET' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_SAIRIMAISM'),  	('en_US'),			('Uatsdin')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SCYTHIA' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_SAIRIMAISM'),  	('en_US'),			('Assianism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_SCYTHIA' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_MSHRIKUN'),  	('en_US'),			('Wathanism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ARABIC' AND Value = 1);

----
-- Text Edit Extra Religions
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('en_US'),			('State Atheism')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATOM_ICON' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Atheism is not a religion or organized philosophy in and of itself, but rather the absence of belief in the existence of deities. More broadly, it is also used to refer to the rejection of religion in general and thus still presented in contrast to even nontheistic religions. However, when incorporated into political regimes it can form the basis of organized political ideology oftentimes dedicated to systematic secularization attempts by the state.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATOM_ICON' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('State atheism is then a form of religion-state relationship linked to the promotion of irreligion. It may refer to a government''s promotion of anti-clericalism, which opposes religious institutional power and influence in all aspects of public and political life, including the involvement of religion in the everyday life of the citizen. In contrast to general atheism, it is organized and guided by government issued guidelines and tenets. In more directed instances, state atheism may not even be entirely irreligious, but rather seek to recontextualize traditionally religious subject matter or figures into a secular national context.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATOM_ICON' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('State atheism is different from a secular state which purports to be officially neutral in matters of religion, supporting neither religion nor irreligion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_ATOM_ICON' AND Value = 1);

--
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_RELIGION_X4'),  	('en_US'),			('Cao Dai')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_EYE_ICON' AND Value = 1);
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_X4_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Cao Dai ("High Tower" a Taoist epithet for the supreme deity) is a syncretic modern Vietnamese religious movement with a strongly nationalist political character. Cao Dai draws upon ethical precepts from Confucianism, occult practices from Taoism, theories of karma and rebirth from Buddhism, and has a hierarchical organization based on Roman Catholicism.')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_EYE_ICON' AND Value = 1);
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_X4_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('In 1919, Ngo Van Chieu, an administrator for the French in Indochina, reportedly received a communication from the supreme deity during a table-moving seance. Chieu became the prophet of the new religion, which was formally established in 1926. A Cao Dai army was established in 1943 during the Japanese occupation of Indochina. After the war, Cao Dai was initially an effective force in national politics, but was later repressed by the government following the communist takeover in 1975. However, centers of worship were established in Vietnamese refugee communities abroad, and by the early 1990s Cao Dai was reported to have some two million adherents in Vietnam, Cambodia, France, and the United States.')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_EYE_ICON' AND Value = 1);
--
--INSERT OR REPLACE INTO LocalizedText
--		(Tag, 							Language,					Text)
--SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_X4_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('In Cao Dai, God is represented as an eye in a triangle, a symbol that appears on the facades of the sect’s temples. The religion’s organization is patterned after that of Roman Catholicism, with a pope, cardinals, and archbishops. Worship involves elaborate rituals and festivals. Its pantheon of saints includes such diverse figures as the Buddha, Confucius, Jesus Christ, Mu?ammad, Pericles, Julius Caesar, Joan of Arc, Victor Hugo, and Sun Yat-sen. Headquarters of the religion are at Tay Ninh, near Ho Chi Minh City.')
--WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NAMING_EYE_ICON' AND Value = 1);
--
---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Shenism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_T1_SHENISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Chinese folk religion or Shenism is the religious tradition of the Han people, including veneration of forces of nature and ancestors, exorcism of harmful forces, and a belief in the rational order of nature which can be influenced by human beings and their rulers as well as spirits and gods. Worship is devoted to a multiplicity of gods and immortals who can be deities of phenomena, human behavior, or progenitors of lineages. By the Song Dynasty these practices had been blended with Buddhist ideas of karma and rebirth, and Taoist teachings about hierarchies of gods, to form the popular religious system which has lasted in many ways until the present day.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_T1_SHENISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Chinese folk religion encompasses a variety of traditions and forms. Despite this diversity, there is a common core that can be summarized through four cosmological and moral concepts: "tian" (heaven), the transcendent source of moral meaning; "qi", the breath or energy that animates the universe; "jingzu", the veneration of ancestors; and "bao ying", moral reciprocity; together with two traditional concepts of fate and meaning: "ming yun", the personal destiny or burgeoning; and "yuan fen", good and bad chances and potential relationships.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_T1_SHENISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Both the present-day government of China and the imperial dynasties of the Ming and Qing tolerated village popular religious cults if they bolstered social stability but suppressed or persecuted those that they feared would undermine it. In recent times Chinese folk religion is experiencing a revival in both mainland China and Taiwan. Some forms have received official recognition as a preservation of traditional Chinese culture.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHENISM_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Restorationism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The Latter Day Saint movement, sometimes colloquially referred to as Mormonism, is a form of Restorationist Christianity founded by Joseph Smith in the United States in the late 1820s. Collectively, the churches of the movement have over 16 million members, the vast majority of which belong to ''The Church of Jesus Christ of Latter-day Saints'' (LDS Church) which is headquartered in Salt Lake City, Utah. Smaller denominations (less than 2% of the movement''s total population) include the ''Community of Christ'' and often follow a more traditional Protestant theology compared to the distinctive doctrines of the LDS Church.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Since its inception, the Latter Day Saint movement has proclaimed itself to be Christ''s Church restored with its original authority, structure, and power. The teachings of other Christian denominations are understood to be incorrect, marked by a corruption of doctrine by Greek and other philosophies not long after Jesus'' ascension. The movement is characterized by a unique nontrinitarian understanding of the Godhead, emphasis on family life, belief in continuing revelation, desire for order, and a focus on missionary work. Members of the church also obey strict prohibitions on alcohol, tobacco, coffee, and tea and promote education and a vigorous work ethic.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The ''Book of Mormon'' is one of the primary sacred texts of the Latter Day Saint movement and was first published by Joseph Smith in March 1830. According to adherents, it contains writings of ancient prophets who lived on the American continent from approximately 2200 BC to AD 421. Other sacred texts of the movement include the ''Pearl of Great Price'', which contains a collection of materials produced by Joseph Smith touching on aspects of faith and doctrine, and the King James translation of the Bible.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Hellenism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Ancient Greek religion is today largely described in reference to the twelve Olympians; commonly counted as Zeus, Hera, Poseidon, Demeter, Athena, Apollo, Artemis, Ares, Aphrodite, Hephaestus, Hermes, and either Hestia or Dionysus. Local and cultic variations sometimes also included Hades, Persephone, Heracles, or Asclepius in place of one of the traditional twelve. However, despite the central role the Olympians played in the Greek mythic cycle, traditional Greek religion included the worship of a multitude of gods - Olympian, terrestrial, and chthonic - as well as lesser nature spirits, and the observance of ancestor and hero cults.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Sacrifice held a preeminent position in Greek religion and was institutionalized in various temple cults. Proper sacrifice was understood to bring "charis" (reciprocal grace) and was delineated according to the type of god to which it was offered. However, both Plato and Aristotle considered sacrifice to be determined by "nomos" (convention) rather than "physis" (nature). Sacrifice was then understood to be part of the social order, associated with paying proper respect to the gods. Traditionally, nomoi were the products of man and thus could be changed by man. Sacrifice, though, also had oracular or divine sanction behind them and thus could only be changed with the approval of an oracle or divine omen. As a result, sacrifice, unlike most other human nomoi, had a validity based upon acknowledged divine instruction.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Greek religion was characteristically lacking of pervasive dualism; both Olympic and chthonic deities could be portrayed as good or evil. Additionally, unlike the oriental mystery cults and later philosophical mysticism, Greek religion viewed the soul as a reflection of the physical body; the Homeric shadow. In fact, any sort of self-deification or safeguard against old age - key components of both Orphism and Neoplatonism - would have originally been seen as blasphemous to Greek religion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_GRECO_ROMAN_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Ancient Greek religion is today largely described in reference to the twelve Olympians; commonly counted as Zeus, Hera, Poseidon, Demeter, Athena, Apollo, Artemis, Ares, Aphrodite, Hephaestus, Hermes, and either Hestia or Dionysus. Local and cultic variations sometimes also included Hades, Persephone, Heracles, or Asclepius in place of one of the traditional twelve. However, despite the central role the Olympians played in the Greek mythic cycle, traditional Greek religion included the worship of a multitude of gods - Olympian, terrestrial, and chthonic - as well as lesser nature spirits, and the observance of ancestor and hero cults.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Sacrifice held a preeminent position in Greek religion and was institutionalized in various temple cults. Proper sacrifice was understood to bring "charis" (reciprocal grace) and was delineated according to the type of god to which it was offered. However, both Plato and Aristotle considered sacrifice to be determined by "nomos" (convention) rather than "physis" (nature). Sacrifice was then understood to be part of the social order, associated with paying proper respect to the gods. Traditionally, nomoi were the products of man and thus could be changed by man. Sacrifice, though, also had oracular or divine sanction behind them and thus could only be changed with the approval of an oracle or divine omen. As a result, sacrifice, unlike most other human nomoi, had a validity based upon acknowledged divine instruction.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HELLENISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Greek religion was characteristically lacking of pervasive dualism; both Olympic and chthonic deities could be portrayed as good or evil. Additionally, unlike the oriental mystery cults and later philosophical mysticism, Greek religion viewed the soul as a reflection of the physical body; the Homeric shadow. In fact, any sort of self-deification or safeguard against old age - key components of both Orphism and Neoplatonism - would have originally been seen as blasphemous to Greek religion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_IMPERIAL_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Uralic Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_NOAIDEVUOHTA_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The religion of the Sami, Nenets, Mansi, and Khanty represents some of the oldest beliefs of the Uralic peoples and is reflective of their nomadic and hunting way of life. The most prevalent gods of their pantheons are almost all sky gods associated with hunting or fishing. However, these gods lack a strict hierarchy. Gods are simply understood as "being above" with no one god viewed as supreme. Culture heroes also exist, though most are without an active cult.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_NOAIDEVUOHTA_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Prominent among these groups are variations of ancestor worship. This cult concerned only dead members of the family; other dead beings were experienced as restless haunters and aggressive expelling rites were used to dispel them. However, the worship of ancestors must be understood as a family institution in which intercourse between the living and the dead is the internal activity of a social primary group. This intercourse is accomplished through shaman-like specialists known to the Sami as "noaidi" who could navigate the underworld to intercede on behalf of the community or perform rituals at "seita" (sacred locations) found throughout the landscape.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1);


INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_NOAIDEVUOHTA_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Several animals hold positions of ritual importance, notably the bear which was understood as an embodiment of the forefathers. Myths recount that the bear is of heavenly origin and is the son of the sky god; it descends from heaven and, when it dies, returns there. The central bear-killing ceremony involves a ritual hunt and subsequent feast, typically lasting two days and full of marriage symbolism. Other sacred animals include the elk and reindeer, revered due to their importance in providing nourishment, and birds; understood to carry an individual''s soul.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_NOAIDEVUOHTA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_URALIC_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Andean Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_A0_PCHAISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The earliest archeological evidence of Andean religiosity (and the oldest image of a god to be found in the Americas) is a gourd recovered from Norte Chico sites depicting an image believed to represent the Staff God and dated to around 2250 BC. This depiction of a deity holding two staves (analogous to the later Incan creator god Wiracocha) would prove one of the most important iconographical elements in central Andean archaeology, prominent in both portable and fixed art.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_A4_ANDEAN_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The earliest archeological evidence of Andean religiosity (and the oldest image of a god to be found in the Americas) is a gourd recovered from Norte Chico sites depicting an image believed to represent the Staff God and dated to around 2250 BC. This depiction of a deity holding two staves (analogous to the later Incan creator god Wiracocha) would prove one of the most important iconographical elements in central Andean archaeology, prominent in both portable and fixed art.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ANDEAN_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Polynesia Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_O2_TALA_FONUA_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Western Polynesian religious practice remained largely conservative in relation to the nascent belief systems of the Lapita period, and, therefore, might be described as less complex than its eastern brethren. However, this would be an oversimplification. While Eastern Polynesia saw the development of a distinct priestly caste, Western Polynesia further emphasized the role of the chief; whose function in ritual because increasingly complex and necessary. The chief also acted as orator, not only recounting tradition but reciting genealogies - from the distant past to the present - unifying myth and history into an epic time scale.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_O2_TALA_FONUA_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('As a subset of larger Polynesian belief, Western Polynesia continued to share many fundamental religious concepts found throughout the triangle. "Mana" was understood as a sacred impersonal force permeating the universe. To have mana was to have influence, authority, and efficacy; the power to perform in a given situation. It was both a spiritual energy and a healing power which could exist in places, objects, and persons. Equally important was the concept of "tapu" which denoted the sacred, but carried the extended meaning of sacred restrictions. In essence, it represented a code of conduct and regulation universal to lifestyle, gender roles, politics, and religion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_O2_TALA_FONUA_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('In contrast to the four great gods of Eastern Polynesia, worship in the west primarily centered on Tangaloa who was elevated to the role of supreme creator god. However, the other gods continued to be the focus of local cults, especially in seasonal and place rituals. Ceremonies were conducted in "marae" which consisted of open-air areas for public gatherings.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_POLYNESIAN_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Mesoamerica Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The Aztec cosmos consisted of three worlds: the earth, on which humans lived; the underworld, which belonged to the dead; and the upper plane of the sky. The earth and the underworld were both open for humans to enter, whereas the upper plane was impenetrable to humans. Existence was envisioned as straddling the two lower worlds in a cycle of birth, life, death, and rebirth. Just as the sun was believed to dwell in the underworld at night in order to be reborn in the morning, and maize kernels were interred to later sprout anew, all human and divine existence was also understood as being cyclical.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Sacrificial ritual for the Aztec must be understood in the context of religious cosmology; sacrifice and death were necessary for the continued existence of the world. Likewise, each part of life had one or more deities associated with it, and these had to be honored in order to achieve success. Gods were paid with sacrificial offerings such as food, flowers, or effigies, but the larger the effort required of the god, the greater the sacrifice. Blood maintained the cosmos; it fed the gods and kept the sun from falling. For some of the most important rites, a priest would offer his own blood - by cutting his ears, arms, tongue, chest, or genitals - or offer a human life, or even a god''s life. The people who were sacrificed came from many segments of society and might be a war captive, slave, or a member of the nobility.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Some of the most important deities included Quetzalcoatl, the feathered serpent, and Huitzilopochtli; the national god of the Mexicas. Forms of Aztec religion still continue to be practiced by indigenous rural communities today, although highly syncretized with Christianity.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MESOAMERICAN_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The Aztec cosmos consisted of three worlds: the earth, on which humans lived; the underworld, which belonged to the dead; and the upper plane of the sky. The earth and the underworld were both open for humans to enter, whereas the upper plane was impenetrable to humans. Existence was envisioned as straddling the two lower worlds in a cycle of birth, life, death, and rebirth. Just as the sun was believed to dwell in the underworld at night in order to be reborn in the morning, and maize kernels were interred to later sprout anew, all human and divine existence was also understood as being cyclical.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Sacrificial ritual for the Aztec must be understood in the context of religious cosmology; sacrifice and death were necessary for the continued existence of the world. Likewise, each part of life had one or more deities associated with it, and these had to be honored in order to achieve success. Gods were paid with sacrificial offerings such as food, flowers, or effigies, but the larger the effort required of the god, the greater the sacrifice. Blood maintained the cosmos; it fed the gods and kept the sun from falling. For some of the most important rites, a priest would offer his own blood - by cutting his ears, arms, tongue, chest, or genitals - or offer a human life, or even a god''s life. The people who were sacrificed came from many segments of society and might be a war captive, slave, or a member of the nobility.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_TLATEOMATILIZTLI_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Some of the most important deities included Quetzalcoatl, the feathered serpent, and Huitzilopochtli; the national god of the Mexicas. Forms of Aztec religion still continue to be practiced by indigenous rural communities today, although highly syncretized with Christianity.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_TZOLKIN_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Buddhism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Theravada ("Way of the Elders") is one of the two main existing branches of Buddhism. It can be understood as the more conservative tradition of Buddhism, focusing primarily on meditation and study, and is likely closer to early Buddhism than the other existing Buddhist traditions. Theravada is the dominant form of Buddhism in Southeast Asia and Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Theravada doctrine is founded on the distinction between "samsara" (the cycle of rebirth) and "nirvana". The ultimate goal of Theravada is to escape samsara and enter nirvana. This is accomplished by achieving the Theravada ideal of the "arhat"; a perfected saint who attains enlightenment as a result of his own efforts. This can be achieved through meditation and insight or through the study of Buddhist canon and scripture. The role of the layman and monk are clearly differentiated by Theravadins, who do not consider it possible to attain enlightenment while one is living the life of a layman. However, laypeople actively participate in the religion by providing material support to the monks (which produces positive karma), meditating, and following the basic ethical principles of the Buddha''s teachings.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Theravadins profoundly revere the historical Buddha as a perfected master but do not pay homage to the numerous buddhas and bodhisattvas that are worshiped in Mahayana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('en_US'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Theravada ("Way of the Elders") is one of the two main existing branches of Buddhism. It can be understood as the more conservative tradition of Buddhism, focusing primarily on meditation and study, and is likely closer to early Buddhism than the other existing Buddhist traditions. Theravada is the dominant form of Buddhism in Southeast Asia and Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Theravada doctrine is founded on the distinction between "samsara" (the cycle of rebirth) and "nirvana". The ultimate goal of Theravada is to escape samsara and enter nirvana. This is accomplished by achieving the Theravada ideal of the "arhat"; a perfected saint who attains enlightenment as a result of his own efforts. This can be achieved through meditation and insight or through the study of Buddhist canon and scripture. The role of the layman and monk are clearly differentiated by Theravadins, who do not consider it possible to attain enlightenment while one is living the life of a layman. However, laypeople actively participate in the religion by providing material support to the monks (which produces positive karma), meditating, and following the basic ethical principles of the Buddha''s teachings.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Theravadins profoundly revere the historical Buddha as a perfected master but do not pay homage to the numerous buddhas and bodhisattvas that are worshiped in Mahayana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('en_US'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Theravada ("Way of the Elders") is one of the two main existing branches of Buddhism. It can be understood as the more conservative tradition of Buddhism, focusing primarily on meditation and study, and is likely closer to early Buddhism than the other existing Buddhist traditions. Theravada is the dominant form of Buddhism in Southeast Asia and Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Theravada doctrine is founded on the distinction between "samsara" (the cycle of rebirth) and "nirvana". The ultimate goal of Theravada is to escape samsara and enter nirvana. This is accomplished by achieving the Theravada ideal of the "arhat"; a perfected saint who attains enlightenment as a result of his own efforts. This can be achieved through meditation and insight or through the study of Buddhist canon and scripture. The role of the layman and monk are clearly differentiated by Theravadins, who do not consider it possible to attain enlightenment while one is living the life of a layman. However, laypeople actively participate in the religion by providing material support to the monks (which produces positive karma), meditating, and following the basic ethical principles of the Buddha''s teachings.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Theravadins profoundly revere the historical Buddha as a perfected master but do not pay homage to the numerous buddhas and bodhisattvas that are worshiped in Mahayana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('en_US'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Orthodox Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ORTHODOXY_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The goal of the estimated 300 million Eastern Orthodox Christians is to draw nearer to God throughout their lives through theosis, a spiritual pilgrimage to become more "Christ-like" (although it''s a little vague as to exactly what that entails). The earliest recorded use of the term "orthodox" in relation to Christianity was in the Codex Justinianus (c. AD 530) where it meant "conforming to the creeds of the early Church."');

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ORTHODOXY_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('The Eastern Orthodox Church traces its roots to the Great Schism. During the ninth and tenth centuries AD the Christian church under the Patriarch of Constantinople made significant conversions among the peoples of Eastern Europe, including Kievan Rus'' and the Balkans. Doctrinal issues such as the filioque split and the authority of the Pope over the Patriarch in matters religious, exacerbated by the political and economic rivalry of Rome and Constantinople, led to a falling out. The Eastern Orthodox Church holds that only it practiced the original and true faith as established by Christ and passed down by the Apostles.');

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ORTHODOXY_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Moreover, after the fall of Constantinople to the Ottomans in 1453, the Eastern Church became ever more isolated from Rome under the relatively tolerant rule of the Turks. Meanwhile, Eastern Orthodoxy flourished under the Russian tsars, with lots of converts among the Slavs. Although somewhat diminished by Communist rule and all that rampant secularism, Eastern Orthodoxy holds fast to the old Christian belief in sin, salvation, and the incarnation of the spirit.');


---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Protestantism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Lutheranism is a branch of Christianity that traces its interpretation of the religion to the teachings of Martin Luther and the sixteenth century movements that issued from his reforms. Along with Anglicanism, the Reformed and Presbyterian (Calvinist) churches, Methodism, and the Baptist churches, Lutheranism is one of the five major branches of Protestantism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Unlike the Roman Catholic Church, however, Lutheranism is not a single entity. It is organized in autonomous regional or national churches, such as the Church of Sweden or the Evangelical Lutheran Church of Mecklenburg. Globally, there are some 140 such Lutheran church bodies; 138 of these are loosely joined in the Lutheran World Federation, which was established in 1947. At the beginning of the twenty-first century, there were more than 65 million Lutherans worldwide, making Lutheranism the second largest Protestant denomination, after the Baptist churches.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Theologically, Lutheranism embraces the standard affirmations of classic Protestantism: the repudiation of papal and ecclesiastical authority in favor of the Bible (sola scriptura), the rejection of five of the traditional seven sacraments affirmed by the Catholic Church, and the insistence that human reconciliation with God is effected solely by divine grace (sola gratia) - which is appropriated solely by faith (sola fide) - in contrast to the notion of a convergence of human effort and divine grace in the process of salvation.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Lutheranism is a branch of Christianity that traces its interpretation of the religion to the teachings of Martin Luther and the sixteenth century movements that issued from his reforms. Along with Anglicanism, the Reformed and Presbyterian (Calvinist) churches, Methodism, and the Baptist churches, Lutheranism is one of the five major branches of Protestantism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Unlike the Roman Catholic Church, however, Lutheranism is not a single entity. It is organized in autonomous regional or national churches, such as the Church of Sweden or the Evangelical Lutheran Church of Mecklenburg. Globally, there are some 140 such Lutheran church bodies; 138 of these are loosely joined in the Lutheran World Federation, which was established in 1947. At the beginning of the twenty-first century, there were more than 65 million Lutherans worldwide, making Lutheranism the second largest Protestant denomination, after the Baptist churches.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('Theologically, Lutheranism embraces the standard affirmations of classic Protestantism: the repudiation of papal and ecclesiastical authority in favor of the Bible (sola scriptura), the rejection of five of the traditional seven sacraments affirmed by the Catholic Church, and the insistence that human reconciliation with God is effected solely by divine grace (sola gratia) - which is appropriated solely by faith (sola fide) - in contrast to the notion of a convergence of human effort and divine grace in the process of salvation.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Hinduism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Vaishnavite Hinduism or Vaishnavism is the largest community within the family of religions known as Hinduism and one of its major denominations along with Shaivism, Shaktism, and Smartism. The sectarian branch of Vaishnavism has its origins in the cult of Krishna, perhaps as early as the fourth century BC. By the second century AD, it had joined with the cult of Narayana to form what is now known as Vaishnavism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('As the name implies, Vaishnavas regard Vishnu as the supreme God above all other gods. Vishnu is often characterized as having six qualities: all power, all knowledge, supreme strength, supreme majesty, unlimited energy, and absolute self-sufficiency. Like other Hindu gods, Vishnu is also worshipped through ''avatars'' (incarnational forms). There are classically ten avatars, with Krishna and Rama being two of the most popular. Vaishnavas are often associated with ''bhakti'' (devotional) traditions.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The corpus of sacred Vaishnava texts is vast, and includes the Ramayana, the Mahabharata, the Bhagavata Purana, and many others. Likewise, Vaishnava philosophical schools cover a vast array of positions; from dualistic to non-dualistic and from highly personal understandings of the divine to more abstract conceptions.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Smartism is the youngest of the major Hindu denominations, properly tracing itself to Adi Shankara in the eighth century AD. Smriti texts, however, date much earlier; between ca. 200 BC - AD 100. Because the tradition reveres all the major Hindu gods, Smartism is not as overtly sectarian as either Vashnavism or Shaivism. Nonetheless, it is still an orthodox tradition which follows very strict rules and regulations.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Smartism is based on the recognition that Brahman is the highest principle in the universe and pervades all existence. Generally, Smartas worship Brahman in one of six forms: Ganesha, Shiva, Shakti, Vishnu, Surya, or Skanda. They follow a philosophical, meditative path emphasizing man''s oneness with God through understanding. Smartism can perhaps best be explained as a form of panentheistic monotheism or panentheistic monism. The choice of the nature of God is up to the individual worshiper, as different manifestations of God are held to be equivalent.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The majority of members of the Smarta community follow the Advaita Vedanta philosophy of Shankara. Shankara established the non-dualist interpretation of the Upanishads as the touchstone of a revived Smarta tradition and is traditionally regarded as the greatest teacher and reformer of the movement. While many Hindus may not strictly identify themselves as Smartas, by adhering to the Advaita Vedanta as a foundation for non-sectarianism they are indirect followers. Western perceptions of Hinduism are also largely dominated by the Smarta tradition.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Vaishnavite Hinduism or Vaishnavism is the largest community within the family of religions known as Hinduism and one of its major denominations along with Shaivism, Shaktism, and Smartism. The sectarian branch of Vaishnavism has its origins in the cult of Krishna, perhaps as early as the fourth century BC. By the second century AD, it had joined with the cult of Narayana to form what is now known as Vaishnavism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('As the name implies, Vaishnavas regard Vishnu as the supreme God above all other gods. Vishnu is often characterized as having six qualities: all power, all knowledge, supreme strength, supreme majesty, unlimited energy, and absolute self-sufficiency. Like other Hindu gods, Vishnu is also worshipped through ''avatars'' (incarnational forms). There are classically ten avatars, with Krishna and Rama being two of the most popular. Vaishnavas are often associated with ''bhakti'' (devotional) traditions.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The corpus of sacred Vaishnava texts is vast, and includes the Ramayana, the Mahabharata, the Bhagavata Purana, and many others. Likewise, Vaishnava philosophical schools cover a vast array of positions; from dualistic to non-dualistic and from highly personal understandings of the divine to more abstract conceptions.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Islam Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Sunni Islam is the largest branch of Islam, constituting around 85% of the world''s Muslim population, and sometimes considered the orthodox version of the religion. It is also the world''s largest religious denomination, followed by Catholicism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Its name refers to the "sunnah"; the sayings and actions of the prophet Muhammad that are recorded in hadith. The primary hadith, "Al-Kutub Al-Sittah" (Six Books), in conjunction with the Quran, form the basis of all jurisprudence methodologies within Sunni Islam. Laws are derived from the text of the Quran and the hadith, in addition to using methods of juristic reasoning and consensus. There are a multitude of scholarly opinions in each field; however, these can be summarized as either derived from the four major schools of thought or from an expert scholar who exercises independent derivation of Islamic law. Both are considered valid as differences of opinion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The differences between Sunni and Shia Islam arose from a disagreement over the choice of Muhammad''s successor and subsequently acquired broader political significance, as well as theological and juridical dimensions. Political tensions between Sunni and Shia Islam continued with varying intensity throughout Islamic history and they have been exacerbated in recent times by ethnic conflicts and the rise of Wahhabism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Sunni Islam is the largest branch of Islam, constituting around 85% of the world''s Muslim population, and sometimes considered the orthodox version of the religion. It is also the world''s largest religious denomination, followed by Catholicism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Its name refers to the "sunnah"; the sayings and actions of the prophet Muhammad that are recorded in hadith. The primary hadith, "Al-Kutub Al-Sittah" (Six Books), in conjunction with the Quran, form the basis of all jurisprudence methodologies within Sunni Islam. Laws are derived from the text of the Quran and the hadith, in addition to using methods of juristic reasoning and consensus. There are a multitude of scholarly opinions in each field; however, these can be summarized as either derived from the four major schools of thought or from an expert scholar who exercises independent derivation of Islamic law. Both are considered valid as differences of opinion.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('The differences between Sunni and Shia Islam arose from a disagreement over the choice of Muhammad''s successor and subsequently acquired broader political significance, as well as theological and juridical dimensions. Political tensions between Sunni and Shia Islam continued with varying intensity throughout Islamic history and they have been exacerbated in recent times by ethnic conflicts and the rise of Wahhabism.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Zoroastrianism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ZOROASTRIANISM_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Zoroastrianism, natively known as Mazdayasna, is an ancient faith based on the teachings of the prophet Zoroaster and believed to have been founded some 3500 years ago in the region around Persia. Once one of the largest religions in the world, Mazdayasna is only followed today by an estimated 200 thousand adherents, living primarily in India, Pakistan, and Iran. In general, it has been marginalized and overshadowed by Islam since the decline of the Sassanid Empire after the 7th Century AD.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ZOROASTRIANISM_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Mazdayasna is considered by some to be the oldest monotheistic religion in the world, although this is a point of contention among scholars who note its largely dualistic doctrine prior to the rise of Islam. Mazdayasna beliefs are centered on the creator god Ahura Mazda, who is the focal point of tradition and worship. It is said that Ahura Mazda revealed his wisdom to Zoroaster, who then wandered about to spread the teachings across the region. The sacred texts of Mazdayasna, known collectively as the Avesta, contain hymns said to have been written by Zoroaster himself.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ZOROASTRIANISM_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('As with most religions, Mazdayasna outlines the ways in which humans can supposedly live in harmony, in this case through "good thoughts and good actions." Mazdayans are often mischaracterized as fire worshippers, in part because of the prevalence of fire as a symbol in Mazdayan rituals. However, fire represents the light of Ahura Mazda and believers will pray in the direction of the light, rather than to the fire itself.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ZOROASTRIAN_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Shia Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('The Alawites are an ethnoreligious group living chiefly in Syria and generally considered ghulat by mainstream Muslims. The basic doctrine of the Alawite faith is the deification of Ali, who is understood as one member of a trinity roughly corresponding to the Christian Father, Son, and Holy Spirit. These aspects, or emanations, appear cyclically in human form throughout history.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('Alawites interpret the Pillars of Islam (the five duties required of every Muslim) as primarily symbolic; although they acknowledge their importance, they do not consider them mandatory. They celebrate an eclectic group of holidays - some Muslim, some Christian - and many Alawite beliefs are kept secret from outsiders and non-initiated Alawites. Additionally, the Quran is only one of their holy books, and their interpretation thereof has very little in common with traditional Islam. However, despite these differences in belief, many Alawites still self-identify as a minority moderate sect of Shia Islam, not much different from the Twelvers.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('In 1920, an Alawite State was briefly created by the French during their occupation of Syria. The division was intended to protect the Alawite people from more-powerful majorities, such as the Sunnis, but also encourage Alawites to join the French military forces in the region. However, in 1936, the Alawite State was incorporated into the Syrian Republic as a concession by the French to the semi-autonomous Syrian Nationalist Bloc.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Volta-Niger Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_IFA_CHAPTER_HISTORY_PARA_1'),  	('en_US'),			('Yoruba religion comprises the indigenous religion of the Yoruba people, centered in Southwestern Nigeria and the adjoining parts of Benin and Togo. Structurally, it bears similarities with the belief systems of the neighboring Fon, Edo, and Igbo peoples, most of which employ the intercession of intermediary spirits (known in Yoruba as "orisha"). Yoruba religious belief is understood as part of "itan"; the total complex of songs, histories, stories, and other cultural concepts which make up Yoruba society.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_IFA_CHAPTER_HISTORY_PARA_2'),  	('en_US'),			('The Yoruba hold that all human beings are expected to eventually become one in spirit with the divine creator and source of all energy, Olodumare. Daily life depends on proper alignment and knowledge of one''s "ori" (head). In spiritual matters, ori is understood as the inner portion of the soul that determines "ayanmo" (destiny) and connects us to the "ase" (life-force) which runs through all things, living and inanimate. The orisha represent manifestations of Olodumare and can mediate between humanity and the divine as well as influence aspects of the natural world.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_IFA_CHAPTER_HISTORY_PARA_3'),  	('en_US'),			('One notable orisha is Orunmila, the grand priest. He serves as both a civilizing figure and the transmitter of esoteric knowledge who revealed the divinity of the world through Ifá; a mystical subset of Yoruba practice and system of divination. This knowledge is also understood to be the source of traditional medicine and folk remedies.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ORISHA' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VOLTA_NIGER_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
-- German
----

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_R6_MITHRAISM'),  	('de_DE'),			('Unbesiegter Sonnengott')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('de_DE'),			('Staatsatheismus')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Staatsatheismus ist der von Atheismus in politische Systemen. Er kann sich auch auf gross angelegte Sakularisierungsversuche von Regierungen beziehen. Es handelt sich um eine Form des Verhaltnisses zwischen Religion und Staat, die in der Regel ideologisch mit Konfessionslosigkeit und der Forderung von Konfessionslosigkeit bis zu einem gewissen Grad verbunden ist. Staatsatheismus kann sich auf die Forderung eines Antiklerikalismus durch eine Regierung beziehen, der sich gegen die Macht und den Einfluss religioser Institutionen in allen Aspekten des offentlichen und politischen Lebens wendet, einschliesslich der Einbeziehung der Religion in das Alltagsleben der Burger. In einigen Fallen wurden religiose Symbole und offentliche Praktiken, die einst von der Religion durchgefuhrt wurden, durch sakularisierte Versionen ersetzt. Staatsatheismus kann auch in einer politisch neutralen Form existieren, in diesem Fall wird er als nicht-sakular betrachtet.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('de_DE'),			('Staatsatheismus')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Staatsatheismus ist der von Atheismus in politische Systemen. Er kann sich auch auf gross angelegte Sakularisierungsversuche von Regierungen beziehen. Es handelt sich um eine Form des Verhaltnisses zwischen Religion und Staat, die in der Regel ideologisch mit Konfessionslosigkeit und der Forderung von Konfessionslosigkeit bis zu einem gewissen Grad verbunden ist. Staatsatheismus kann sich auf die Forderung eines Antiklerikalismus durch eine Regierung beziehen, der sich gegen die Macht und den Einfluss religioser Institutionen in allen Aspekten des offentlichen und politischen Lebens wendet, einschliesslich der Einbeziehung der Religion in das Alltagsleben der Burger. In einigen Fallen wurden religiose Symbole und offentliche Praktiken, die einst von der Religion durchgefuhrt wurden, durch sakularisierte Versionen ersetzt. Staatsatheismus kann auch in einer politisch neutralen Form existieren, in diesem Fall wird er als nicht-sakular betrachtet.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

----
--Restorationism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Der Mormonismus ist die vorherrschende religiöse Tradition der Bewegung der Heiligen der Letzten Tage des restaurationistischen Christentums. Eine Konfession, die ihren Ursprung auf Joseph Smith, Jr. zurückführt, der diese Religion in den Vereinigten Staaten im Jahr 1830 gegründet hat. Der Begriff, der oft für Mitglieder dieser Kirchen verwendet wird, stammt aus dem Buch Mormon, das 1830 von Smith veröffentlicht wurde. Es ist der primaere religiöse Text der Bewegung. Eine andere wichtige Tradition innerhalb der Bewegung der Heiligen Letzten Tage ist die Gemeinschaft Christi.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Seit seinen Anfaengen hat sich der Glaube zur Kirche Christi erklaert, die mit ihrer ursprünglichen Autoritaet, Struktur und Macht wiederhergestellt wurde; dass die bestehenden Denominationen an falsche Lehren glaubten und nicht von Gott als seiner Kirche und seinem Königreich anerkannt wurden. Es zeichnet sich durch ein einzigartiges nichttrinitaristisches (dreifaltiges - Vater-Sohn-Heiliger Geist) Verstaendnis der Gottheit, Betonung des Familienlebens, Glaube an fortgesetzte Offenbarung, Wunsch nach Ordnung, Respekt für Autoritaet und Missionsarbeit aus. Mormonen halten sich ebenfalls an strenge Verbote für Alkohol, Tabak, Kaffee und Tee, fördern Bildung und propagieren eine starke Arbeitsmoral.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Die Kirche Jesu Christi der Heiligen der Letzten Tage, der wichtigste formale Teil, der den Mormonismus umfasst, hat ihren Hauptsitz in Salt Lake City, im US-Bundesstaat Utah. Zu Beginn des 21. Jahrhunderts zaehlte der Mormonismus mehr als 11 Millionen Mitglieder. Ungefaehr fünfzig Prozent der Mitglieder der Kirche leben in den Vereinigten Staaten, der Rest hauptsaechlich in Lateinamerika, Kanada, Europa, Afrika, den Philippinen und Teilen von Ozeanien.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Buddhism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Theravada ("Weg der Ältesten") ist einer der zwei wichtigsten bestehenden Zweige des Buddhismus. Es kann als die konservativere Tradition des Buddhismus verstanden werden, die sich hauptsaechlich auf Meditation und Studium konzentriert und dem frühen Buddhismus naeher steht als die anderen existierenden buddhistischen Traditionen. Theravada ist die dominierende Form des Buddhismus in Südostasien, vor allem Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Die Theravada-Lehre basiert auf der Unterscheidung zwischen "Samsara" (der Zyklus der Wiedergeburt) und "Nirwana" (Erleuchtung, Paradies). Das ultimative Ziel von Theravada ist es, Samsara zu entkommen und in das Nirvana einzutreten. Dies wird erreicht, indem das Theravada-Ideal des "Arhat" erreicht wird; ein vollkommener Heiliger, der durch seine eigenen Bemühungen Erleuchtung erlangt. Dies kann durch Meditation und Einsicht oder durch das Studium des buddhistischen Kanons und der Schrift erreicht werden. Die Rolle des Laien und Mönchs wird von den Theravadins deutlich unterschieden, die es nicht für möglich halten, Erleuchtung zu erlangen, waehrend man das Leben eines Laien lebt. Laien nehmen jedoch aktiv an der Religion teil, indem sie den Mönchen materielle Unterstützung gewaehren (was positives Karma produziert), meditieren und den grundlegenden ethischen Prinzipien der Lehren des Buddha folgen.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Theravadins verehren den historischen Buddha zutiefst als einen vollendeten Meister, aber sie erweisen den zahlreichen Buddhas und Bodhisattvas, die im Mahayana verehrt werden, keine Ehrerbietung.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('de_DE'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Theravada ("Weg der Ältesten") ist einer der zwei wichtigsten bestehenden Zweige des Buddhismus. Es kann als die konservativere Tradition des Buddhismus verstanden werden, die sich hauptsaechlich auf Meditation und Studium konzentriert und dem frühen Buddhismus naeher steht als die anderen existierenden buddhistischen Traditionen. Theravada ist die dominierende Form des Buddhismus in Südostasien, vor allem Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Die Theravada-Lehre basiert auf der Unterscheidung zwischen "Samsara" (der Zyklus der Wiedergeburt) und "Nirwana" (Erleuchtung, Paradies). Das ultimative Ziel von Theravada ist es, Samsara zu entkommen und in das Nirvana einzutreten. Dies wird erreicht, indem das Theravada-Ideal des "Arhat" erreicht wird; ein vollkommener Heiliger, der durch seine eigenen Bemühungen Erleuchtung erlangt. Dies kann durch Meditation und Einsicht oder durch das Studium des buddhistischen Kanons und der Schrift erreicht werden. Die Rolle des Laien und Mönchs wird von den Theravadins deutlich unterschieden, die es nicht für möglich halten, Erleuchtung zu erlangen, waehrend man das Leben eines Laien lebt. Laien nehmen jedoch aktiv an der Religion teil, indem sie den Mönchen materielle Unterstützung gewaehren (was positives Karma produziert), meditieren und den grundlegenden ethischen Prinzipien der Lehren des Buddha folgen.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Theravadins verehren den historischen Buddha zutiefst als einen vollendeten Meister, aber sie erweisen den zahlreichen Buddhas und Bodhisattvas, die im Mahayana verehrt werden, keine Ehrerbietung.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('de_DE'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Theravada ("Weg der Ältesten") ist einer der zwei wichtigsten bestehenden Zweige des Buddhismus. Es kann als die konservativere Tradition des Buddhismus verstanden werden, die sich hauptsaechlich auf Meditation und Studium konzentriert und dem frühen Buddhismus naeher steht als die anderen existierenden buddhistischen Traditionen. Theravada ist die dominierende Form des Buddhismus in Südostasien, vor allem Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Die Theravada-Lehre basiert auf der Unterscheidung zwischen "Samsara" (der Zyklus der Wiedergeburt) und "Nirwana" (Erleuchtung, Paradies). Das ultimative Ziel von Theravada ist es, Samsara zu entkommen und in das Nirvana einzutreten. Dies wird erreicht, indem das Theravada-Ideal des "Arhat" erreicht wird; ein vollkommener Heiliger, der durch seine eigenen Bemühungen Erleuchtung erlangt. Dies kann durch Meditation und Einsicht oder durch das Studium des buddhistischen Kanons und der Schrift erreicht werden. Die Rolle des Laien und Mönchs wird von den Theravadins deutlich unterschieden, die es nicht für möglich halten, Erleuchtung zu erlangen, waehrend man das Leben eines Laien lebt. Laien nehmen jedoch aktiv an der Religion teil, indem sie den Mönchen materielle Unterstützung gewaehren (was positives Karma produziert), meditieren und den grundlegenden ethischen Prinzipien der Lehren des Buddha folgen.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Theravadins verehren den historischen Buddha zutiefst als einen vollendeten Meister, aber sie erweisen den zahlreichen Buddhas und Bodhisattvas, die im Mahayana verehrt werden, keine Ehrerbietung.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('de_DE'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Protestantism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Das Luthertum ist ein Zweig des Christentums, der seine Interpretation der Religion auf die Lehren Martin Luthers und die Bewegungen des 16. Jahrhunderts zurückführt, die aus seinen Reformen hervorgingen. Zusammen mit dem Anglikanismus, den reformierten und presbyterianischen (calvinistischen) Kirchen, dem Methodismus und den Baptistenkirchen ist das Luthertum einer der fünf Hauptzweige des Protestantismus.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Im Gegensatz zur römisch-katholischen Kirche ist das Luthertum jedoch keine Einheit. Es ist in autonomen regionalen oder nationalen Kirchen wie der Schwedischen Kirche oder der Evangelisch-Lutherischen Kirche von Mecklenburg organisiert. Weltweit gibt es etwa 140 solcher lutherischen Kirchengremien; 138 davon sind lose im Lutherischen Weltbund vereint, der 1947 gegründet wurde. Zu Beginn des 21. Jahrhunderts gab es weltweit mehr als 65 Millionen Lutheraner, was das Luthertum nach den Baptistenkirchen zur zweitgrössten protestantischen Konfession machte.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Theologisch umfasst das Luthertum die Standardbeteuerungen des klassischen Protestantismus: die Ablehnung der paepstlichen und kirchlichen Autoritaet zugunsten der Bibel (sola scriptura), die Ablehnung von fünf der sieben traditionellen Sakramente, die von der katholischen Kirche bestaetigt wurden, und das Beharren auf menschlicher Versöhnung mit Gott wird einzig und allein durch die göttliche Gnade (sola gratia) bewirkt - die nur durch den Glauben (sola fide) angeeignet wird - im Gegensatz zu der Vorstellung einer Konvergenz von menschlicher Anstrengung und göttlicher Gnade im Heilsprozess.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Das Luthertum ist ein Zweig des Christentums, der seine Interpretation der Religion auf die Lehren Martin Luthers und die Bewegungen des 16. Jahrhunderts zurückführt, die aus seinen Reformen hervorgingen. Zusammen mit dem Anglikanismus, den reformierten und presbyterianischen (calvinistischen) Kirchen, dem Methodismus und den Baptistenkirchen ist das Luthertum einer der fünf Hauptzweige des Protestantismus.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Im Gegensatz zur römisch-katholischen Kirche ist das Luthertum jedoch keine Einheit. Es ist in autonomen regionalen oder nationalen Kirchen wie der Schwedischen Kirche oder der Evangelisch-Lutherischen Kirche von Mecklenburg organisiert. Weltweit gibt es etwa 140 solcher lutherischen Kirchengremien; 138 davon sind lose im Lutherischen Weltbund vereint, der 1947 gegründet wurde. Zu Beginn des 21. Jahrhunderts gab es weltweit mehr als 65 Millionen Lutheraner, was das Luthertum nach den Baptistenkirchen zur zweitgrössten protestantischen Konfession machte.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Theologisch umfasst das Luthertum die Standardbeteuerungen des klassischen Protestantismus: die Ablehnung der paepstlichen und kirchlichen Autoritaet zugunsten der Bibel (sola scriptura), die Ablehnung von fünf der sieben traditionellen Sakramente, die von der katholischen Kirche bestaetigt wurden, und das Beharren auf menschlicher Versöhnung mit Gott wird einzig und allein durch die göttliche Gnade (sola gratia) bewirkt - die nur durch den Glauben (sola fide) angeeignet wird - im Gegensatz zu der Vorstellung einer Konvergenz von menschlicher Anstrengung und göttlicher Gnade im Heilsprozess.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Hinduism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Vaishnavitischer Hinduismus oder Vaishnavismus ist als die groesste Gemeinschaft innerhalb der Familie der Religionen bekannt als Hinduismus und eine der wichtigsten Konfessionen zusammen mit dem Shivaismus, Shakti und Smartismus. Der sektiererische Zweig des Vaishnavismus hat seinen Ursprung im Krishna-Kult, vielleicht schon im vierten Jahrhundert vor Christus. Im zweiten Jahrhundert n. Chr. Hatte es sich mit dem Narayana-Kult zu dem verbunden, was heute als Vaishnavismus bekannt ist.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Wie der Name schon sagt, betrachten die Vaishnavas Vishnu als den höchsten Gott ueber allen anderen Goettern. Vishnu wird oft mit sechs Eigenschaften charakterisiert: alle Macht, alles Wissen, hoechste Staerke, hoechste Majestaet, unbegrenzte Energie und absolute Selbstgenuegsamkeit. Wie andere hinduistische Goetter wird Vishnu auch durch ''Avatare'' (Inkarnationsformen) verehrt. Es gibt klassisch zehn Avatare, wobei Krishna und Rama zwei der beliebtesten sind. Vaishnavas werden oft mit ''Bhakti'' (hingebungsvollen Traditionen) in Verbindung gebracht.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Der Fundus der heiligen Vaishnava-Texte ist riesig und umfasst das Ramayana, das Mahabharata, das Bhagavata Purana und viele andere. Ebenso decken Vaishnava-philosophische Schulen eine Vielzahl von Positionen ab; von dualistisch zu nicht-dualistisch und von sehr persönlichem Verstaendnis der goettlichen zu abstrakteren Konzeptionen.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Smartismus ist die jüngste der grossen hinduistischen Denominationen, die Adi Shankara im achten Jahrhundert n. Chr. nachempfunden sind. Smriti-Texte stammen jedoch viel früher; zwischen ca. 200 v. Chr. - 100 n. Chr. Da die Tradition alle grossen Hindugötter verehrt, ist der Smartismus nicht so offen sektiererisch wie entweder der Washnavismus oder der Shivaismus. Dennoch ist es immer noch eine orthodoxe Tradition, die sehr strengen Regeln und Vorschriften folgt.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Smartismus basiert auf der Erkenntnis, dass Brahman das höchste Prinzip im Universum ist und alle Existenzen durchdringt. Im Allgemeinen verehren Smartas Brahman in einer von sechs Formen: Ganesha, Shiva, Shakti, Vishnu, Surya oder Skanda. Sie folgen einem philosophischen, meditativen Weg, der die Einheit des Menschen mit Gott durch Verstaendnis betont. Smartismus kann vielleicht am besten als eine Form von panentheistischem Monotheismus oder pantheistischem Monismus erklaert werden. Die Wahl des Wesens als Gott, ist die Sache des einzelnen Verehrers, da verschiedene Manifestationen Gottes als gleichwertig gelten.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Die Mehrheit der Mitglieder der Smarta Gemeinschaft folgt der Advaita Vedanta Philosophie von Shankara. Shankara etablierte die nicht-dualistische Interpretation der Upanishaden als Prüfstein einer wiederbelebten Smarta-Tradition und gilt traditionell als der grösste Lehrer und Reformer der Bewegung. Waehrend viele Hindus sich nicht streng als Smartas identifizieren können, indem sie sich dem Advaita Vedanta als Grundlage für Nicht-Sektierertum anhaengen, sind sie indirekte Anhaenger. Die westliche Auffassung des Hinduismus wird ebenfalls weitgehend von der Smarta-Tradition beherrscht.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Vaishnavitischer Hinduismus oder Vaishnavismus ist als die groesste Gemeinschaft innerhalb der Familie der Religionen bekannt als Hinduismus und eine der wichtigsten Konfessionen zusammen mit dem Shivaismus, Shakti und Smartismus. Der sektiererische Zweig des Vaishnavismus hat seinen Ursprung im Krishna-Kult, vielleicht schon im vierten Jahrhundert vor Christus. Im zweiten Jahrhundert n. Chr. Hatte es sich mit dem Narayana-Kult zu dem verbunden, was heute als Vaishnavismus bekannt ist.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Wie der Name schon sagt, betrachten die Vaishnavas Vishnu als den höchsten Gott ueber allen anderen Goettern. Vishnu wird oft mit sechs Eigenschaften charakterisiert: alle Macht, alles Wissen, hoechste Staerke, hoechste Majestaet, unbegrenzte Energie und absolute Selbstgenuegsamkeit. Wie andere hinduistische Goetter wird Vishnu auch durch ''Avatare'' (Inkarnationsformen) verehrt. Es gibt klassisch zehn Avatare, wobei Krishna und Rama zwei der beliebtesten sind. Vaishnavas werden oft mit ''Bhakti'' (hingebungsvollen Traditionen) in Verbindung gebracht.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Der Fundus der heiligen Vaishnava-Texte ist riesig und umfasst das Ramayana, das Mahabharata, das Bhagavata Purana und viele andere. Ebenso decken Vaishnava-philosophische Schulen eine Vielzahl von Positionen ab; von dualistisch zu nicht-dualistisch und von sehr persönlichem Verstaendnis der goettlichen zu abstrakteren Konzeptionen.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Islam Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Der sunnitische Islam ist der grösste Teil des Islam und macht etwa 85 Prozent der muslimischen Weltbevölkerung aus. Manchmal wird er als orthodoxe Version der Religion betrachtet. Es ist auch die grösste religiöse Konfession der Welt, gefolgt vom Katholizismus.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Sein Name bezieht sich auf die "Sunnah"; die Aussprüche und Handlungen des Propheten Mohammed, die in Hadith aufgezeichnet sind. Der primaere Hadith, "Al-Kutub Al-Sittah" (Sechs Bücher) bildet in Verbindung mit dem Koran die Grundlage aller Rechtsmethoden innerhalb des sunnitischen Islams. Gesetze werden aus dem Text des Koran und des Hadith abgeleitet, zusaetzlich zu den Methoden des juristischen Denkens und des Konsenses. Es gibt eine Vielzahl von wissenschaftlichen Meinungen in jedem Bereich; diese können jedoch entweder von den vier grossen Denkschulen oder von einem Experten, der die unabhaengige Herleitung des islamischen Rechts ausübt, zusammengefasst werden. Beide gelten als Meinungsverschiedenheiten.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Die Differenzen zwischen dem sunnitischen und dem schiitischen Islam entstanden aus einer Meinungsverschiedenheit über die Wahl des Nachfolgers Mohammeds und erlangten spaeter eine breitere politische Bedeutung sowie eine theologische und juristische Dimension. Die politischen Spannungen zwischen dem sunnitischen und dem schiitischen Islam setzten sich in der islamischen Geschichte mit unterschiedlicher Intensitaet fort und wurden in letzter Zeit durch ethnische Konflikte und den Aufstieg des Wahhabismus verschaerft.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Der sunnitische Islam ist der grösste Teil des Islam und macht etwa 85 Prozent der muslimischen Weltbevölkerung aus. Manchmal wird er als orthodoxe Version der Religion betrachtet. Es ist auch die grösste religiöse Konfession der Welt, gefolgt vom Katholizismus.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Sein Name bezieht sich auf die "Sunnah"; die Aussprüche und Handlungen des Propheten Mohammed, die in Hadith aufgezeichnet sind. Der primaere Hadith, "Al-Kutub Al-Sittah" (Sechs Bücher) bildet in Verbindung mit dem Koran die Grundlage aller Rechtsmethoden innerhalb des sunnitischen Islams. Gesetze werden aus dem Text des Koran und des Hadith abgeleitet, zusaetzlich zu den Methoden des juristischen Denkens und des Konsenses. Es gibt eine Vielzahl von wissenschaftlichen Meinungen in jedem Bereich; diese können jedoch entweder von den vier grossen Denkschulen oder von einem Experten, der die unabhaengige Herleitung des islamischen Rechts ausübt, zusammengefasst werden. Beide gelten als Meinungsverschiedenheiten.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Die Differenzen zwischen dem sunnitischen und dem schiitischen Islam entstanden aus einer Meinungsverschiedenheit über die Wahl des Nachfolgers Mohammeds und erlangten spaeter eine breitere politische Bedeutung sowie eine theologische und juristische Dimension. Die politischen Spannungen zwischen dem sunnitischen und dem schiitischen Islam setzten sich in der islamischen Geschichte mit unterschiedlicher Intensitaet fort und wurden in letzter Zeit durch ethnische Konflikte und den Aufstieg des Wahhabismus verschaerft.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Shia Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_1'),  	('de_DE'),			('Die Alawiten sind eine synkretistische Minderheit des schiitischen Islams, die hauptsaechlich in Syrien lebt und von den Mainstream-Schiiten allgemein als Ghulat betrachtet werden.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_2'),  	('de_DE'),			('Die grundlegende Lehre des alawitischen Glaubens ist die Vergöttlichung von Ali. Er ist ein Mitglied einer Dreieinigkeit, die ungefaehr dem christlichen Vater, Sohn und Heiligen Geist entspricht. Diese Aspekte oder Emanationen erscheinen im Laufe der Geschichte zyklisch in menschlicher Form. Alawiten interpretieren die Saeulen des Islam (die fünf Pflichten eines jeden Muslim) als Symbole und üben die islamischen Pflichten daher nicht aus. Sie feiern unterschiedliche Feiertage. Einige islamische, einige christliche und viele alawitische Praktiken sind geheim. Sie betrachten sich als gemaessigte Schiiten und unterscheiden sich nicht wesentlich von den Zwölferschiiten.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_3'),  	('de_DE'),			('Alawiten identifizieren sich als eigenstaendige ethnoreligiöse Gruppe. Der Koran ist nur eines ihrer heiligen Bücher und Texte. Ihre Interpretation hat mit der muslimischen Interpretation sehr wenig gemeinsam, jedoch durchaus mit den frühen muslimischen Batiniyya-Sekten.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
-- Portuguese
----

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_R6_MITHRAISM'),  	('pt_BR'),			('Sol Invicto')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

----
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('pt_BR'),			('Ateismo de Estado')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Ateismo de Estado es un termino utilizado para referirse a un gobierno que es antirreligioso, antiteista o promueve el ateismo. En contraste, los estados laicos son oficialmente neutrales en materia de religion, sin apoyar la religion o irreligion. Ateismo de Estado tambien puede referirse al anticlericalismo de un gobierno que se opone al poder institucional religioso y su influencia en todos los aspectos de la vida pública y politica.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('pt_BR'),			('Ateismo de Estado')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Ateismo de Estado es un termino utilizado para referirse a un gobierno que es antirreligioso, antiteista o promueve el ateismo. En contraste, los estados laicos son oficialmente neutrales en materia de religion, sin apoyar la religion o irreligion. Ateismo de Estado tambien puede referirse al anticlericalismo de un gobierno que se opone al poder institucional religioso y su influencia en todos los aspectos de la vida pública y politica.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

----
--Buddhism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Teravada ("Caminho dos Anciões") é um dos dois principais ramos existentes do budismo. Pode ser entendida como a tradição mais conservadora do budismo, focalizando principalmente a meditação e o estudo, e provavelmente está mais próxima do budismo inicial do que as outras tradições budistas existentes. Teravada é a forma dominante de budismo no sudeste da Ásia e no Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('A doutrina Teravada baseia-se na distinção entre "samsara" (o ciclo de renascimento) e "nirvana". O objetivo final do Teravada é escapar do samsara e entrar no nirvana. Isto é conseguido alcançando o ideal Teravada do "arhat"; um santo aperfeiçoado que alcança a iluminação como resultado de seus próprios esforços. Isso pode ser conseguido através da meditação e do discernimento ou através do estudo do cânon budista e das escrituras. O papel do leigo e do monge é claramente diferenciado por teravadas, que não considera possível atingir a iluminação enquanto se vive a vida de um leigo. No entanto, os leigos participam ativamente da religião fornecendo apoio material aos monges (o que produz carma positivo), meditando e seguindo os princípios éticos básicos dos ensinamentos do Buda.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Os teravadas profundamente reverenciam o Buda histórico como um mestre aperfeiçoado, mas não prestam homenagem aos numerosos budas e bodhisattvas que são adorados no ramo Maaiana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('pt_BR'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Teravada ("Caminho dos Anciões") é um dos dois principais ramos existentes do budismo. Pode ser entendida como a tradição mais conservadora do budismo, focalizando principalmente a meditação e o estudo, e provavelmente está mais próxima do budismo inicial do que as outras tradições budistas existentes. Teravada é a forma dominante de budismo no sudeste da Ásia e no Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('A doutrina Teravada baseia-se na distinção entre "samsara" (o ciclo de renascimento) e "nirvana". O objetivo final do Teravada é escapar do samsara e entrar no nirvana. Isto é conseguido alcançando o ideal Teravada do "arhat"; um santo aperfeiçoado que alcança a iluminação como resultado de seus próprios esforços. Isso pode ser conseguido através da meditação e do discernimento ou através do estudo do cânon budista e das escrituras. O papel do leigo e do monge é claramente diferenciado por teravadas, que não considera possível atingir a iluminação enquanto se vive a vida de um leigo. No entanto, os leigos participam ativamente da religião fornecendo apoio material aos monges (o que produz carma positivo), meditando e seguindo os princípios éticos básicos dos ensinamentos do Buda.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Os teravadas profundamente reverenciam o Buda histórico como um mestre aperfeiçoado, mas não prestam homenagem aos numerosos budas e bodhisattvas que são adorados no ramo Maaiana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('pt_BR'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Teravada ("Caminho dos Anciões") é um dos dois principais ramos existentes do budismo. Pode ser entendida como a tradição mais conservadora do budismo, focalizando principalmente a meditação e o estudo, e provavelmente está mais próxima do budismo inicial do que as outras tradições budistas existentes. Teravada é a forma dominante de budismo no sudeste da Ásia e no Sri Lanka.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('A doutrina Teravada baseia-se na distinção entre "samsara" (o ciclo de renascimento) e "nirvana". O objetivo final do Teravada é escapar do samsara e entrar no nirvana. Isto é conseguido alcançando o ideal Teravada do "arhat"; um santo aperfeiçoado que alcança a iluminação como resultado de seus próprios esforços. Isso pode ser conseguido através da meditação e do discernimento ou através do estudo do cânon budista e das escrituras. O papel do leigo e do monge é claramente diferenciado por teravadas, que não considera possível atingir a iluminação enquanto se vive a vida de um leigo. No entanto, os leigos participam ativamente da religião fornecendo apoio material aos monges (o que produz carma positivo), meditando e seguindo os princípios éticos básicos dos ensinamentos do Buda.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Os teravadas profundamente reverenciam o Buda histórico como um mestre aperfeiçoado, mas não prestam homenagem aos numerosos budas e bodhisattvas que são adorados no ramo Maaiana.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('pt_BR'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Protestantism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('O luteranismo é um ramo do cristianismo que traça sua interpretação da religião para os ensinamentos de Martinho Lutero e os movimentos do século XVI que surgiram de suas reformas. Juntamente com o anglicanismo, as igrejas reformadas e presbiterianas (calvinistas), o metodismo e as igrejas batistas, o luteranismo é um dos cinco principais ramos do protestantismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Ao contrário da Igreja Católica Romana, no entanto, o luteranismo não é uma entidade única. É organizado em igrejas regionais ou nacionais autônomas, como a Igreja da Suécia ou a Igreja Evangélica Luterana de Mecklenburg. Globalmente, existem cerca de 140 corpos de igrejas luteranas; 138 destes se juntam vagamente na Federação Luterana Mundial, que foi estabelecida em 1947. No início do século XXI, havia mais de 65 milhões de luteranos em todo o mundo, tornando o luteranismo a segunda maior denominação protestante, depois das igrejas batistas.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Teologicamente, o luteranismo abraça as afirmações padrão do protestantismo clássico: o repúdio da autoridade papal e eclesiástica em favor da Bíblia (sola scriptura), a rejeição de cinco dos sete sacramentos tradicionais afirmados pela Igreja Católica, e a insistência de que a reconciliação humana com Deus é efetuado somente pela graça divina (sola gratia) - que é apropriada somente pela fé (sola fide), em contraste com a noção de uma convergência do esforço humano e da graça divina no processo de salvação.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('O luteranismo é um ramo do cristianismo que traça sua interpretação da religião para os ensinamentos de Martinho Lutero e os movimentos do século XVI que surgiram de suas reformas. Juntamente com o anglicanismo, as igrejas reformadas e presbiterianas (calvinistas), o metodismo e as igrejas batistas, o luteranismo é um dos cinco principais ramos do protestantismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Ao contrário da Igreja Católica Romana, no entanto, o luteranismo não é uma entidade única. É organizado em igrejas regionais ou nacionais autônomas, como a Igreja da Suécia ou a Igreja Evangélica Luterana de Mecklenburg. Globalmente, existem cerca de 140 corpos de igrejas luteranas; 138 destes se juntam vagamente na Federação Luterana Mundial, que foi estabelecida em 1947. No início do século XXI, havia mais de 65 milhões de luteranos em todo o mundo, tornando o luteranismo a segunda maior denominação protestante, depois das igrejas batistas.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Teologicamente, o luteranismo abraça as afirmações padrão do protestantismo clássico: o repúdio da autoridade papal e eclesiástica em favor da Bíblia (sola scriptura), a rejeição de cinco dos sete sacramentos tradicionais afirmados pela Igreja Católica, e a insistência de que a reconciliação humana com Deus é efetuado somente pela graça divina (sola gratia) - que é apropriada somente pela fé (sola fide), em contraste com a noção de uma convergência do esforço humano e da graça divina no processo de salvação.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception Start
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Hinduism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Vishnevismo ou vixnuismo e a maior comunidade dentro da familia das religioes conhecida como hinduismo e uma de suas principais denominacoes, juntamente com o xivaismo, shaktismo e smartismo. O ramo sectario do vixnuismo tem suas origens no culto de Krishna, talvez ja no seculo IV a.C. No segundo seculo d.C., uniu-se ao culto de Narayana para formar o que hoje e conhecido como vixnuismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Como o nome indica, os vishnevitas consideram Vixnu (ou Vishnu) como o Deus supremo acima de todos os outros deuses. Vixnu e frequentemente caracterizado como tendo seis qualidades: todo poder, todo conhecimento, suprema forca, suprema majestade, energia ilimitada e absoluta auto-suficiencia. Como outros deuses hindus, Vixnu tambem e adorado atraves de ''avatares'' (formas de encarnacao). Ha classicamente dez avatares, com Krishna e Rama sendo dois dos mais populares. Vishnevitas sao frequentemente associados com tradicoes devocionais de ''bhakti''.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('O corpus dos textos sagrados vishnevitas e vasto e inclui o Ramayana, o Mahabharata, o Bhagavata Purana e muitos outros. Da mesma forma, as escolas filosoficas vaishnavas cobrem uma vasta gama de posicoes; de dualista para nao-dualista e de entendimentos altamente pessoais do divino para concepcoes mais abstratas.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Smartismo é a mais jovem das principais denominações hindus, apropriadamente traçando-se para Adi Shankara no oitavo século d.C. Os textos da Smriti, no entanto, datam muito antes; entre 200 a.C. a 100 d.C. Porque a tradição reverencia todos os principais deuses hindus, o Smartismo não é tão abertamente sectário como o Vixnuísmo ou o Xivaísmo. No entanto, ainda é uma tradição ortodoxa que segue regras e regulamentos muito rígidos.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Smartismo baseia-se no reconhecimento de que Brama é o princípio mais alto do universo e permeia toda a existência. Geralmente, os Smartas adoram Brahman em uma das seis formas: Ganexa, Xiva, Shákti, Vixnu, Surya ou Kartiqueia. Eles seguem um caminho filosófico, meditativo, enfatizando a unidade do homem com Deus através da compreensão. O smartismo talvez possa ser melhor explicado como uma forma de monoteísmo panenteísta ou monismo panenteísta. A escolha da natureza de Deus depende do adorador individual, pois diferentes manifestações de Deus são consideradas equivalentes.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('A maioria dos membros da comunidade Smarta segue a filosofia Advaita Vedanta de Shankara. Shankara estabeleceu a interpretação não-dualista dos Upanixades como a pedra de toque de uma tradição Smarta revivida e é tradicionalmente considerada como o maior professor e reformador do movimento. Enquanto muitos hindus podem não se identificar estritamente como Smartas, aderindo ao Vedanta Advaita como base para o não-sectarismo, eles são seguidores indiretos. As percepções ocidentais do hinduísmo também são amplamente dominadas pela tradição Smarta.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('Vishnevismo ou vixnuismo e a maior comunidade dentro da familia das religioes conhecida como hinduismo e uma de suas principais denominacoes, juntamente com o xivaismo, shaktismo e smartismo. O ramo sectario do vixnuismo tem suas origens no culto de Krishna, talvez ja no seculo IV a.C. No segundo seculo d.C., uniu-se ao culto de Narayana para formar o que hoje e conhecido como vixnuismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Como o nome indica, os vishnevitas consideram Vixnu (ou Vishnu) como o Deus supremo acima de todos os outros deuses. Vixnu e frequentemente caracterizado como tendo seis qualidades: todo poder, todo conhecimento, suprema forca, suprema majestade, energia ilimitada e absoluta auto-suficiencia. Como outros deuses hindus, Vixnu tambem e adorado atraves de ''avatares'' (formas de encarnacao). Ha classicamente dez avatares, com Krishna e Rama sendo dois dos mais populares. Vishnevitas sao frequentemente associados com tradicoes devocionais de ''bhakti''.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('O corpus dos textos sagrados vishnevitas e vasto e inclui o Ramayana, o Mahabharata, o Bhagavata Purana e muitos outros. Da mesma forma, as escolas filosoficas vaishnavas cobrem uma vasta gama de posicoes; de dualista para nao-dualista e de entendimentos altamente pessoais do divino para concepcoes mais abstratas.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Islam Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('O islamismo sunita é o maior ramo do Islã, constituindo cerca de 85% da população muçulmana do mundo, e às vezes considerado a versão ortodoxa da religião. É também a maior denominação religiosa do mundo, seguida pelo catolicismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Seu nome se refere à "sunnah"; os ditos e ações do profeta Maomé que estão registrados no Hádice. O Hádice primário, "Al-Kutub Al-Sittah" (Seis Livros), em conjunto com o Alcorão, formam a base de todas as metodologias de jurisprudência dentro do Islã sunita. As leis são derivadas do texto do Alcorão e do Hádice, além de usar métodos de raciocínio jurídico e consenso. Há uma multiplicidade de opiniões acadêmicas em cada campo; no entanto, estes podem ser resumidos como derivados das quatro principais escolas de pensamento ou de um estudioso especialista que exerce a derivação independente da lei islâmica. Ambos são considerados válidos como diferenças de opinião.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('As diferenças entre o sunita eo islamismo xiita surgiram de um desacordo sobre a escolha do sucessor de Maomé e, posteriormente, adquiriram um significado político mais amplo, bem como dimensões teológicas e jurídicas. As tensões políticas entre o sunita e o islamismo xiita continuaram com intensidade variada ao longo da história islâmica e foram exacerbadas nos últimos tempos por conflitos étnicos e pela ascensão do wahhabismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('O islamismo sunita é o maior ramo do Islã, constituindo cerca de 85% da população muçulmana do mundo, e às vezes considerado a versão ortodoxa da religião. É também a maior denominação religiosa do mundo, seguida pelo catolicismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('Seu nome se refere à "sunnah"; os ditos e ações do profeta Maomé que estão registrados no Hádice. O Hádice primário, "Al-Kutub Al-Sittah" (Seis Livros), em conjunto com o Alcorão, formam a base de todas as metodologias de jurisprudência dentro do Islã sunita. As leis são derivadas do texto do Alcorão e do Hádice, além de usar métodos de raciocínio jurídico e consenso. Há uma multiplicidade de opiniões acadêmicas em cada campo; no entanto, estes podem ser resumidos como derivados das quatro principais escolas de pensamento ou de um estudioso especialista que exerce a derivação independente da lei islâmica. Ambos são considerados válidos como diferenças de opinião.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('As diferenças entre o sunita eo islamismo xiita surgiram de um desacordo sobre a escolha do sucessor de Maomé e, posteriormente, adquiriram um significado político mais amplo, bem como dimensões teológicas e jurídicas. As tensões políticas entre o sunita e o islamismo xiita continuaram com intensidade variada ao longo da história islâmica e foram exacerbadas nos últimos tempos por conflitos étnicos e pela ascensão do wahhabismo.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Shia Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_1'),  	('pt_BR'),			('The Alawites are a syncretic minority sect of Shia Islam living chiefly in Syria and generally considered ghulat by mainstream Shias.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_2'),  	('pt_BR'),			('The basic doctrine of Alawite faith is the deification of Ali. He is one member of a trinity roughly corresponding to the Christian Father, Son, and Holy Spirit. These aspects, or emanations, appear cyclically in human form throughout history. Alawites interpret the Pillars of Islam (the five duties required of every Muslim) as symbols and thus do not practice the Islamic duties. They celebrate an eclectic group of holidays, some Islamic, some Christian, and many Alawite practices are secret. They consider themselves to be moderate Shi''ite, not much different from the Twelvers.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_3'),  	('pt_BR'),			('Alawites identify as a separate ethnoreligious group. The Quran is only one of their holy books and texts; however, their interpretation thereof has in more in common with early Batiniyya Muslim sects than the modern mainstream Islamic interpretation.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
-- Russian
----

---------------------------------------------------------------------------
---------------------------------------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('ru_RU'),			('????????????? ???????????')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_G8'),  	('ru_RU'),			('????????????? ???????????')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('?????????????? ???????????? — ???????????, ? ??????? ????????????? ?????????? ??????? ?? ??????????????? ??????? ??????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_QIN_LEGALISM' AND Value = 2);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_G8_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('?????????????? ???????????? — ???????????, ? ??????? ????????????? ?????????? ??????? ?? ??????????????? ??????? ??????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_KUBLAI_CHINA_TENGRIISM' AND Value = 3);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_RELIGION_R6_MITHRAISM'),  	('ru_RU'),			('??????????? ??????')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ITALY_MODERN' AND Value = 2);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Restorationism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('?????????? — ?????????? ???????? ??????????? ????????, ????????? ? ?????????? ??????????????? ? ???????? ?????? ?????? ?????? ?????? ????????? ???? (??????, ???? ??? ???), ????????? ? ?????? ???????? XIX ???? ???????? ?????? ? ???.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('? ???? ??? ????????? ? ??????? ?????? ?????? ?????? ????????? ???? — ?? ?????? ????????????? ???????, ?????? ??? ????? ?????? ?????????? ?? ??????????????? ???????? ?????? ???????????? ??????? ? ????? ??????, ??????????????? ???? ??????????? ????????? ??????. ????? ????????? ???????? ???????? ?????????? ?????? ? ?????????????????? ??????? ?????? ?????? ?????? ????????? ????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_C4_RESTORATIONISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('??????????? ?????, ????????? ???? ? ????? ????????, ???????? ???? «??????? ????????? ????»')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONISM' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_RESTORATIONIST_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Buddhism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('????????? ("?????? ???????") - ????????? ????????????? ????? ????????. ??? ????? ?????????? ?????????????, ? ? ????? ????? ? ??????? ????????, ??? ?????? ???????????? ?????????? ????????. ?????? ???? ?????? ??? ????? ???????? ???????????? ??????????? ????????? ? ???-????? ? ??????? ????? ???-????????? ???? (????????, ????, ??????, ???????).')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('?????? ????????? ???????? ?? ????????????? ??????? (????? ????????????) ? ???????. ????????? ????????? ???????? ??????? ? ??????? ???????, ??? ?????????? ????????? ????? ?????????? ??????, ??????????? ????????, ??????? ??????????? ????????????? ????????? ??????????? ??????? ????????. ????? ????????? ????? ???? ?????????? ????? ????????? ? ???????? ??? ????? ???????? ??????????? ?????? ? ???????. ???? ???????? ? ?????? ????? ????????????, ??? ?? ??????? ????????? ??????? ????????????, ????? ???? ?????? ?????????. ??? ???? ?????? ??????? ????????? ? ???????, ???????? ???????????? ????????? ??????? (??????? ?????????? ????????????? ?????), ?????????? ? ??????? ???????? ????????? ????????? ?????? ?????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('????????????? ????????? ??????? ???????? ????????????? ????? ??? ???????????? ???????, ?? ?? ?????? ???? ???????? ?????????????? ?????? ? ????????????, ??????? ??????????? ? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('ru_RU'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_BUDDHIST_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('????????? ("?????? ???????") - ????????? ????????????? ????? ????????. ??? ????? ?????????? ?????????????, ? ? ????? ????? ? ??????? ????????, ??? ?????? ???????????? ?????????? ????????. ?????? ???? ?????? ??? ????? ???????? ???????????? ??????????? ????????? ? ???-????? ? ??????? ????? ???-????????? ???? (????????, ????, ??????, ???????).')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('?????? ????????? ???????? ?? ????????????? ??????? (????? ????????????) ? ???????. ????????? ????????? ???????? ??????? ? ??????? ???????, ??? ?????????? ????????? ????? ?????????? ??????, ??????????? ????????, ??????? ??????????? ????????????? ????????? ??????????? ??????? ????????. ????? ????????? ????? ???? ?????????? ????? ????????? ? ???????? ??? ????? ???????? ??????????? ?????? ? ???????. ???? ???????? ? ?????? ????? ????????????, ??? ?? ??????? ????????? ??????? ????????????, ????? ???? ?????? ?????????. ??? ???? ?????? ??????? ????????? ? ???????, ???????? ???????????? ????????? ??????? (??????? ?????????? ????????????? ?????), ?????????? ? ??????? ???????? ????????? ????????? ?????? ?????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('????????????? ????????? ??????? ???????? ????????????? ????? ??? ???????????? ???????, ?? ?? ?????? ???? ???????? ?????????????? ?????? ? ????????????, ??????? ??????????? ? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('ru_RU'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_MAHAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('????????? ("?????? ???????") - ????????? ????????????? ????? ????????. ??? ????? ?????????? ?????????????, ? ? ????? ????? ? ??????? ????????, ??? ?????? ???????????? ?????????? ????????. ?????? ???? ?????? ??? ????? ???????? ???????????? ??????????? ????????? ? ???-????? ? ??????? ????? ???-????????? ???? (????????, ????, ??????, ???????).')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('?????? ????????? ???????? ?? ????????????? ??????? (????? ????????????) ? ???????. ????????? ????????? ???????? ??????? ? ??????? ???????, ??? ?????????? ????????? ????? ?????????? ??????, ??????????? ????????, ??????? ??????????? ????????????? ????????? ??????????? ??????? ????????. ????? ????????? ????? ???? ?????????? ????? ????????? ? ???????? ??? ????? ???????? ??????????? ?????? ? ???????. ???? ???????? ? ?????? ????? ????????????, ??? ?? ??????? ????????? ??????? ????????????, ????? ???? ?????? ?????????. ??? ???? ?????? ??????? ????????? ? ???????, ???????? ???????????? ????????? ??????? (??????? ?????????? ????????????? ?????), ?????????? ? ??????? ???????? ????????? ????????? ?????? ?????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('????????????? ????????? ??????? ???????? ????????????? ????? ??? ???????????? ???????, ?? ?? ?????? ???? ???????? ?????????????? ?????? ? ????????????, ??????? ??????????? ? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_BUDDHISM_CHAPTER_HISTORY_PARA_4'),  	('ru_RU'),			('')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_VAJRAYANA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Protestantism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('??????????? ??? ????? ????????????, ??????? ????? ???? ????????? ???????????? ??????? ?? ?????? ??????? ?????? ? ???????? XVI ????, ???????????? ????? ??? ??????. ??????????? ???? ?? ???????? ?????? ?????????????? ?????? ? ?????????????, ???????????????, ????????????, ?????????? ? ?????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('? ??????? ?? ??????-???????????? ??????, ??????, ??????????? ??? ?? ?????? ?????. ??? ???????????? ??????????? ?????????? ???????????? ? ???????????? ???????, ????? ??? ??????? ?????? ??? ?????????????-??????????? ??????? ???????????. ????? ? ???? ????????????? ????? 140 ????? ??????? ??????????? ??????; 138 ?? ??? ?????????????? ? ????????? ??????????? ?????????, ??????? ???? ???????? ? 1947 ????. ?? ?????? XXI ???? ?? ????? ???? ????????????? ????? 65 ????????? ???????, ??? ?????? ??????????? ?????? ?? ???????? ?????? ?????????????? ????? ??????????? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('? ???????????? ????? ??????, ??????????? ?????????? ??????????? ??????????? ????????????? ??????????????: ????????? ??????? ? ????????? ?????? ? ?????? ??????, ????? ?? ???? ?? ???? ???????????? ???????, ???????? ???????????? ????????, ? ?? ????????, ? ??????? ??????? ???????????? ???? ????????????? ????????? ?????????, ?????????? ? ????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_PROTESTANT_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('??????????? ??? ????? ????????????, ??????? ????? ???? ????????? ???????????? ??????? ?? ?????? ??????? ?????? ? ???????? XVI ????, ???????????? ????? ??? ??????. ??????????? ???? ?? ???????? ?????? ?????????????? ?????? ? ?????????????, ???????????????, ????????????, ?????????? ? ?????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('? ??????? ?? ??????-???????????? ??????, ??????, ??????????? ??? ?? ?????? ?????. ??? ???????????? ??????????? ?????????? ???????????? ? ???????????? ???????, ????? ??? ??????? ?????? ??? ?????????????-??????????? ??????? ???????????. ????? ? ???? ????????????? ????? 140 ????? ??????? ??????????? ??????; 138 ?? ??? ?????????????? ? ????????? ??????????? ?????????, ??????? ???? ???????? ? 1947 ????. ?? ?????? XXI ???? ?? ????? ???? ????????????? ????? 65 ????????? ???????, ??? ?????? ??????????? ?????? ?? ???????? ?????? ?????????????? ????? ??????????? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_PROTESTANTISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('? ???????????? ????? ??????, ??????????? ?????????? ??????????? ??????????? ????????????? ??????????????: ????????? ??????? ? ????????? ?????? ? ?????? ??????, ????? ?? ???? ?? ???? ???????????? ???????, ???????? ???????????? ????????, ? ?? ????????, ? ??????? ??????? ???????????? ???? ????????????? ????????? ?????????, ?????????? ? ????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_CALVINISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Hinduism Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('???????? — ???? ?? ???????? ??????????? ????????, ?????? ? ?????????, ????????? ? ??????????, ????????????? ???????????? ???????? ???????? ?????????? ????? ? ??? ???????? (??????????????? ?????? ? ????). ??? ????? ????????? ???????? ?????????????? ??????????. ??????? ????? ???? ?????? ? ?????? ????????-??????, ??????? ? ?????????? ????? 4 ? 2 ????? ?? ?.?. ??????????? ? ??????? ???????, ? ?????????? ???? ???????? ????????? ??????? ????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('????? ?????????? ??? ????????? ???, ?????????????? ??? ????? ??????, ? ???????? ?????? ??????????: ??????????????, ??????????, ?????? ?????, ?????? ?????????????????, ?????????????? ??????????? ??????? ? ?????????? ??????????????????. ??? ? ?????? ??????????? ????, ????? ????? ?????? ????? ??????????, ????????? ??? "???????". ????? ????????????? ?????? ????????, ?????? ? ???? ???????? ?????? ???????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('???? ????????? ???????????? ??????? ??????? ? ???????? ? ???? ???????, ???????????, ????????? ?????? ? ?????? ??????. ??????? ?????, ???????????? ????? ?????????? ??????? ?????? ???????, ?? ?????????????? ? ???????????????? ? ?? ?????? ?????? ????????? ????????????? ? ????? ??????????? ??????????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1);

--

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('???????? — ???? ?? ???????? ??????????? ????????. ???????? ???????? ??????????????? ??????? ??????????? ?????????. ??????? ??????????? ???????? ????????? ???????? ???????-???????, ????????????? ????????? ???????? ? VIII ???? (???? ?????? ?????? ???????????? ??????? ??????, ????? 200 ????? ?? ?.?. ? 100 ????? ????? ???). ????????? ?? ???????? ???? ??????? ??????????? ?????, ???????? ?? ????? ??????????? ?? ????? ????, ??? ???????? ??? ???????. ??? ?? ?????, ??? ???-???? ?????????????? ????????, ??????? ????? ?????? ????????? ? ????? ???????? ? ??????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('???????? ???????????? ?? ????????? ????, ??? ??????? ???????? ?????? ??????? ?? ????????? ? ??????????? ??? ????????????. ???????? ??????????? ? ????? ?? ????? ??????: ?????, ????, ?????, ?????, ????? ? ?????. ????????? ????????, ??? ??????? ???????? ? ?????? ?????????????? ??????? ???? ??? ??????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('??????? ???????? ???????? ????????? ?? ???? ???? ??????? ? ???????? ??????????? ?????? ?????????. ??????? ? ?????????? ???????? ???????? "????????????????". ?? ???????????????? ??????? ??????? ??????? (788—820), ??????? ????????? ??????????? ????? ????????? ???????? ????????, ? ?????????, ????? ?????? ??????-???? ?????????. ?????? ?????? ?????? ?? ?????????? ???? ? ?????????, ?? ????????????? ???????-??????? ??? ?????? ?????????????, ???????? ??? ?????????? ???????????????. ? ???????? ???? ?????????, ??? ????? ?????? ????????? ???????? ???????? ? ????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDU_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_HINDUISM_1' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('???????? — ???? ?? ???????? ??????????? ????????, ?????? ? ?????????, ????????? ? ??????????, ????????????? ???????????? ???????? ???????? ?????????? ????? ? ??? ???????? (??????????????? ?????? ? ????). ??? ????? ????????? ???????? ?????????????? ??????????. ??????? ????? ???? ?????? ? ?????? ????????-??????, ??????? ? ?????????? ????? 4 ? 2 ????? ?? ?.?. ??????????? ? ??????? ???????, ? ?????????? ???? ???????? ????????? ??????? ????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('????? ?????????? ??? ????????? ???, ?????????????? ??? ????? ??????, ? ???????? ?????? ??????????: ??????????????, ??????????, ?????? ?????, ?????? ?????????????????, ?????????????? ??????????? ??????? ? ?????????? ??????????????????. ??? ? ?????? ??????????? ????, ????? ????? ?????? ????? ??????????, ????????? ??? "???????". ????? ????????????? ?????? ????????, ?????? ? ???? ???????? ?????? ???????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_HINDUISM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('???? ????????? ???????????? ??????? ??????? ? ???????? ? ???? ???????, ???????????, ????????? ?????? ? ?????? ??????. ??????? ?????, ???????????? ????? ?????????? ??????? ?????? ???????, ?? ?????????????? ? ???????????????? ? ?? ?????? ?????? ????????? ????????????? ? ????? ??????????? ??????????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHAIVISM_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Islam Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('?????????? ????? ???????? ?????????? ?????? ??????, ? ??? ??????????? ?????????? ?????????. ???????? ???????? ?????????? ?? ???????????? "???? ??-????? ????-??????". ?????? ????? (???? ??-?????) ????????????? ?????????? ???? ??????? ????????? ? ??? ????????????. ?????? ????? ???????? (????-??????) ????????????? ????????? ?????? ???? ???????????? ??????? ? ?????????? ?? ?????? ??? ??????? ????????? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('??????? ?????? ???????? ???????????? ??????? ???????. ????? "???????" ?????????? ?? ??????? ?????, ?????????????? ?????????? ????????, ??????????? ??????? ????? ?????????? ??????? ????????? ??? ??????? ? ??????????? ??? ???? ????????????? ?????? (????) ? ??????? ????????????. ????? ???????????? ????? ????????????? ??????? ? ???? ????????????? ? ???? ???????. ????? ?????????? ?????? ??????? ? ????????? ? ??????? ????? ? ?????? ???? ??????????? ???????????? ? ?????? ??????????? ??????. ?????? ???????? ?? ?????? ?????? ? ???????, ? ?????????? ? ????????????? ??????? ???????????? ??????????? (????) ? ???????????? ?????? ???????????? ??? (?????). ??????? ???????? ?????? ???????????-???????? ?????, ????????? "?????????": ???????????, ??????????, ??????????? ? ????????????. ???? ?????????? ??????, ???????????, ???? ????????? ?????. ??? ?????? ????? ???????? ????????????? ???? ?????. ??????????? ????? ??????? ????? ?? ???? ???? ? ????????? ???, ? ??????? ???? ??????????? ????? ?? ?????? ? ????? ? ????????? ????????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('???????? ????? ?????????? ? ???????? ??????? ???????? ??-?? ??????????? ?? ?????? ?????? ????????? ????????? ? ???????????? ????????? ????? ??????? ???????????? ????????, ? ????? ???????????? ? ??????????? ????????. ???????????? ????????????? ????? ?????????? ? ???????? ??????? ??????????? ? ?????? ?????????????? ?? ?????????? ???? ????????? ???????, ? ? ????????? ????? ??? ??????????? ??????????? ??????????? ? ?????? ??????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1);

---------------------
-- Exception Start
---------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('?????????? ????? ???????? ?????????? ?????? ??????, ? ??? ??????????? ?????????? ?????????. ???????? ???????? ?????????? ?? ???????????? "???? ??-????? ????-??????". ?????? ????? (???? ??-?????) ????????????? ?????????? ???? ??????? ????????? ? ??? ????????????. ?????? ????? ???????? (????-??????) ????????????? ????????? ?????? ???? ???????????? ??????? ? ?????????? ?? ?????? ??? ??????? ????????? ???????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('??????? ?????? ???????? ???????????? ??????? ???????. ????? "???????" ?????????? ?? ??????? ?????, ?????????????? ?????????? ????????, ??????????? ??????? ????? ?????????? ??????? ????????? ??? ??????? ? ??????????? ??? ???? ????????????? ?????? (????) ? ??????? ????????????. ????? ???????????? ????? ????????????? ??????? ? ???? ????????????? ? ???? ???????. ????? ?????????? ?????? ??????? ? ????????? ? ??????? ????? ? ?????? ???? ??????????? ???????????? ? ?????? ??????????? ??????. ?????? ???????? ?? ?????? ?????? ? ???????, ? ?????????? ? ????????????? ??????? ???????????? ??????????? (????) ? ???????????? ?????? ???????????? ??? (?????). ??????? ???????? ?????? ???????????-???????? ?????, ????????? "?????????": ???????????, ??????????, ??????????? ? ????????????. ???? ?????????? ??????, ???????????, ???? ????????? ?????. ??? ?????? ????? ???????? ????????????? ???? ?????. ??????????? ????? ??????? ????? ?? ???? ???? ? ????????? ???, ? ??????? ???? ??????????? ????? ?? ?????? ? ????? ? ????????? ????????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_ISLAM_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('???????? ????? ?????????? ? ???????? ??????? ???????? ??-?? ??????????? ?? ?????? ?????? ????????? ????????? ? ???????????? ????????? ????? ??????? ???????????? ????????, ? ????? ???????????? ? ??????????? ????????. ???????????? ????????????? ????? ?????????? ? ???????? ??????? ??????????? ? ?????? ?????????????? ?? ?????????? ???? ????????? ???????, ? ? ????????? ????? ??? ??????????? ??????????? ??????????? ? ?????? ??????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 0)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_LITE_EXCEPTION' AND Value = 1);

---------------------
-- Exception End
---------------------

---------------------------------------------------------------------------
---------------------------------------------------------------------------

----
--Shia Extended
----

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_1'),  	('ru_RU'),			('??????? - ????????????? ????????, ???????, ??????? ????? ????????????? ? ??? ????????????? ??????????? ??????????? ??????????? ?????? ? ???? ??????, ? ??????? ???????? ?????????? ????? ???, ???? ? ??????????? ????? ??????? ?????????. ????? ??????????????? ? ?????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_2'),  	('ru_RU'),			('???????? ?????? ?????????? ???? - ????????????? ???. ?? ???????? ????? ?? ?????? ??????, ?????????????? ??????????????? ????????????? ????, ???? ? ??????? ????. ??? ??????? ?????????? ??????????? ? ???????????? ????? ?? ?????????? ???? ???????. ??????? ?????????????? ?????? ?????? (???? ????????????, ???????????? ??? ??????? ????????????) ??? ??????? ?, ????? ???????, ?? ?????????? ????????? ???????????. ??? ??????? ???? ?????????? ???????, ???? ??? ????????????? ?? ??????-??????????????? (????????????). ??? ???? ????????? ????????????? ??????? ???????, ??? ??????? ?????????? ?? ?????? ? ?????? ? ????? ???????? ? ??????????? ???????? ?? ???????????? ????????? ??????????? ??? ??????, ??? ?? ?????? ???????? ????? ????????? ?????? ?????? ??????, ????????????? ? ?????? ??????? — ????? ??????, ???????????? ? ??????????? ????????? ?????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

INSERT OR REPLACE INTO LocalizedText
		(Tag, 							Language,					Text)
SELECT  ('LOC_PEDIA_RELIGIONS_PAGE_RELIGION_I1_SHIA_CHAPTER_HISTORY_PARA_3'),  	('ru_RU'),			('??????? ?????????? ? ????????? ??????????????? ??????. ????? ??? ??? ??? ?????? ???? ?? ????????? ???? ? ???????, ? ?? ????????????? ????? ????? ???? ?????? ? ????????????? ??????????????, ?? ? ???????????? ? ??????? ?????????????? ??????? ????????.')
WHERE EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_LITE_COMPLETE_SWITCH' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_ISLAMIC_DENOMINATIONS' AND Value = 1)
AND EXISTS (SELECT * FROM HR_Denominations WHERE Type = 'HR_SHIA_DENOMINATIONS' AND Value = 1);

---------------------------------------------------------------------------
---------------------------------------------------------------------------
