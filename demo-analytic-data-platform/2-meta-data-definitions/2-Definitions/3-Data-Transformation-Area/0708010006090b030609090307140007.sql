/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `0708010006090b030609090307140007`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '0708010006090b030609090307140007', '000c0a0c060c00040308010303001407', '0', 'Calender-Days-of-the-Week', 'Provide some description', 'dta_public', 'days_of_the_week', 'SELECT itr.ni_iteration AS ni_weekday,  <newline>    CASE itr.ni_iteration WHEN 1 THEN ''m''   WHEN 2 THEN ''t''   WHEN 3 THEN ''w''      WHEN 4 THEN ''t''     WHEN 5 THEN ''f''   WHEN 6 THEN ''s''     WHEN 7 THEN ''s''   END AS cd_weekday_1_letter,   <newline>    CASE itr.ni_iteration WHEN 1 THEN ''mo''  WHEN 2 THEN ''tu''  WHEN 3 THEN ''we''     WHEN 4 THEN ''th''    WHEN 5 THEN ''fr''  WHEN 6 THEN ''sa''    WHEN 7 THEN ''su''  END AS cd_weekday_2_letter,<newline>    CASE itr.ni_iteration WHEN 1 THEN ''Mon'' WHEN 2 THEN ''Tues'' WHEN 3 THEN ''Wednes'' WHEN 4 THEN ''Thurs'' WHEN 5 THEN ''Fri'' WHEN 6 THEN ''Satur'' WHEN 7 THEN ''Sun'' END + ''day'' AS nm_weekday_english<newline>FROM psa_public.iteration AS itr <newline>WHERE ni_iteration < 8');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040e0b01030a0e01020e0b0600140004', '0708010006090b030609090307140007', '0e01000005020b030405090503190101', '# Day of the Week', NULL, '1', 'ni_weekday', '1', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('090b0800010e0d020009010409140a04', '0708010006090b030609090307140007', '000e0b00050008010800000102140a0c', 'Code Weekday (1-Letter)', NULL, '2', 'cd_weekday_1_letter', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000d0104010f0802040f0e01070b1406', '0708010006090b030609090307140007', '000e0b00050008010800000102140a0c', 'Code Weekday (2-Letter)', NULL, '3', 'cd_weekday_2_letter', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000a0f0d03010905080c0f0505091403', '0708010006090b030609090307140007', '050d0006050b0e07050b090c1d0c0d06', 'Name Weekday (english)', NULL, '4', 'nm_weekday_english', '0', '0');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  -- No Defintions for `Parameter Values`

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  -- No Defintions for `Related (Group(s))`

  /* ------------------------ */
  /* `DQ Control`-definitions */
  /* ------------------------ */
  -- No Defintions for `DQ Control`

  /* -------------------------- */
  /* `DQ Threshold`-definitions */
  /* -------------------------- */
  -- No Defintions for `DQ Threshold`
  
END
GO

