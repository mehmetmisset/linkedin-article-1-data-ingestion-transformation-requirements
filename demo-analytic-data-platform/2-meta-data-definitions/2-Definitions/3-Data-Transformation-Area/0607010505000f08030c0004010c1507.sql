/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `0607010505000f08030c0004010c1507`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '0607010505000f08030c0004010c1507', '02090f01060b0d0c090b09031d00080c', '1', 'Stocks (rawdata)', '<div>list of stocks with currencies, code and full name</div>', 'psa_references', 'stock', 'SELECT tsl.[Symbol]<newline>     , tsl.[Name]<newline>     , tsl.[Currency]<newline><newline>FROM [tsl_psa_references].[tsl_stock] AS tsl');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040201090e0c09050302000500190c06', '0607010505000f08030c0004010c1507', '000b0f06090d0904090d000c05091400', 'Stock Code', 'Stock Code', '1', 'Symbol', '1', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0002090606040c00030c0c0303190104', '0607010505000f08030c0004010c1507', '000b0f06090d0904090d000c05091400', 'Stock Name', 'Stock Name', '2', 'Name', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00020a020e0c0c0505040e081b0c0d06', '0607010505000f08030c0004010c1507', '000b0f06090d0904090d000c05091400', 'Stock Currency Code', 'Stock Currency Code', '3', 'Currency', '0', '0');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06050b0706030e07020d09020e011505', '0607010505000f08030c0004010c1507', '01050005010d0e090006090905190d04', 'demoasawedev', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06030e070703080006020c0003001505', '0607010505000f08030c0004010c1507', '0f0609050706090205000f0304190806', 'Yahoo-Blob-SAS-Token', '4');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00030d08030500090306090802190d08', '0607010505000f08030c0004010c1507', '06030a05030d09080607010905190907', 'yahoo', '5');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06030e06030401070e0d010506011500', '0607010505000f08030c0004010c1507', '0600000107030a0807040901020c1503', 'statis_data', '6');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('030d000107030a0105050b0500190105', '0607010505000f08030c0004010c1507', '06070e08050d0c06020d0f05000d1508', 'stocks.csv', '7');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06040c020f000c0105030d020e051500', '0607010505000f08030c0004010c1507', '03000103030d0d080f070a071b010f01', 'utf-8', '8');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('04040e0106020c0002040e020f190e00', '0607010505000f08030c0004010c1507', '06060e030f030c0702020f09030d1503', '1', '9');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('03020e0002060a09020d0b000f190e05', '0607010505000f08030c0004010c1507', '00040c060e060d07060700020f190908', ',', '10');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0f020a090f030109020200010f190a09', '0607010505000f08030c0004010c1507', '030c0a060e010b090100000701190b01', '"', '11');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('02070c0202010f0007000a0905190803', '0607010505000f08030c0004010c1507', '06040002070308080001000205051505', 'abs', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0604090704000e010e000b0603001509', '0607010505000f08030c0004010c1507', '0601090601040e01050d0b08060c1502', 'abs_sas_url_csv', '2');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('0f060d02070309000f0c00050f190f08', '0607010505000f08030c0004010c1507', 'Fullload', 'GETDATE()', '''9999-12-31''');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('05060e0505040b010e020c0600190f01', '0607010505000f08030c0004010c1507', '000e0f0104090f0002080e04070f1403');

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

