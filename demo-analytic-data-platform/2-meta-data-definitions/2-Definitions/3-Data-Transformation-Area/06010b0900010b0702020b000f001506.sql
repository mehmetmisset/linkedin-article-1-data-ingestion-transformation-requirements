/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `06010b0900010b0702020b000f001506`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '06010b0900010b0702020b000f001506', '000f0e0007000e03020c0a0007091406', '0', 'Dim Currency', '<div>Convert Staging data of Currency to Dimension</div>', 'dta_dimensions', 'currency', 'SELECT [cur].[Currency] AS [cd_currency]<newline>     , [cur].[Name]     AS [nm_currency]<newline><newline>FROM psa_references.currency AS cur<newline><newline>WHERE cur.Currency IS NOT NULL');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('06030d0804000b0707010e030e071503', '06010b0900010b0702020b000f001506', '050d0006050b0e07050b090c1d0c0d06', 'Name Currency', '<div>Name of Currency</div>', '2', 'nm_currency', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('06020d070f040c01030c080006011501', '06010b0900010b0702020b000f001506', '000e0b00050008010800000102140a0c', 'Code Currency', '<div>Code of Currency</div>', '1', 'cd_currency', '1', '0');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  -- No Defintions for `Parameter Values`

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_ingestion_etl (id_ingestion_etl, id_dataset, nm_processing_type, tx_sql_for_meta_dt_valid_from, tx_sql_for_meta_dt_valid_till) VALUES ('06020f05010d01090506000106011502', '06010b0900010b0702020b000f001506', NULL, NULL, NULL);

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('010408050206000001040b0500190a02', '06010b0900010b0702020b000f001506', 'Minutes', '5', '2025-03-05', '2025-03-30');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('06050f030f030c000f070e0907031500', '06010b0900010b0702020b000f001506', '000c0a0c060c080d070d0c00020b1402');

  /* ------------------------ */
  /* `DQ Control`-definitions */
  /* ------------------------ */
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '06010b0900010b0803050e0401061501', '06070e08050d0d09000c0e0706011509', '06010b0900010b0702020b000f001506', 'DQC-0002', 'cd_currency is filled', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, CASE <newline>         WHEN cur.cd_currency IS NULL        <newline>         THEN ''NOK''<newline>            <newline>         WHEN ISNULL(cur.cd_currency,'''') = '''' <newline>         THEN ''NOK''<newline>         <newline>         ELSE ''OKE''<newline><newline>       END AS id_dq_result_status<newline><newline>FROM dta_dimensions.currency AS cur', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '06020f05010d0000000109040e0c1505', '06060e030f0008010f0c080000071501', '06010b0900010b0702020b000f001506', 'DQC-0003', 'cd_currency has valid code', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, CASE <newline>         WHEN ISNULL(cur.cd_currency,'''') LIKE ''[A-Z]'' <newline>         THEN ''OKE''<newline>         <newline>         ELSE ''NOK''<newline><newline>       END AS id_dq_result_status<newline><newline>FROM dta_dimensions.currency AS cur', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_control (id_dq_requirement, id_development_status, id_dq_control, id_dq_dimension, id_dataset, cd_dq_control, fn_dq_control, fd_dq_control, tx_dq_control_query, dt_valid_from, dt_valid_till) VALUES ('06010b09000108000001010805041503', '06010b0900010908010d0e0404021503', '06050f030f030c020e060e0706041506', '0600000107030b09070d0f00050c1509', '06010b0900010b0702020b000f001506', 'DQC-0004', 'cd_currency is filled is valid code', NULL, 'SELECT cur.meta_ch_bk AS id_dataset_1_bk, <newline>          ''n/a''                  AS id_dataset_2_bk, <newline>          ''n/a''                  AS id_dataset_3_bk, <newline>          ''n/a''                  AS id_dataset_4_bk, <newline>          ''n/a''                  AS id_dataset_5_bk, CASE <newline>         WHEN ISNULL(cur.cd_currency,''n/a'') IN (''USD'', ''CAD'', ''EUR'') <newline>         THEN ''OKE''<newline><newline>         ELSE ''NOK''<newline><newline>       END AS id_dq_result_status<newline><newline>FROM dta_dimensions.currency AS cur', '1900-01-01', '9999-12-31');

  /* -------------------------- */
  /* `DQ Threshold`-definitions */
  /* -------------------------- */
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('06030d0804000b080407090507071504', '06020f05010d0f06040d0d0105061508', '06010b0900010b0803050e0401061501', '0.925000', '0.974999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('06020d070f040c020e000e07060d1507', '06020d070f040b080f010e040f051501', '06010b0900010b0803050e0401061501', '0.000000', '0.924999', '1900-01-01', '9999-12-31');
  INSERT INTO tsa_dqm.tsa_dq_threshold (id_dq_threshold, id_dq_risk_level, id_dq_control, nr_dq_threshold_from, nr_dq_threshold_till, dt_valid_from, dt_valid_till) VALUES ('01040805030d0f0707050d090e190b04', '06050f030f030a0805030f08020d1505', '06010b0900010b0803050e0401061501', '0.975000', '1.000000', '1900-01-01', '9999-12-31');
  
END
GO

