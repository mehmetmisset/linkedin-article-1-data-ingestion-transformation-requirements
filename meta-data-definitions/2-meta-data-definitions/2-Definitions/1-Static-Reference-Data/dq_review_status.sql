BEGIN
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '01050005010d0a070f000e0701190106', 'Accepted Not OK (to be Validated)', 'DQ Analyst deemed DQ Result as "Accepted Not OKE", waiting on 2nd DQ Analyst/Steward.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '02020f0100000c050406000002190804', 'Assigned to Data Steward', 'DQ Result is assiged to Data Steward to be resolved');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '02030a04060c0106060c080005190a08', 'Under Validation', '2nd DQ Analyst/Steward is Valdiation Conclusion 1st DQ Analyst/Steward.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '05040c020e0c0e0507070c0200190101', 'Assigned', 'DQ Result is Assigned to DQ Analyst.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '0601090601040f0101040b0102011506', 'New', 'DQ Result is New and should be assigned to DQ Analyst.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '06030a05030200060f0c000707190e09', 'Resolved', 'DQ Result is OKE after re-measurement.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '06040f0500000a000404090107011501', 'Under Review', 'DQ Analyst started the Review of the DQ Result.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '06070103060c0a090702090706011505', 'DQ Result Revolved', 'The DQ Result Status of NOK was resolved at the Source by the DQ Analyst/Steward.');
  INSERT INTO tsa_srd.tsa_dq_review_status (id_model, id_dq_review_status, fn_dq_review_status, fd_dq_review_status) VALUES ('4056525440565a52571e595e5656581c', '0f06090507070d0705050c000e190007', 'Accepted Not OK', '2nd DQ Analyst/Steward validated Review of 1st DQ Analyst/Steward.');
END
GO

