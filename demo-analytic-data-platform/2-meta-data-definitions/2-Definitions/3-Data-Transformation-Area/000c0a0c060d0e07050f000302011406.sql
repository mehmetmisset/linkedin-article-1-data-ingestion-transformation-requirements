/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000c0a0c060d0e07050f000302011406`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000c0a0c060d0e07050f000302011406', '000a000603080f0201000d0d09081401', '1', 'ABN Amro N.V. (ABN.AS) - Dividends', '<div>Stock prizes of ABN Amro N.V. on &nbsp;the Amsterdam (Stock) Exchange (AEX). Rawdata contains aalso stock prizes and stock split events, these must be filtered out. Data of the current day is also filetered out.</div>', 'psa_yahoo_dividends', 'abnas', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_dividends].[tsl_abnas] AS tsl<newline><newline>WHERE CHARINDEX(''Dividend'', tsl.[Close Close price adjusted for splits.], 1) != 0<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('07090900040c0b0d060f010002140003', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Datum', '<div>Datum</div>', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000e0c0d020e000001010b06060a1403', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c02090b0903090f0e05070f140d', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0e0006080d03020b0e04000b1405', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090f0d07070f0c060409140d', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080c0105020a0f0104010c0707140b03', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c050901080d05000d0404140d00', '000c0a0c060d0e07050f000302011406', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000c0803070b0906000a000605001403', '000c0a0c060d0e07050f000302011406', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('03090d00010a080109000a0507140903', '000c0a0c060d0e07050f000302011406', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00090e00060e0d0207000c06070e1400', '000c0a0c060d0e07050f000302011406', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('040f0e0409090f00050a0f020614090d', '000c0a0c060d0e07050f000302011406', '06060e030f000b0104070b080f0c1503', 'ABN.AS/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '4');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('07080100060c01060900010d04140103', '000c0a0c060d0e07050f000302011406', '00040c060f030a040007090507190d05', '0', '5');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('00090107010f0b0d080f0c04030e1400', '000c0a0c060d0e07050f000302011406', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('040e0b01030d0107060e0b0d01140800', '000c0a0c060d0e07050f000302011406', 'Minutes', '5', '2025-03-01', '2026-06-30');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('090b080000090c04010c010c00140d03', '000c0a0c060d0e07050f000302011406', '000e0f0104090f0002080e04070f1403');

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

