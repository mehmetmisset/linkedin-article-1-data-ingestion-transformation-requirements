/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `00080806090900020900090207091400`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '00080806090900020900090207091400', '000c0a0c060d0d03090f0d02080c1400', '1', 'Regions Financial Corporation (RF) - Stock Prizes', '<div><font face="Aptos Narrow" color=black>Stock prizes of Regions Financial Corporation (RF), the <strong><em>rawdata </em></strong>also gives the dividends and stock splits, these are filtered out by checking if [Open] is numeric of value. Data of the current day is also filtered out, for reason that in-day records can still change for the day is <strong><em>NOT</em></strong> done. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div>&nbsp;</div>', 'psa_yahoo_stocks', 'rf', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_stocks].[tsl_rf] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('090e0d0307000d030908010405140e0c', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Datum', 'Datum', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('07090a01070f0a0d05000a0701140e0c', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080e0f0d080c0805000f010404140d04', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0509080701000d06050c0f0700140807', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('030b0b0c02080e0706010e0508140a0d', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000d090502010a0608090c0602011405', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('02090f01060b0e04040b0d011d0b0c04', '00080806090900020900090207091400', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000c0003020e0a04050f0e0c030d1403', '00080806090900020900090207091400', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00090a0c080d0f0700000f03070e1400', '00080806090900020900090207091400', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('030c0106050e0d0d090c0b0304140c07', '00080806090900020900090207091400', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a0b02000c0d0d010b0a04030e1404', '00080806090900020900090207091400', '06060e030f000b0104070b080f0c1503', 'RF/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('07000f06050d0e0500000c0c06140f0d', '00080806090900020900090207091400', '00040c060f030a040007090507190d05', '0', '3');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('050e000d08080d0407000f0202140a00', '00080806090900020900090207091400', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('090d0e00030b0801040f010609140102', '00080806090900020900090207091400', 'Minutes', '5', '2025-03-19', '2025-03-31');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('08010e0703000a01090b000605140d05', '00080806090900020900090207091400', '000e0f0104090f0002080e04070f1403');

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

