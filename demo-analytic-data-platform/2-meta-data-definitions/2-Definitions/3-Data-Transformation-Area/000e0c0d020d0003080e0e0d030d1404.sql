/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000e0c0d020d0003080e0e0d030d1404`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '000e0c0d020d0003080e0e0d030d1404', '000c0a0c060c00040308010303001407', '0', 'Calander-Dates', 'Provide some description', 'dta_public', 'dates', 'SELECT DATEADD(DAY, (i.ni_iteration-1), CONVERT(DATE, ''1970-01-01'')) AS dt_date<newline>FROM dta_public.iteration_2m AS i<newline>WHERE DATEADD(DAY, (i.ni_iteration-1), CONVERT(DATE, ''1970-01-01'')) < CONVERT(DATE, ''2070-01-01'')');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0c02090a0902010e0102070f1407', '000e0c0d020d0003080e0e0d030d1404', '00090b020009090d09010105040b1406', 'ID Date', '<div>ID of Date in tekst format &quot;yyyymmdd&quot;.</div>', '1', 'id_date', '1', '0');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000f0e0007010d0005000f0c080a1402', '000e0c0d020d0003080e0e0d030d1404', '00080e06090e0105060a0106060e1404', NULL, NULL, '2', 'dt_date', '0', '0');

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

