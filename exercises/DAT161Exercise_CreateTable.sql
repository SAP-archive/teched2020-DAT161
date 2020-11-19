CALL SYSRDL#CG.REMOTE_EXECUTE('
BEGIN
    CREATE TABLE EVENT ( 
        GlobalEventID INTEGER,    
        Day DATE,
        MonthYear INTEGER,
        Year INTEGER,
        FractionDate FLOAT,
        Actor1Code VARCHAR(27),
        Actor1Name VARCHAR(1024),
        Actor1CountryCode VARCHAR(3),
        Actor1KnownGroupCode VARCHAR(3),
        Actor1EthnicCode VARCHAR(3),
        Actor1Religion1Code VARCHAR(3),
        Actor1Religion2Code VARCHAR(3),
        Actor1Type1Code VARCHAR(3),
        Actor1Type2Code VARCHAR(3),
        Actor1Type3Code VARCHAR(3),
        Actor2Code VARCHAR(27),
        Actor2Name VARCHAR(1024),
        Actor2CountryCode VARCHAR(3),
        Actor2KnownGroupCode VARCHAR(3),
        Actor2EthnicCode VARCHAR(3),
        Actor2Religion1Code VARCHAR(3),
        Actor2Religion2Code VARCHAR(3),
        Actor2Type1Code VARCHAR(3),
        Actor2Type2Code VARCHAR(3),
        Actor2Type3Code VARCHAR(3),
        IsRootEvent INTEGER,
        EventCode VARCHAR(4),
        EventBaseCode VARCHAR(4),
        EventRootCode VARCHAR(4),
        QuadClass INTEGER,
        GoldsteinScale FLOAT,
        NumMentions INTEGER,
        NumSources INTEGER,
        NumArticles INTEGER,
        AvgTone FLOAT,
        Actor1Geo_Type INTEGER,
        Actor1Geo_FullName VARCHAR(120),
        Actor1Geo_CountryCode VARCHAR(2),
        Actor1Geo_ADM1Code VARCHAR(4),
        Actor1Geo_ADM2Code VARCHAR(64),
        Actor1Geo_Lat FLOAT,
        Actor1Geo_Long FLOAT,
        Actor1Geo_FeatureID VARCHAR(10),
        Actor2Geo_Type INTEGER,
        Actor2Geo_FullName VARCHAR(120),
        Actor2Geo_CountryCode VARCHAR(2),
        Actor2Geo_ADM1Code VARCHAR(4),
        Actor2Geo_ADM2Code VARCHAR(64),
        Actor2Geo_Lat FLOAT,
        Actor2Geo_Long FLOAT,
        Actor2Geo_FeatureID VARCHAR(10),
        ActionGeo_Type INTEGER,
        ActionGeo_FullName VARCHAR(120),
        ActionGeo_CountryCode VARCHAR(2),
        ActionGeo_ADM1Code VARCHAR(4),
        ActionGeo_ADM2Code VARCHAR(64),
        ActionGeo_Lat FLOAT,
        ActionGeo_Long FLOAT,
        ActionGeo_FeatureID VARCHAR(10),
        DateAdded DATETIME,
        SourceUrl VARCHAR(1024) );
    
    CREATE TABLE GKG (
        GKGRecordId VARCHAR(24),
        DateAdded DATETIME,
        SourceCollectionIdentifier INTEGER,
        SourceCommonName VARCHAR(1024),
        DocumentIdentifier VARCHAR(1024),
        V1Counts TEXT,
        V2Counts TEXT,
        V1Themes TEXT,
        V2EnhancedThemes TEXT,
        V1Locations TEXT,
        V2EnhancedLocations TEXT,
        V1Persons TEXT,
        V2EnhancedPersons TEXT,
        V1Organizations TEXT,
        V2EnhancedOrganizations TEXT,
        V2Tone TEXT,
        EnhancedDates TEXT,
        GCAM TEXT,
        SharingImage TEXT,
        RelatedImages TEXT,
        SocialImageEmbeds TEXT,
        SocialVideoEmbeds TEXT,
        Quotations TEXT,
        AllNames TEXT,
        Amounts TEXT,
        TranslationInfo TEXT,
        ExtrasXML TEXT );

    CREATE TABLE MENTIONS (
        GlobalEventID INTEGER,
        EventTimeDate DATETIME,
        MentionTimeDate DATETIME,
        MentionType INTEGER,
        MentionSourceName VARCHAR(1024),
        MentionIdentifier VARCHAR(1024),
        SentenceID INTEGER,
        Actor1CharOffset INTEGER,
        Actor2CharOffset INTEGER,
        ActionCharOffset INTEGER,
        InRawText INTEGER,
        Confidence INTEGER,
        MentionDocLen INTEGER,
        MentionDocTone FLOAT,
        MentionDocTranslationInfo VARCHAR(1024),
        Extras VARCHAR(1024) );

END');

CREATE TABLE HDLEXERCISE.CAMEOCODES (CODE varchar(4), CODE_DESC varchar(80));
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('010', '"Make statement not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('012', 'Make pessimistic comment');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('014', 'Consider policy option');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('016', 'Deny responsibility');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('018', 'Make empathetic comment');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('02', 'APPEAL');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('021', '"Appeal for material cooperation not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0212', 'Appeal for military cooperation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0214', 'Appeal for intelligence');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('023', '"Appeal for aid not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0232', 'Appeal for military aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0234', 'Appeal for military protection or peacekeeping');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0241', 'Appeal for change in leadership');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0243', 'Appeal for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('025', 'Appeal to yield');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0252', 'Appeal for easing of popular dissent');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0254', '"Appeal for easing of economic sanctions boycott or embargo"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0256', 'Appeal for de-escalation of military engagement');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('027', 'Appeal to others to settle dispute');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('03', 'EXPRESS INTENT TO COOPERATE');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('031', '"Express intent to engage in material cooperation  not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0312', 'Express intent to cooperate militarily');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0314', 'Express intent to cooperate on intelligence');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('033', '"Express intent to provide matyerial aid not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0332', 'Express intent to provide military aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0334', 'Express intent to provide military protection or peacekeeping');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0341', 'Express intent to change leadership');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0343', 'Express intent to provide rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('035', '"Express intent to yield not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0352', 'Express intent to ease popular dissent');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0354', '"Express intent to ease economic sanctions boycott or embargo"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0356', 'Express intent to de-escalate military engagement ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('037', 'Express intent to settle dispute');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('039', 'Express intent to mediate');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('040', '"Consult not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('042', 'Make a visit');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('044', 'Meet at a Third location');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('046', 'Engage in negotiation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('050', '"Engage in diplomatic cooperation not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('052', 'Defend verbally');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('054', 'Grant diplomatic recognition');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('056', 'Forgive');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('06', 'ENGAGE IN MATERIAL COOPERATION');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('061', 'Cooperate economically');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('063', 'Engage in judicial cooperation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('07', 'PROVIDE AID');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('071', 'Provide economic aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('073', 'Provide humanitarian aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('075', 'Grant asylum');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('080', '"Yield not specified below "');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0811', 'Ease restrictions on political freedoms');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0813', 'Ease curfew');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('082', 'Ease political dissent ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0831', 'Accede to demands for change in leadership');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0833', 'Accede to demands for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('084', '"Return release not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0842', '"Return release property"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('086', 'Allow international involvement not specified below');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0862', 'Receive inspectors');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('087', 'De-escalate military engagement');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0872', 'Ease military blockade');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('0874', 'Retreat or surrender militarily');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('090', '"Investigate not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('092', 'Investigate human rights abuses');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('094', 'Investigate war crimes');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('100', '"Demand not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1011', 'Demand economic cooperation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1013', 'Demand judicial cooperation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('102', 'Demand policy support');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1031', 'Demand economic aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1033', 'Demand humanitarian aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('104', '"Demand political reform not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1042', 'Demand policy change');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1044', '"Demand change in institutions regime"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1051', 'Demand easing of administrative sanctions');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1053', 'Demand release of persons or property');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1055', 'Demand that target allows international involvement (non-mediation)');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('107', 'Demand ceasefire');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('11', 'DISAPPROVE');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('111', 'Criticize or denounce ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1121', '"Accuse of crime corruption"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1123', 'Accuse of aggression');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1125', '"Accuse of espionage treason"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('114', 'Complain officially ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('116', 'Find guilty or liable (legally)');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('120', '"Reject not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1211', 'Reject economic cooperation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('122', '"Reject request or demand for material aid not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1222', 'Reject request for military aid');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1224', 'Reject request for military protection or peacekeeping');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1231', 'Reject request for change in leadership');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1233', 'Reject request for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('124', '"Refuse to yield not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1242', 'Refuse to ease popular dissent');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1244', '"Refuse to ease economic sanctions boycott or embargo"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1246', 'Refuse to de-escalate military engagement');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('126', 'Reject mediation');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('128', '"Defy norms law"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('13', 'THREATEN');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('131', '"Threaten non-force not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1312', '"Threaten to boycott embargo or sanction"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('132', '"Threaten with administrative sanctions not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1322', 'Threaten to ban political parties or politicians');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1324', 'Threaten to impose state of emergency or martial law');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('134', 'Threaten to halt negotiations');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('136', 'Threaten to halt international involvement (non-mediation)');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('138', '"Threaten to use military force not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1382', 'Threaten occupation ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1384', 'Threaten conventional attack  ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('139', 'Give ultimatum');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('140', '"Engage in political dissent not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1411', 'Demonstrate for leadership change');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1413', 'Demonstrate for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('142', '"Conduct hunger strike not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1422', 'Conduct hunger strike for policy change');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1424', '"Conduct hunger strike for change in institutions regime "');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1431', 'Conduct strike or boycott for leadership change  ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1433', 'Conduct strike or boycott for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('144', '"Obstruct passage block"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1442', 'Obstruct passage to demand policy change');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1444', '"Obstruct passage to demand change in institutions regime"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1451', 'Engage in violent protest for leadership change  ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1453', 'Engage in violent protest for rights');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('15', 'EXHIBIT FORCE POSTURE');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('151', 'Increase police alert status');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('153', 'Mobilize or increase police power');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('16', 'REDUCE RELATIONS');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('161', 'Reduce or break diplomatic relations');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1621', 'Reduce or stop economic assistance');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1623', 'Reduce or stop humanitarian assistance');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('164', 'Halt negotiations');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('166', '"Expel or withdraw not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1662', '"Expel or withdraw inspectors observers"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('17', 'COERCE');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('171', '"Seize or damage property not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1712', 'Destroy property');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1721', 'Impose restrictions on political freedoms  ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1723', 'Impose curfew');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('173', '"Arrest detain or charge with legal action "');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('175', 'Use tactics of violent repression  ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('180', '"Use unconventional violence not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('182', '"Physically assault not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1822', 'Torture');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('183', '"Conduct suicide car or other non-military bombing not spec below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('1832', 'Carry out car bombing');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('184', 'Use as human shield ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('186', 'Assassinate ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('190', '"Use conventional military force not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('192', 'Occupy territory');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('194', 'Fight with artillery and tanks');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('196', 'Violate ceasefire ');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('200', '"Use unconventional mass violence not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('202', 'Engage in mass killings');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('204', '"Use weapons of mass destruction not specified below"');
INSERT INTO HDLEXERCISE.CAMEOCODES (CODE, CODE_DESC) VALUES ('2042', 'Detonate nuclear weapons');
