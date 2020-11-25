CALL SYSRDL#CG.REMOTE_EXECUTE('
BEGIN
  SET TEMPORARY OPTION CONVERSION_ERROR=''Off'';
  LOAD TABLE EVENT(
       GlobalEventID ,
       Day DATE(''YYYYMMDD''),
       FILLER(''\x09'') , 
       MonthYear ,
       Year ,
       FractionDate ,
       Actor1Code ,
       Actor1Name ,
       Actor1CountryCode ,
       Actor1KnownGroupCode ,
       Actor1EthnicCode ,
       Actor1Religion1Code ,
       Actor1Religion2Code ,
       Actor1Type1Code ,
       Actor1Type2Code ,
       Actor1Type3Code ,
       Actor2Code ,
       Actor2Name ,
       Actor2CountryCode ,
       Actor2KnownGroupCode ,
       Actor2EthnicCode ,
       Actor2Religion1Code ,
       Actor2Religion2Code ,
       Actor2Type1Code ,
       Actor2Type2Code ,
       Actor2Type3Code ,
       IsRootEvent ,
       EventCode ,
       EventBaseCode ,
       EventRootCode ,
       QuadClass ,
       GoldsteinScale ,
       NumMentions ,
       NumSources ,
       NumArticles ,
       AvgTone ,
       Actor1Geo_Type ,
       Actor1Geo_FullName ,
       Actor1Geo_CountryCode ,
       Actor1Geo_ADM1Code ,
       Actor1Geo_ADM2Code ,
       Actor1Geo_Lat ,
       Actor1Geo_Long ,
       Actor1Geo_FeatureID ,
       Actor2Geo_Type ,
       Actor2Geo_FullName ,
       Actor2Geo_CountryCode ,
       Actor2Geo_ADM1Code ,
       Actor2Geo_ADM2Code ,
       Actor2Geo_Lat ,
       Actor2Geo_Long ,
       Actor2Geo_FeatureID ,
       ActionGeo_Type ,
       ActionGeo_FullName ,
       ActionGeo_CountryCode ,
       ActionGeo_ADM1Code ,
       ActionGeo_ADM2Code ,
       ActionGeo_Lat ,
       ActionGeo_Long ,
       ActionGeo_FeatureID ,
       DATEADDED DATETIME(''YYYYMMDDhhnnss''),
       FILLER(''\x09'') , 
       SOURCEURL )
     USING FILE ''s3://hcp-9de8781a-f3f2-4ed2-ac71-426d17095f88/event_samp.csv''
     DELIMITED BY ''\x09''
     STRIP RTRIM
     FORMAT CSV
     ACCESS_KEY_ID ''AKIAUXHXU4B7UICDPYHH''
     SECRET_ACCESS_KEY ''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'' 
     REGION ''eu-central-1''
     ESCAPES OFF
     QUOTES OFF;    

  LOAD TABLE GKG(
       GKGRECORDID ,
       DATEADDED DATETIME(''YYYYMMDDhhnnss''),
       FILLER(''\x09'') , 
       SourceCollectionIdentifier ,
       SourceCommonName ,
       DocumentIdentifier ,
       V1Counts ,
       V2Counts ,
       V1Themes ,
       V2EnhancedThemes ,
       V1Locations ,
       V2EnhancedLocations ,
       V1Persons ,
       V2EnhancedPersons ,
       V1Organizations ,
       V2EnhancedOrganizations ,
       V2Tone ,
       EnhancedDates ,
       GCAM ,
       SharingImage ,
       RelatedImages ,
       SocialImageEmbeds ,
       SocialVideoEmbeds ,
       Quotations ,
       AllNames ,
       Amounts ,
       TranslationInfo ,
       ExtrasXML )
     USING FILE ''s3://hcp-9de8781a-f3f2-4ed2-ac71-426d17095f88/gkg_samp.csv''
     DELIMITED BY ''\x09''
     STRIP RTRIM
     FORMAT CSV
     ACCESS_KEY_ID ''AKIAUXHXU4B7UICDPYHH''
     SECRET_ACCESS_KEY ''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'' 
     REGION ''eu-central-1''
     ESCAPES OFF
     QUOTES OFF;

  LOAD TABLE MENTIONS(
       GlobalEventID ,
       EventTimeDate DATETIME(''YYYYMMDDhhnnss''),
       MentionTimeDate DATETIME(''YYYYMMDDhhnnss''),
       FILLER(''\x09'') , 
       MentionType ,
       MentionSourceName ,
       MentionIdentifier ,
       SentenceID ,
       Actor1CharOffset ,
       Actor2CharOffset ,
       ActionCharOffset ,
       InRawText ,
       Confidence ,
       MentionDocLen ,
       MentionDocTone ,
       MentionDocTranslationInfo ,
       Extras )
     USING FILE ''s3://hcp-9de8781a-f3f2-4ed2-ac71-426d17095f88/mentions_samp.csv''
     DELIMITED BY ''\x09''
     STRIP RTRIM
     FORMAT CSV
     ACCESS_KEY_ID ''AKIAUXHXU4B7UICDPYHH''
     SECRET_ACCESS_KEY ''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'' 
     REGION ''eu-central-1''
     ESCAPES OFF
     QUOTES OFF;
END');