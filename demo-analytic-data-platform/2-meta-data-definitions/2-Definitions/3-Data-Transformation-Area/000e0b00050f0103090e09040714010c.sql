/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000e0b00050f0103090e09040714010c`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000e0b00050f0103090e09040714010c', '000c0a0c060c080d070d0c00020b1402', '1', 'Exchange Rate EUR/CAD', '<div><font face="Cascadia Mono" size=1 style="BACKGROUND-COLOR:#FFFFFF">Historical Exchange Rate for EURO / Canadian Dollar.</font></div>', 'psa_yahoo_exchange_rate', 'eur_x_cad', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_exchange_rate].[tsl_eur_x_cad] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090e0c00040a0e0d070d1400', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090107010e0903050d0e02030d1402', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000a0f0d03000c0c060e0f07080e1403', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000d0104010e0a0c010c000106091401', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Datum', '<div>Datum</div>', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0e0007000f0200090f0707081405', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c05090b0e04080a0b0702140d02', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080c0105030b0804080a0c0300140906', '000e0b00050f0103090e09040714010c', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0008000d080d0d0503080a03070c1403', '000e0b00050f0103090e09040714010c', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a08030101000001010905030d1402', '000e0b00050f0103090e09040714010c', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('04000c0d05080c01080e0f031d0e0d03', '000e0b00050f0103090e09040714010c', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('04090d0106090001060a0a0106140a04', '000e0b00050f0103090e09040714010c', '00040c060f030a040007090507190d05', '0', '5');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('09090b03020d0804030f010205140d0c', '000e0b00050f0103090e09040714010c', '06060e030f000b0104070b080f0c1503', 'EURCAD%3DX/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '4');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('030b0b0c02080e06040c080d0314080d', '000e0b00050f0103090e09040714010c', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('000a0f0d03000d01000a00020009140c', '000e0b00050f0103090e09040714010c', '000e0f0104090f0002080e04070f1403');

  /* ------------------------ */
  /* `DQ Control`-definitions */
  /* ------------------------ */
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '06030d080400090800010b07030d1500', '00040c060f00010702010d0005190a01', '000e0b00050f0103090e09040714010c', 'asdf', 'sadfs', NULL, NULL, '1900-01-01', '9999-12-31');

  /* -------------------------- */
  /* `DQ Threshold`-definitions */
  /* -------------------------- */
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('06020d070f040a0205070a020f071509', '06050f030f030a0805030f08020d1505', '06030d080400090800010b07030d1500', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('06020f05010d0e010f05090502061500', '06020f05010d0f06040d0d0105061508', '06030d080400090800010b07030d1500', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('06050f030f030d0004070d0701021506', '06020d070f040b080f010e040f051501', '06030d080400090800010b07030d1500', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  
END
GO

