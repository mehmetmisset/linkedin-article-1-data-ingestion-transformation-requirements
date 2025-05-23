/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000c0a0c060c000403090f0c01091406`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '000c0a0c060c000403090f0c01091406', '000c0a0c060c00040308010303001407', '0', 'Calender-Quarters', 'Provide some description', 'dta_public', 'quarter', 'SELECT itr.ni_iteration                    AS ni_quarter,<newline>       CONCAT(''Q'',       itr.ni_iteration) AS cd_quarter,<newline>       CONCAT(''Quater '', itr.ni_iteration) AS nm_quarter<newline>FROM psa_public.iteration AS itr <newline>WHERE ni_iteration < 5');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0709090004080007050d0d0505140d06', '000c0a0c060c000403090f0c01091406', '0e01000005020b030405090503190101', '# Quarter', NULL, '1', 'ni_quarter', '1', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000e0c0d020d0003080f0e01040d1402', '000c0a0c060c000403090f0c01091406', '000e0b00050008010800000102140a0c', 'Code Quarter', NULL, '2', 'cd_quarter', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c02090a0902010f010c020f1402', '000c0a0c060c000403090f0c01091406', '050d0006050b0e07050b090c1d0c0d06', 'Name Quater', NULL, '3', 'nm_quarter', '0', '0');

  /* ------------------------------ */
  /* `Parameter Values`-definitions */
  /* ------------------------------ */
  -- No Defintions for `Parameter Values`

  /* ------------------------------ */
  /* `SQL for ETL`-definitions      */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

  /* ------------------------------ */
  /* `Schedule`-definitions         */
  /* ------------------------------ */
  -- No Defintions for `SQL for ETL`

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

