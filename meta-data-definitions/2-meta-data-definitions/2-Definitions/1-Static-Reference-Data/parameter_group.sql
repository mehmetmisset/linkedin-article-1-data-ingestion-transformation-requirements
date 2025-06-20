BEGIN
  INSERT INTO tsa_srd.tsa_parameter_group (id_model, id_parameter_group, cd_parameter_group, fn_parameter_group, fd_parameter_group) VALUES ('4056525440565a52571e595e5656581c', '000c0a0c060c090c090b01050300140d', 'sql_user_password', 'SQL Server', 'Parameters related to SQL Server');
  INSERT INTO tsa_srd.tsa_parameter_group (id_model, id_parameter_group, cd_parameter_group, fn_parameter_group, fd_parameter_group) VALUES ('4056525440565a52571e595e5656581c', '02060d000f060e00060d010401190d07', 'adf', 'Azure Data Factory', 'Parameter for controlling the flow within Azure Data Facotry');
  INSERT INTO tsa_srd.tsa_parameter_group (id_model, id_parameter_group, cd_parameter_group, fn_parameter_group, fd_parameter_group) VALUES ('4056525440565a52571e595e5656581c', '05040c020e0c01090f070d0200190801', 'abs_sas_url_csv', 'Azure Blob Storage (SAS/CSV)', 'Parameters for accessing an "CSV" file on the  Azure Blob Storage via a SAS-url.');
  INSERT INTO tsa_srd.tsa_parameter_group (id_model, id_parameter_group, cd_parameter_group, fn_parameter_group, fd_parameter_group) VALUES ('4056525440565a52571e595e5656581c', '06010b090001080802050a0906031500', 'abs_sas_url_xls', 'Azure Blob Storage (SAS/Excel)', 'Parameters for accessing an "Excel" file on the  Azure Blob Storage via a SAS-url.');
  INSERT INTO tsa_srd.tsa_parameter_group (id_model, id_parameter_group, cd_parameter_group, fn_parameter_group, fd_parameter_group) VALUES ('4056525440565a52571e595e5656581c', '06040a0706040b0600060803050d1506', 'web_table_anonymous_web', 'Anonymous Web Table', 'Publicly aviable webtable.');
END
GO

