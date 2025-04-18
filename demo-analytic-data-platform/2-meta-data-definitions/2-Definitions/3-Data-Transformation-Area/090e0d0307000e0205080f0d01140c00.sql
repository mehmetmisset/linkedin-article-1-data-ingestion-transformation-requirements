/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `090e0d0307000e0205080f0d01140c00`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '090e0d0307000e0205080f0d01140c00', '000b0e0507000f00090f0803020c140d', '0', 'Union of ABN.AS and NVIDIA', '<div>Union of <strong>ABN Amro N.V. </strong>(ABN.AS) and <strong>NVIDIA Corporation</strong> (NVDA) for Stocks.</div>', 'dta_yahoo_stocks', 'stocks_u01_v01', 'SELECT ''ABN.AS''     AS [cd_stock]<newline>     , stk.[Date]   AS [dt_stock_exchange_end_of_day]<newline>     , stk.[Volume] AS [nb_stock_exchanged_volume]<newline>     , stk.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.] AS [nr_stock_exchanged_prize]<newline><newline>FROM [psa_yahoo_stocks].[abnas] AS stk<newline><newline>UNION ALL<newline><newline>SELECT ''NVIDIA''     AS [cd_stock]<newline>     , stk.[Date]   AS [dt_stock_exchange_end_of_day]<newline>     , stk.[Volume] AS [nb_stock_exchanged_volume]<newline>     , stk.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.] AS [nr_stock_exchanged_prize]<newline><newline>FROM [psa_yahoo_stocks].[nvidia] AS stk');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('07090a01070f0b01040e0f070814080d', '090e0d0307000e0205080f0d01140c00', '000e0b00050008010800000102140a0c', 'Datum', 'Datum', '1', 'cd_stock', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('080e0f0d080c090406010c0c04140d02', '090e0d0307000e0205080f0d01140c00', '00080e06090e0105060a0106060e1404', 'Open', 'Open', '2', 'dt_stock_exchange_end_of_day', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0509080701000d02040a0b0601140e00', '090e0d0307000e0205080f0d01140c00', '02060d000f000009070d08030e190f01', 'High', 'High', '3', 'nb_stock_exchanged_volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('030b0b0c02080e020009010401140c01', '090e0d0307000e0205080f0d01140c00', '0604000207030e0103070d0304041501', 'Low', 'Low', '4', 'nr_stock_exchanged_prize', '0', '1');

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
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('0801090d030a0a0d030c0d0207140101', '090e0d0307000e0205080f0d01140c00', 'Minutes', '5', '2025-03-01', '2026-03-30');

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

