BEGIN
  INSERT INTO tsa_srd.tsa_processing_status (id_model, id_processing_status, ni_processing_status, fn_processing_status, fd_processing_status) VALUES ('4056525440565a52571e595e5656581c', '000c0a0c060c080d040c0100040a1400', '1', 'Started', 'Processing Started');
  INSERT INTO tsa_srd.tsa_processing_status (id_model, id_processing_status, ni_processing_status, fn_processing_status, fd_processing_status) VALUES ('4056525440565a52571e595e5656581c', '000c0a0c060c0a05070c0107080b1405', '4', 'Unfinished', 'Processing did not Finished, before "New"-run.');
  INSERT INTO tsa_srd.tsa_processing_status (id_model, id_processing_status, ni_processing_status, fn_processing_status, fd_processing_status) VALUES ('4056525440565a52571e595e5656581c', '000e0c0d020d080202010e0408001401', '3', 'Failed', 'Processing Failed');
  INSERT INTO tsa_srd.tsa_processing_status (id_model, id_processing_status, ni_processing_status, fn_processing_status, fd_processing_status) VALUES ('4056525440565a52571e595e5656581c', '07090900050f00050109010c05140e00', '2', 'Finished', 'Processing Finished');
END
GO

