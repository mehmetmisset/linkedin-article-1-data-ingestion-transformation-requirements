/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `07090900040c09010908080200140a03`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '07090900040c09010908080200140a03', '000c0a0c060d0d03090f0d02080c1400', '1', 'NVIDIA Corporation (NVDA) - Stock Prizes', '<div>Stock prizes of NVIDIA Corporation (NVDA), the <strong><em>rawdata </em></strong>also gives the dividends and stock splits, these are filtered out by checking if [Open] is numeric of value. Data of the current day is also filtered out, for reason that in-day records can still change for the day is <strong><em>NOT</em></strong> done.</div>', 'psa_yahoo_stocks', 'nvidia', 'SELECT tsl.[Date]<newline>      ,tsl.[Open]<newline>      ,tsl.[High]<newline>      ,tsl.[Low]<newline>      ,tsl.[Close Close price adjusted for splits.]<newline>      ,tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>      ,tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_stocks].[tsl_nvidia] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090f0c0d04080e06070c1402', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090107010f0b0103010d0009081403', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000c0803070b080207080007020b1403', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c02090b0905010a0e0402081400', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Datum', '<div>Datum</div>', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0e0006080d0405090d0c01091404', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c050900000c040b0f0605140004', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080c0105020a0b0c020f0c0c07140d07', '07090900040c09010908080200140a03', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00090e00060e0d0600090e0c0201140d', '07090900040c09010908080200140a03', '00040c060f030a040007090507190d05', '0', '5');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a000603080f05010d0f0c040e1406', '07090900040c09010908080200140a03', '06060e030f000b0104070b080f0c1503', 'NVDA/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '4');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('040f0e0409090d05090b0f0204140f07', '07090900040c09010908080200140a03', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('050d000605000b0c090a0a001d0f0e06', '07090900040c09010908080200140a03', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('07080100060c0e0c0801080008140907', '07090900040c09010908080200140a03', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('000a0000070a0a0d0700090c010c1401', '07090900040c09010908080200140a03', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('000e0c0d020e0f03070a0d06040e1405', '07090900040c09010908080200140a03', 'Minutes', '5', '2025-03-13', '2025-03-27');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('00000f0401080d00040d0c00050d1403', '07090900040c09010908080200140a03', '000e0f0104090f0002080e04070f1403');
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('000c0a0c060d0d0c05090f07040b140c', '07090900040c09010908080200140a03', '000f0c0209090a0d09080e0d060b140d');

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

