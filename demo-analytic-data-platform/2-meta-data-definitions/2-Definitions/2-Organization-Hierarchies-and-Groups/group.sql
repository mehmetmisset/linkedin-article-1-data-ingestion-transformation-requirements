BEGIN
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000c0a0c060c080d070d0c00020b1402', '1-XR (Exchange Rates)', '<div>Exchange Rates</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000e0f0104090f0002080e04070f1403', '1-PS (Persistent-Staging-Area)', '<div>1-Persistent-Staging-Area</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000f0c0209090a0d09080e0d060b140d', 'YF (Yahoo Finance)', '<div>Yahoo Finance</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000f0e0007000e03020c0a0007091406', '2-DT (Data-Transformation-Area)', '<div>2-Data-Transformation-Area</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000c0a0c060c00040308010303001407', 'PD (Public Datasets)', '<div>Public Datasets</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000c0a0c060d0d03090f0d02080c1400', '1-YS (Yahoo Stocks)', '<div>Yahoo Stock Price Information (rawdata)</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000d090407000f0301090f0206091401', '3-PM (Presentation-Model-Area)', '<div>3-Presentation-Model-Area</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('02090f01060b0d0c090b09031d00080c', '1-SR (Static-Reference-Data)', '<div>Static Reference Data (rawdata)</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('06030a05030c0e0004010e0907190907', '2-SP (Stock Prizes)', '<div>Aggregated Stock Prizes from Yahoo Stock Information</div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000a000603080f0201000d0d09081401', '1-YD (Yahoo Dividends)', '<div><font color=black>Yahoo Stock Dividends Information (rawdata)</font></div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('000b0e0507000f00090f0803020c140d', '2-YS (Yahoo Stocks)', '<div><font color=black>Yahoo Stock Dividends Information (aggregated)</font></div>');
  INSERT INTO tsa_ohg.tsa_group (id_group, fn_group, fd_group) VALUES ('0008080609090003090f0f07020b1406', '2-YD (Yahoo Dividends)', '<div><font color=black>Yahoo Stock Dividends Information (aggregated)</font></div>');
END
GO

