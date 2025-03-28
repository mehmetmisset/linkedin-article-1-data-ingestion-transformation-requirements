/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000c0a0c060d0e06010e08030509140c`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000c0a0c060d0e06010e08030509140c', '000c0a0c060d0d03090f0d02080c1400', '1', 'Realty Income Corporation (O) - Stock Prizes', '<div><font face="Aptos Narrow" color=black>Stock prizes of Realty Income Corporation (O), the <strong><em>rawdata </em></strong>also gives the dividends and stock splits, these are filtered out by checking if [Open] is numeric of value. Data of the current day is also filtered out, for reason that in-day records can still change for the day is <strong><em>NOT</em></strong> done. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></div><newline><newline><div><font face="Aptos Narrow" color=black>&nbsp;</font></div><newline><newline><div>&nbsp;</div>', 'psa_yahoo_stocks', 'o', 'SELECT tsl.[Date]<newline>     , tsl.[Open]<newline>     , tsl.[High]<newline>     , tsl.[Low]<newline>     , tsl.[Close Close price adjusted for splits.]<newline>     , tsl.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.]<newline>     , tsl.[Volume]<newline><newline>FROM [tsl_psa_yahoo_stocks].[tsl_o] AS tsl<newline><newline>WHERE ISNUMERIC(tsl.[Open]) = 1<newline>AND   CONVERT(DATE, tsl.[Date]) < CONVERT(DATE, GETDATE())');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('07090900040c0b0706090a0006140804', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Datum', 'Datum', '1', 'Date', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c02090b0902000c0a0d030f1403', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Open', 'Open', '2', 'Open', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090f0d0607090102050e1401', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'High', 'High', '3', 'High', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c050901080000000c0303140f0d', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Low', 'Low', '4', 'Low', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000c0803070b0904060b09010701140c', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Close', 'Close', '5', 'Close Close price adjusted for splits.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090e00060e0d01040a0001070b140d', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Adjusted Close', 'Adjusted Close', '6', 'Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('07080100060c0002090c0a0202140c03', '000c0a0c060d0e06010e08030509140c', '000b0f06090d0904090d000c05091400', 'Volume', 'Volume', '7', 'Volume', '0', '1');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000a000603080f0009090b02020c1403', '000c0a0c060d0e06010e08030509140c', '06040002070308080001000205051505', 'web', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000b0f06090e0d0302080a06060d140d', '000c0a0c060d0e06010e08030509140c', '030001030306000407070b001b020001', 'https://finance.yahoo.com/quote/', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('03090f0002000c04080d0c010214090d', '000c0a0c060d0e06010e08030509140c', '0601090601040e01050d0b08060c1502', 'web_table_anonymous_web', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00000004090a0906080b0e0500001407', '000c0a0c060d0e06010e08030509140c', '06060e030f000b0104070b080f0c1503', 'O/history/?period1=<@ni_previous_epoch>&period2=<@ni_current_epoch>&filter=history', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('000e0804010b0e0605080e02010c140d', '000c0a0c060d0e06010e08030509140c', '00040c060f030a040007090507190d05', '0', '3');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('0008000d080e0d0d020e0c0008081405', '000c0a0c060d0e06010e08030509140c', 'Incremental', 'tsl.[Date]', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('090b080000090b050909080705140a04', '000c0a0c060d0e06010e08030509140c', 'Minutes', '5', '2025-03-19', '2025-03-31');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('000b0e0507000f0704090d02020d1407', '000c0a0c060d0e06010e08030509140c', '000e0f0104090f0002080e04070f1403');

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

