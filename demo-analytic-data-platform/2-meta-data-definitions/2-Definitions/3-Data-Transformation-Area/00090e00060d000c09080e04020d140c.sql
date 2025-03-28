/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `00090e00060d000c09080e04020d140c`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('010408050302010500060b0207190003', '00090e00060d000c09080e04020d140c', '000c0a0c060c00040308010303001407', '0', '2M Iterations', '<div>2 million Iterations</div>', 'dta_public', 'iteration_2m', 'SELECT ROW_NUMBER() OVER (ORDER BY ir0.ni_iteration) AS ni_iteration<newline>FROM psa_public.iteration AS ir0        /* 8^1 => 8 Records */<newline>JOIN psa_public.iteration AS ir1 ON 1=1 /* 8^2 => 64 Records */<newline>JOIN psa_public.iteration AS ir2 ON 1=1 /* 8^3 => 512 Records */<newline>JOIN psa_public.iteration AS ir3 ON 1=1 /* 8^4 => 4.096 Records */<newline>JOIN psa_public.iteration AS ir4 ON 1=1 /* 8^5 => 32.768 Records */<newline>JOIN psa_public.iteration AS ir5 ON 1=1 /* 8^6 => 262.144 Records */<newline>JOIN psa_public.iteration AS ir6 ON 1=1 /* 8^7 => 2.097.152 Records */');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('040f0e0406000b0c0608000c05140d01', '00090e00060d000c09080e04020d140c', '0e01000005020b030405090503190101', 'Iteration', '<div>Iteration</div>', '1', 'ni_iteration', '1', '0');

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

