/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `08090103090d0b0c02080a0203140b0c`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '08090103090d0b0c02080a0203140b0c', '000a000603080f0201000d0d09081401', '1', 'Regions Financial Corporation (RF) - Dividends', '<div><font face="Aptos Narrow" color=black>Stock prizes of Regions Financial Corporation (RF), the <strong><em>rawdata </em></strong>also gives the stock prices and stock splits, these are filtered out by checking if [Open] is numeric of value. Data of the current day is also filtered out, for reason that in-day records can still change for the day is <strong><em>NOT</em></strong> done. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div>&nbsp;</div>', 'psa_yahoo_dividends', 'rf', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_dividends].[tsl_rf] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00000004090a090009080a0d08091406', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Datum', 'Datum', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('09090b03050b0901090e0f0401140b02', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('070e0f03030d0f0c060f010c01140905', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00000f0c050d0b06010d0a07060e140c', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0e02080b0d00080e0d0709011407', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0409010209090f02050f000606140f02', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000e0804010b0e0708010c03060d1404', '08090103090d0b0c02080a0203140b0c', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('05090f0508090c00070f0e0407140102', '08090103090d0b0c02080a0203140b0c', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00000f0c08010b0406000004010a1405', '08090103090d0b0c02080a0203140b0c', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a0000070a0b0006090100080d140c', '08090103090d0b0c02080a0203140b0c', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00000f0401080e0509000f020400140d', '08090103090d0b0c02080a0203140b0c', '06060e030f000b0104070b080f0c1503', 'RF/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('080f090d06090c03020a090407140005', '08090103090d0b0c02080a0203140b0c', '00040c060f030a040007090507190d05', '0', '3');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('04090d01060f0806050e000404140f05', '08090103090d0b0c02080a0203140b0c', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('04000c0d050e0b06030b01001d010000', '08090103090d0b0c02080a0203140b0c', 'Minutes', '5', '2025-03-19', '2025-03-31');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('0008000d080e0e04050c0e070508140d', '08090103090d0b0c02080a0203140b0c', '000e0f0104090f0002080e04070f1403');

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

