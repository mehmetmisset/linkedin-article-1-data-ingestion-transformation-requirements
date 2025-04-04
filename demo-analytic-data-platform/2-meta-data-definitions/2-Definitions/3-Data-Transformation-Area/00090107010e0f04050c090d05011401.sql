/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `00090107010e0f04050c090d05011401`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '00090107010e0f04050c090d05011401', '000c0a0c060c00040308010303001407', '1', '8-Iteration', 'Provide some description', 'psa_public', 'iteration', 'SELECT 1 AS ni_iteration UNION ALL<newline>SELECT 2 AS ni_iteration UNION ALL<newline>SELECT 3 AS ni_iteration UNION ALL<newline>SELECT 4 AS ni_iteration UNION ALL<newline>SELECT 5 AS ni_iteration UNION ALL<newline>SELECT 6 AS ni_iteration UNION ALL<newline>SELECT 7 AS ni_iteration UNION ALL<newline>SELECT 8 AS ni_iteration');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000c0803070a0b0401010c0c080a140d', '00090107010e0f04050c090d05011401', '0e01000005020b030405090503190101', NULL, NULL, '1', 'ni_iteration', '1', '0');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0104080502050102020c080901190d02', '00090107010e0f04050c090d05011401', '0601090601040e01050d0b08060c1502', 'sql', '2');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06030d080400010907040a0505001500', '00090107010e0f04050c090d05011401', '06040002070308080001000205051505', 'n/a', '1');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0f06090507030c0704040d070e190800', '00090107010e0f04050c090d05011401', '000d0904070f0a0308090b04050c1405', 'misset.synology.me, 1433', '3');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('06040a0706040e0707060d07040c1509', '00090107010e0f04050c090d05011401', '02090f0106080c0102000f051d0b0106', 'sa', '4');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('00060000050608010504080705190a04', '00090107010e0f04050c090d05011401', '0001010102010b03080d010104081403', 'meta', '5');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('060100060203000801050f0500190804', '00090107010e0f04050c090d05011401', '000c0003020c0f06090f0e0101011403', 'n/a', '6');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0f040a06040d0d000f06010207190b00', '00090107010e0f04050c090d05011401', '00010907040f0f00050d0000060f1402', 'n/a', '7');
  INSERT INTO tsa_dta.tsa_parameter_value (id_parameter_value, id_dataset, id_parameter, tx_parameter_value, ni_parameter_value) VALUES ('0304090207030806030c0a0803190d01', '00090107010e0f04050c090d05011401', '0e0c080806030c00040c08050e190e04', 'meta-sa-password', '8');

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('06010b09000101010500090103071507', '00090107010e0f04050c090d05011401', 'Fullload', 'GETDATE()', '"9999-12-31"');

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('06010b0900000c0305070a0402041502', '00090107010e0f04050c090d05011401', 'Minutes', '5', '2025-03-05', '2025-03-30');

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

