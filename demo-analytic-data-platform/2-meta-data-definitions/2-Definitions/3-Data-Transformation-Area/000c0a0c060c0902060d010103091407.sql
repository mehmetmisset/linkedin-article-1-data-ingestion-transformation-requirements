/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000c0a0c060c0902060d010103091407`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000c0a0c060c0902060d010103091407', '000c0a0c060c080d070d0c00020b1402', '1', 'Exchange Rate EUR/USD', '<div>US Dollar Exchange Rates</div>', 'psa_yahoo_exchange_rate', 'eur_x_usd', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_exchange_rate].[tsl_eur_x_usd] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090e0c00040a0f0008001405', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090e00060d0b03010f0c0709011403', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000c080307090e03040f000008081400', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c0209090b0c05010b0c060e1407', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c05090b0e04080a0d0c07140805', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0708010007000e030109010209140b05', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0709090005000905090f0e0005140c04', '000c0a0c060c0902060d010103091407', '000b0f06090d0904090d000c05091400', 'Datum', '<div>Datum</div>', '1', 'Date', '1', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000c080307090f05010c0e010609140c', '000c0a0c060c0902060d010103091407', '06060e030f000b0104070b080f0c1503', 'EURUSD%3DX/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '4');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000e0c0d020d090c06000a0601081406', '000c0a0c060c0902060d010103091407', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000f0e0007000004050e0e040501140c', '000c0a0c060c0902060d010103091407', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('040e0b0103080a0c080e0a0300140e05', '000c0a0c060c0902060d010103091407', '00040c060f030a040007090507190d05', '0', '5');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0709090005000a02080b0f0209140003', '000c0a0c060c0902060d010103091407', '06040002070308080001000205051505', 'web', '1');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('000c0a0c060c0a0403000c0c040d1404', '000c0a0c060c0902060d010103091407', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('000d0104010e0b01080d0d050000140d', '000c0a0c060c0902060d010103091407', '000e0f0104090f0002080e04070f1403');

  /* ------------------------ */
  /* `DQ Control`-definitions */
  /* ------------------------ */
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '0e010000050601050e030e0405190e06', '00040c060f00010702010d0005190a01', '000c0a0c060c0902060d010103091407', 'DQC-0005', 'Date moet unique zijn', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, <newline>          CASE<newline>    WHEN COUNT(cur.meta_ch_bk) > 1<newline>    THEN ''NOK''                     <newline>    ELSE ''OKE'' <newline>  END AS id_dq_result_status  <newline><newline>FROM psa_yahoo_exchange_rate.eur_x_usd AS cur<newline><newline>JOIN psa_yahoo_exchange_rate.eur_x_usd AS cnt<newline>ON  cnt.[Date]              = cur.[Date]<newline>AND cnt.meta_dt_valid_from <= cur.meta_dt_valid_from<newline>AND cnt.meta_dt_valid_till >  cur.meta_dt_valid_from<newline><newline>GROUP BY cur.meta_ch_bk', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '02060d000f01090905070f040e190d01', '06070e08050d0d09000c0e0706011509', '000c0a0c060c0902060d010103091407', 'DQC-0006', 'Date moet gevuld zijn', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk,<newline>          CASE<newline><newline>    WHEN cur.[Date] IS NULL<newline>    THEN ''NOK''<newline><newline>    WHEN ISNULL(cur.[Date],'''') = ''''<newline>    THEN ''NOK''<newline>    ELSE ''OKE''<newline>  END AS id_dq_result_status  <newline><newline>FROM psa_yahoo_exchange_rate.eur_x_usd AS cur', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '0604000207030b0907070807000d1504', '06060e030f0008010f0c080000071501', '000c0a0c060c0902060d010103091407', 'DQC-0007', 'Date is valid', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, CASE<newline>    WHEN TRY_CONVERT(DATE, cur.[Date]) IS NULL<newline>    THEN ''NOK''<newline>    ELSE ''OKE''<newline>  END AS id_dq_result_status<newline>FROM psa_yahoo_exchange_rate.eur_x_usd AS cur', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '060109060104010107010a0504001506', '0600000107030b09070d0f00050c1509', '000c0a0c060c0902060d010103091407', 'DQC-0008', 'Date is not in future', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, CASE<newline><newline>    WHEN TRY_CONVERT(DATE, cur.[Date]) > GETDATE()<newline>    THEN ''NOK''<newline>    ELSE ''OKE''<newline>  END AS id_dq_result_status<newline>FROM psa_yahoo_exchange_rate.eur_x_usd AS cur', '1900-01-01', '9999-12-31');

  /* -------------------------- */
  /* `DQ Threshold`-definitions */
  /* -------------------------- */
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000c0a0c060c000603010e00090b1405', '06050f030f030a0805030f08020d1505', '0e010000050601050e030e0405190e06', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000e0c0d020d0104020f0d030901140c', '06020f05010d0f06040d0d0105061508', '0e010000050601050e030e0405190e06', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000f0e0007010d03010e0d04020f1402', '06020d070f040b080f010e040f051501', '0e010000050601050e030e0405190e06', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('080c0105030f0b0203010d040514080d', '06050f030f030a0805030f08020d1505', '02060d000f01090905070f040e190d01', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('00090107010e0f0600000b0608011405', '06020f05010d0f06040d0d0105061508', '02060d000f01090905070f040e190d01', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('03090d00010800070501080602140f00', '06020d070f040b080f010e040f051501', '02060d000f01090905070f040e190d01', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('040f0e0406000c0301010e0306140001', '06050f030f030a0805030f08020d1505', '0604000207030b0907070807000d1504', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('040e0b01030a0f07040e0f0605140b02', '06020f05010d0f06040d0d0105061508', '0604000207030b0907070807000d1504', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000a000603080807030b080009011401', '06020d070f040b080f010e040f051501', '0604000207030b0907070807000d1504', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000d0104010f080c09010907050e140c', '06050f030f030a0805030f08020d1505', '060109060104010107010a0504001506', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('00090b0200090f03070e090c060d1400', '06020f05010d0f06040d0d0105061508', '060109060104010107010a0504001506', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('000b0f06090d0004070d0f0c09001401', '06020d070f040b080f010e040f051501', '060109060104010107010a0504001506', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  
END
GO

