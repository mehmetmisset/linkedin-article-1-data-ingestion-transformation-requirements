/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000f0e0007010d0004080903020d1401`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '000f0e0007010d0004080903020d1401', '000c0a0c060c00040308010303001407', '0', 'Calender-Months', 'Provide some description', 'dta_public', 'months', 'SELECT  itr.ni_iteration AS ni_month,<newline>        CASE itr.ni_iteration <newline>            WHEN 1  THEN ''Jan''<newline>            WHEN 2  THEN ''Feb''<newline>            WHEN 3  THEN ''Mar''<newline>            WHEN 4  THEN ''Apr''<newline>            WHEN 5  THEN ''May''<newline>            WHEN 6  THEN ''Jun''<newline>            WHEN 7  THEN ''Jul''<newline>            WHEN 8  THEN ''Aug''<newline>            WHEN 9  THEN ''Sep''<newline>            WHEN 10 THEN ''Oct''<newline>            WHEN 11 THEN ''Nov''<newline>            WHEN 12 THEN ''Dec''<newline>        END AS cd_month,<newline>        CASE itr.ni_iteration <newline>            WHEN 1  THEN ''Januari''<newline>            WHEN 2  THEN ''Februari''<newline>            WHEN 3  THEN ''March''<newline>            WHEN 4  THEN ''April''<newline>            WHEN 5  THEN ''May''<newline>            WHEN 6  THEN ''June''<newline>            WHEN 7  THEN ''July''<newline>            WHEN 8  THEN ''Augustus''<newline>            WHEN 9  THEN ''September''<newline>            WHEN 10 THEN ''Octorber''<newline>            WHEN 11 THEN ''November''<newline>            WHEN 12 THEN ''December''<newline>        END as nm_month,<newline>        CASE itr.ni_iteration <newline>            WHEN 1  THEN 1<newline>            WHEN 2  THEN 1<newline>            WHEN 3  THEN 1<newline>            WHEN 4  THEN 2<newline>            WHEN 5  THEN 2<newline>            WHEN 6  THEN 2<newline>            WHEN 7  THEN 3<newline>            WHEN 8  THEN 3<newline>            WHEN 9  THEN 3<newline>            WHEN 10 THEN 4<newline>            WHEN 11 THEN 4<newline>            WHEN 12 THEN 4<newline>        END AS ni_quarter<newline>    <newline>FROM dta_public.iteration_2m AS itr <newline>WHERE ni_iteration < 13');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040b0c05090d010c0001000c06140104', '000f0e0007010d0004080903020d1401', '050d0006050b0e07050b090c1d0c0d06', 'Name Month', NULL, '3', 'nm_month', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00090107010e0f04050d08000501140d', '000f0e0007010d0004080903020d1401', '0e01000005020b030405090503190101', '# Quater', NULL, '4', 'ni_quarter', '0', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('00080e06090e0105060b0f02020f1403', '000f0e0007010d0004080903020d1401', '0e01000005020b030405090503190101', '# Month', NULL, '1', 'ni_month', '1', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080c0105030f0a060408010708140106', '000f0e0007010d0004080903020d1401', '000e0b00050008010800000102140a0c', 'Code Month', NULL, '2', 'cd_month', '0', '0');

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

