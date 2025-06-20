BEGIN
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '00040c060f00010702010d0005190a01', 'Uniqueness', 'Ensuring that each data entry is distinct and not duplicated.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '0300010303060f02020600081b050f05', 'Timeliness', 'The relevance of data at a specific point in time, ensuring it is up-to-date.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '030c0a060f0c090501000c0700190f02', 'Integrity', 'The extent to which data is correctly linked and related within and across datasets.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '0600000107030b09070d0f00050c1509', 'Accuracy', 'The extent to which data correctly reflects the real-world objects or events it represents.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '06040a07060408080e070c0803051501', 'Consistency', 'Ensuring that data is the same across different datasets and systems.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '06060e030f0008010f0c080000071501', 'Validity', 'The degree to which data conforms to defined formats, rules, and values.');
  INSERT INTO tsa_srd.tsa_dq_dimension (id_model, id_dq_dimension, fn_dq_dimension, fd_dq_dimension) VALUES ('4056525440565a52571e595e5656581c', '06070e08050d0d09000c0e0706011509', 'Completeness', 'The degree to which all required data is present.');
END
GO

