/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000e0b0005010f07090b0d0402140e03`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000e0b0005010f07090b0d0402140e03', '000a000603080f0201000d0d09081401', '1', 'Realty Income Corporation (O) - Dividends', '<div><font face="Aptos Narrow" color=black>Stock prizes of Realty Income Corporation (O), the <strong><em>rawdata </em></strong>also gives the stock prices and stock splits, these are filtered out by checking if [Open] is numeric of value. Data of the current day is also filtered out, for reason that in-day records can still change for the day is <strong><em>NOT</em></strong> done.</font></div>', 'psa_yahoo_dividends', 'o', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_dividends].[tsl_o] AS tsl<newline><newline>WHERE CHARINDEX(''Dividend'', tsl.[Close Close price adjusted for splits.], 1) != 0<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000d0104010f010d030c0807030d1403', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Datum', 'Datum', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000a0f0d0301000205010103010a1407', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090b02000a0c0603090e0d01011407', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('050d000605000d0206010a031d0c0f05', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000b0f06090e0d0c070e0c02060f1402', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('06090d03080b0d0301090d0402140a06', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('05010b03080c0b02000e01050814090d', '000e0b0005010f07090b0d0402140e03', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('040a080d060d0b01040a000c06140903', '000e0b0005010f07090b0d0402140e03', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0001080404000c05060b0f04000a1400', '000e0b0005010f07090b0d0402140e03', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('03090f0002000c0700090a0705140a03', '000e0b0005010f07090b0d0402140e03', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a080300090801010f0d00080f1406', '000e0b0005010f07090b0d0402140e03', '06060e030f000b0104070b080f0c1503', 'O/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000c0103040f0002090c0c0000140e0c', '000e0b0005010f07090b0d0402140e03', '00040c060f030a040007090507190d05', '0', '3');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('060b0105030f0c04060f0b0402140c06', '000e0b0005010f07090b0d0402140e03', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('0500000006000a00060b140306090a02', '000e0b0005010f07090b0d0402140e03', 'Minutes', '5', '2025-03-19', '2025-03-31');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('000e0f01040b0d0007010b0306091407', '000e0b0005010f07090b0d0402140e03', '000e0f0104090f0002080e04070f1403');

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

