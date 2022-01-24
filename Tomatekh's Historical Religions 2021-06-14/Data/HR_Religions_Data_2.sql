--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************

------------------------------------------------

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_QUAKERS'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

CREATE TRIGGER HRDoubleQuakersAA
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_QUAKERS' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_QUAKERS'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P7_QUAKER');

END;

--

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_MOISM'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

CREATE TRIGGER HRDoubleMoismAA
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_MOISM' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_MOISM'
	AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_MOHISM');

END;

--

DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_Q3'
AND EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_LEU_ROSE');

CREATE TRIGGER HRRoseDouble3AA
AFTER INSERT ON MomentIllustrations WHEN 'RELIGION_LEU_ROSE' = NEW.GameDataType
BEGIN

	DELETE FROM MomentIllustrations WHERE GameDataType = 'RELIGION_Q3';

END;

------------------------------------------------

--***********************************************************************************************************************************************************************************************
--***********************************************************************************************************************************************************************************************
