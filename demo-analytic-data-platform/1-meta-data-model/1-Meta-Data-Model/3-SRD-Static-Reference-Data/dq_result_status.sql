﻿CREATE TABLE srd.dq_result_status (

    /* Data Attributes */
    id_dq_result_status CHAR(128)     NULL,
    fn_dq_result_status NVARCHAR(128) NULL,
    fd_dq_result_status NVARCHAR(999) NULL,

    /* Metadata Attributes */
    meta_dt_valid_from DATETIME NOT NULL,
    meta_dt_valid_till DATETIME NOT NULL,
    meta_is_active     BIT      NOT NULL,
    meta_ch_rh         CHAR(32) NOT NULL,
    meta_ch_bk         CHAR(32) NOT NULL,
    meta_ch_pk         CHAR(32) NOT NULL, 

    /* Primarykey */
    CONSTRAINT srd_dq_result_status_pk PRIMARY KEY (meta_ch_pk),
    
);
GO

/*  Table Metadata Definitinions: */
EXEC sp_addextendedproperty @name = N'metadata', @value = N'{
    "fn" : "DQ Result Status",
    "fd" : "Business oriented \"Names\" and \"Descriptions\" of \"DQ Result Status\".",
    "bk" : ["fn_dq_result_status"]
}',
@level0type = N'SCHEMA', @level0name = N'srd',
@level1type = N'TABLE',  @level1name = N'dq_result_status';
GO

/*  Column Metadata Definitinions: */
EXEC sp_addextendedproperty @name = N'metadata', @value = N'{
    "fn" : "ID DQ Result Status",
    "fd" : "Unique Identiefier for srd.dq_result_status"
}',
@level0type = N'SCHEMA', @level0name = N'srd',
@level1type = N'TABLE',  @level1name = N'dq_result_status',
@level2type = N'COLUMN', @level2name = N'id_dq_result_status';
GO
EXEC sp_addextendedproperty @name = N'metadata', @value = N'{
    "fn" : "Functional Name",
    "fd" : "The \"Functional Name\" of the \"DQ Result Status\"."
}',
@level0type = N'SCHEMA', @level0name = N'srd',
@level1type = N'TABLE',  @level1name = N'dq_result_status',
@level2type = N'COLUMN', @level2name = N'fn_dq_result_status';
GO
EXEC sp_addextendedproperty @name = N'metadata', @value = N'{
    "fn" : "Functional Description",
    "fd" : "The \"Functional Description\" of the \"DQ Result Status\"."
}',
@level0type = N'SCHEMA', @level0name = N'srd',
@level1type = N'TABLE',  @level1name = N'dq_result_status',
@level2type = N'COLUMN', @level2name = N'fd_dq_result_status';
GO