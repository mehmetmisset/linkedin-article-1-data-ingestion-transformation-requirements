/* -------------------------------------------------------------------------- */
/* Definitions for `Dataset` and `related`-objects like `attributes`,         */
/* `DQ Controls`, `DQ Thresholds` and `related Group(s)`.                     */
/* -------------------------------------------------------------------------- */
/*                                                                            */
/* ID Dataset : `000d090502010a0005090e070801140c`                            */
/*                                                                            */
/* -------------------------------------------------------------------------- */
BEGIN

  /* --------------------- */
  /* `Dataset`-definitions */
  /* --------------------- */
  INSERT INTO tsa_dta.tsa_dataset (id_development_status, id_dataset, id_group, is_ingestion, fn_dataset, fd_dataset, nm_target_schema, nm_target_table, tx_source_query) VALUES ('06010b0900010908010d0e0404021503', '000d090502010a0005090e070801140c', '000b0e0507000f00090f0803020c140d', '0', 'Union of O and RF', '<div>Union of <strong>Realty Income Corporation</strong> (O) and <strong>Regions Financial Corporation</strong> (RF) for Stocks.</div>', 'dta_yahoo_stocks', 'stocks_u01_v02', 'SELECT ''O''          AS [cd_stock]<newline>     , stk.[Date]   AS [dt_stock_exchange_end_of_day]<newline>     , stk.[Volume] AS [nb_stock_exchanged_volume]<newline>     , stk.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.] AS [nr_stock_exchanged_prize]<newline><newline>FROM [psa_yahoo_stocks].[o] AS stk<newline><newline>UNION ALL<newline><newline>SELECT ''RF''         AS [cd_stock]<newline>     , stk.[Date]   AS [dt_stock_exchange_end_of_day]<newline>     , stk.[Volume] AS [nb_stock_exchanged_volume]<newline>     , stk.[Adj Close Adjusted close price adjusted for splits and dividend and/or capital gain distributions.] AS [nr_stock_exchanged_prize]<newline><newline>FROM [psa_yahoo_stocks].[rf] AS stk');
  
  /* ----------------------- */
  /* `Attribute`-definitions */
  /* ----------------------- */
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000d090407000f0d020a010207081407', '000d090502010a0005090e070801140c', '000e0b00050008010800000102140a0c', 'Datum', 'Datum', '1', 'cd_stock', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('02090f01060b0e070701090c1d0f0a02', '000d090502010a0005090e070801140c', '00080e06090e0105060a0106060e1404', 'Open', 'Open', '2', 'dt_stock_exchange_end_of_day', '1', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('0001010105090b03080e0806050f1403', '000d090502010a0005090e070801140c', '02060d000f000009070d08030e190f01', 'High', 'High', '3', 'nb_stock_exchanged_volume', '0', '1');
  INSERT INTO tsa_dta.tsa_attribute (id_attribute, id_dataset, id_datatype, fn_attribute, fd_attribute, ni_ordering, nm_target_column, is_businesskey, is_nullable) VALUES ('000c0003020e0a05080d0d040408140c', '000d090502010a0005090e070801140c', '0604000207030e0103070d0304041501', 'Low', 'Low', '4', 'nr_stock_exchanged_prize', '0', '1');

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
  INSERT INTO tsa_dta.tsa_schedule (id_schedule, id_dataset, cd_frequency, ni_interval, dt_start, dt_end) VALUES ('0001090704010e02030d0001030f1405', '000d090502010a0005090e070801140c', 'Minutes', '5', '2025-03-01', '2026-03-30');

  /* -------------------------------- */
  /* `Related (Group(s))`-definitions */
  /* -------------------------------- */
  INSERT INTO tsa_ohg.tsa_related (id_related, id_dataset, id_group) VALUES ('0309090006000f02000e000d00140a05', '000d090502010a0005090e070801140c', '000f0e0007000e03020c0a0007091406');

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

