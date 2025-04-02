﻿DROP SYNONYM IF EXISTS f;
GO

CREATE SYNONYM f FOR mdm.usp_html_file_text;
GO

DROP PROCEDURE IF EXISTS ##build_html_file_dataset; 
GO

CREATE PROCEDURE ##build_html_file_dataset 
  
  @ip_id_dataset   CHAR(32),
  @ip_is_debugging BIT = 0

AS DECLARE

  /* JSON-Array to hold Infromation for the HTML text. */
  @ni_json_array_index        INT,                                 
  @mx_json_array_index        INT,                                 
  @tx_json_dataset            NVARCHAR(MAX) = (SELECT * FROM tsa_dta.tsa_dataset                WHERE id_dataset = @ip_id_dataset FOR JSON AUTO),
  @tx_json_development_status NVARCHAR(MAX) = (SELECT * FROM tsa_srd.tsa_development_status     WHERE id_development_status = (SELECT id_development_status FROM tsa_dta.tsa_dataset WHERE id_dataset = @ip_id_dataset) FOR JSON AUTO),
  @tx_json_group              NVARCHAR(MAX) = (SELECT * FROM tsa_ohg.tsa_group                  WHERE id_group = (SELECT id_group FROM tsa_dta.tsa_dataset WHERE id_dataset = @ip_id_dataset) FOR JSON AUTO),
  @tx_json_attribute          NVARCHAR(MAX) = (SELECT * FROM tsa_dta.tsa_attribute              WHERE id_dataset = @ip_id_dataset FOR JSON AUTO),
  @tx_json_ingestion_etl      NVARCHAR(MAX) = (SELECT * FROM tsa_dta.tsa_ingestion_etl          WHERE id_dataset = @ip_id_dataset FOR JSON AUTO),
  @tx_json_parameter_value    NVARCHAR(MAX) = (SELECT nm_parameter, tx_parameter_value, ni_parameter_value FROM (SELECT nm_parameter, tx_parameter_value, ni_parameter_value FROM tsa_dta.tsa_parameter_value AS val JOIN tsa_srd.tsa_parameter AS par ON par.id_parameter = val.id_parameter WHERE val.id_dataset = @ip_id_dataset) AS par ORDER BY par.ni_parameter_value FOR JSON AUTO),
  
  /* JSON-Array and helpers to hold Infromation for the HTML text. */
  @ni_prt INT,
  @mx_prt INT,
  @tx_prt NVARCHAR(MAX) = (SELECT * FROM tsa_dta.tsa_transformation_part WHERE id_dataset = @ip_id_dataset FOR JSON AUTO),
  
  @ni_dst INT,
  @mx_dst INT,
  @tx_dst NVARCHAR(MAX), /* Will be loaded with only the records of id_transformation_part */
  
  @ni_map INT,
  @mx_map INT,
  @tx_map NVARCHAR(MAX), /* Will be loaded with only the records of id_transformation_part */

  /* Helpers File Text*/
  @id CHAR(32)      = @ip_id_dataset,
  @db BIT           = @ip_is_debugging,
  @tx NVARCHAR(MAX) = '',
  @nl NVARCHAR(1)   = CHAR(10),
  @st NVARCHAR(32),
  @cl NVARCHAR(32);

BEGIN

  IF (1=1 /* Build HTML-file */) BEGIN
    
    /* Clean out existing Text */
    DELETE FROM mdm.html_file_text WHERE id_dataset = @ip_id_dataset;

    IF (1=1 /* Build <head> part of file. */) BEGIN
      EXEC f @id, @tx; SET @tx = N'<!DOCTYPE html>';
      EXEC f @id, @tx; SET @tx = N'<html lang="en-US" content="charset=UTF-8">';
      EXEC f @id, @tx; SET @tx = N'  ';
      EXEC f @id, @tx; SET @tx = N'  <title>Definitions of "' + mdm.json_value(0, @tx_json_dataset, 'fn_dataset') + '"</title>';
      EXEC f @id, @tx; SET @tx = N'  ';
      EXEC f @id, @tx; SET @tx = N'    <head>';
      EXEC f @id, @tx; SET @tx = N'      ';
      EXEC f @id, @tx; SET @tx = N'      <meta charset="UTF-8">';
      EXEC f @id, @tx; SET @tx = N'      <meta http-equiv="Content-Type"          content="text/html; charset=UTF-8">';
      EXEC f @id, @tx; SET @tx = N'      <meta http-equiv="X-UA-Compatible"       content="IE=edge">';
      EXEC f @id, @tx; SET @tx = N'      <meta name="viewport"                    content="width=device-width, initial-scale=1">';
      EXEC f @id, @tx; SET @tx = N'      <meta name="msapplication-tap-highlight" content="no">';
      EXEC f @id, @tx; SET @tx = N'      ';
      EXEC f @id, @tx; SET @tx = N'      <link rel="stylesheet" href="../../css/document-tree.css">';
      EXEC f @id, @tx; SET @tx = N'      <link rel="stylesheet" href="../../css/roboto.css">';
      EXEC f @id, @tx; SET @tx = N'      <link rel="stylesheet" href="../../css/mermaid.css" />';
      EXEC f @id, @tx; SET @tx = N'      <link rel="stylesheet" href="../../css/material_icons.css" />';
      EXEC f @id, @tx; SET @tx = N'      ';
      EXEC f @id, @tx; SET @tx = N'      <script type="text/javascript" src="../../js/mermaid.js"></script>';
      EXEC f @id, @tx; SET @tx = N'      <script type="text/javascript" src="../../js/jquery-2.1.1.min.js"></script>';
      EXEC f @id, @tx; SET @tx = N'      ' + mdm.html_code_block_head_part();
      EXEC f @id, @tx; SET @tx = N'      ';
      EXEC f @id, @tx; SET @tx = N'    </head>';
      EXEC f @id, @tx; SET @tx = N'    ';
    END
    IF (1=1 /* Build <body> part of file. */) BEGIN
      
      /* Determine the Color of the Status. */
      SET @st = mdm.json_value(0, @tx_json_development_status, 'nm_development_status')
      SET @cl = CASE 
         WHEN @st = 'Acceptance'   THEN 'orange'
         WHEN @st = 'Ad Hoc'       THEN 'blue'
         WHEN @st = 'Out-of-Scope' THEN 'grey'
         WHEN @st = 'Development'  THEN 'red'
         WHEN @st = 'Production'   THEN 'green' ELSE 'purple'
       END;

      IF (1=1 /* "Dataset"-name and desctiption */) BEGIN
        EXEC f @id, @tx; SET @tx = N'    <body>';
        EXEC f @id, @tx; SET @tx = N'    ';
        EXEC f @id, @tx; SET @tx = N'      <h2>Dataset : ' + mdm.json_value(0, @tx_json_dataset, 'fn_dataset')  + '</h2>';
        EXEC f @id, @tx; SET @tx = N'      '
        EXEC f @id, @tx; SET @tx = N'      <p><u><b>Status :</b></u><i><b style="color:' + @cl +';">' + @st + '</b></i></p>'
        EXEC f @id, @tx; SET @tx = N'      '
        EXEC f @id, @tx; SET @tx = N'      <p><u><b>Group :</b></u><i>' + ISNULL(mdm.json_value(0, @tx_json_group, 'nm_group'), 'n/a') + '</b></i></p>'
        EXEC f @id, @tx; SET @tx = N'      '
        EXEC f @id, @tx; SET @tx = N'      <h4><u>Description</u></h4>'
        EXEC f @id, @tx; SET @tx = N'      <p>' + ISNULL(mdm.json_value(0, @tx_json_dataset, 'fd_dataset'), '/n/a') + '</p>';
        EXEC f @id, @tx; SET @tx = N'      '
        EXEC f @id, @tx; SET @tx = N'      ' + mdm.html_code_block_body_part (mdm.json_value(0, @tx_json_dataset, 'tx_source_query'));
        EXEC f @id, @tx; SET @tx = N'      ';
      END

      IF (1=1 /* Technical Properties */) BEGIN
        EXEC f @id, @tx; SET @tx = N'      <h3>Technical Properties :</h3>'
        EXEC f @id, @tx; SET @tx = N'      <p>The list of properties below is used by Azure Data Factory (ADF) select the correct `Copy Activity` and provide the correct `Parameters`.</p>'
        EXEC f @id, @tx; SET @tx = N'      <br>' 
      END

      IF (1=1 /* Build HTML table for "Attributes". */) BEGIN
        EXEC f @id, @tx; SET @tx = N'      <b><i>Target : <b><i>' + mdm.json_value(0, @tx_json_dataset, 'nm_target_schema') + '.' + mdm.json_value(0, @tx_json_dataset, 'nm_target_table')
        EXEC f @id, @tx; SET @tx = N'      <table>'
        EXEC f @id, @tx; SET @tx = N'        <tr><b><i>'
        EXEC f @id, @tx; SET @tx = N'          <th>#          </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Primarykey </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Nullable   </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Name       </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Column     </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Datatype   </th>'
        EXEC f @id, @tx; SET @tx = N'          <th>Description</th>'
        EXEC f @id, @tx; SET @tx = N'        </b></i></tr>'           
        SET @mx_json_array_index = mdm.json_count(@tx_json_attribute); SET @ni_json_array_index = 0; WHILE (@ni_json_array_index < @mx_json_array_index) BEGIN 
            EXEC f @id, @tx; SET @tx = N'        <tr>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'ni_ordering'),                      '0') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' +    IIF(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'is_businesskey') = 'false', 'No', 'Yes') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' +    IIF(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'is_nullable')    = 'false', 'No', 'Yes') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'fn_attribute'),                   'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'nm_target_column'),               'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'cd_datatype'),                    'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_attribute, 'fd_attribute'),                   'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'        </tr>'
          SET @ni_json_array_index += 1; END
        EXEC f @id, @tx; SET @tx = N'      </table>'
      END       
      
      IF (mdm.json_value(0, @tx_json_dataset, 'is_ingestion') = 'true' /* The Parameters, Processing Type and SQL statemenets ETL of "Ingestion"-dataset. */) BEGIN
        EXEC f @id, @tx; SET @tx = N'      <h3>Technical Properties :</h3>'
        EXEC f @id, @tx; SET @tx = N'      <p>The list of properties below is used by Azure Data Factory (ADF) select the correct `Copy Activity` and provide the correct `Parameters`.</p>'
        IF (1=1 /* List of "Parameter" */) BEGIN
          EXEC f @id, @tx; SET @tx = N'      <table>'
          EXEC f @id, @tx; SET @tx = N'        <tr><b><i><th>Property Name</th><th>Properyt Value</th></b></i></tr>'
          EXEC f @id, @tx; SET @tx = N'        <tr><td><b><i>Is Ingestion Dataset</b></i></td><td>Yes</td></tr>'
          SET @mx_json_array_index = mdm.json_count(@tx_json_parameter_value); SET @ni_json_array_index = 0; WHILE (@ni_json_array_index < @mx_json_array_index) BEGIN 
            EXEC f @id, @tx; SET @tx = N'        <tr>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_parameter_value, 'nm_parameter'),       'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'          <td>' + ISNULL(mdm.json_value(@ni_json_array_index, @tx_json_parameter_value, 'tx_parameter_value'), 'n/a') + '</td>'
            EXEC f @id, @tx; SET @tx = N'        </tr>'
          SET @ni_json_array_index += 1; END          
          EXEC f @id, @tx; SET @tx = N'      </table>'
        END
        EXEC f @id, @tx; SET @tx = N'      '
        EXEC f @id, @tx; SET @tx = N'      <h3>Extract Load & Transform (ELT) Properties :</h3>'
        EXEC f @id, @tx; SET @tx = N'      <p>These properties determine which "source"-attribute if any is used for calculatie the "Technical Valid"-from and till values.</p>'
        EXEC f @id, @tx; SET @tx = N'      <table>'
        EXEC f @id, @tx; SET @tx = N'        <tr><b><i><th>Property Name</th><th>Properyt Value</th></b></i></tr>'
        EXEC f @id, @tx; SET @tx = N'        <tr><td><b><i>ELT Processing Type</b></i></td>'          + ISNULL(mdm.json_value(0, @tx_json_ingestion_etl, 'nm_processing_type'), 'n/a' )            + '</td></tr>'
        EXEC f @id, @tx; SET @tx = N'        <tr><td><b><i>SQL for Technical Valid From</b></i></td>' + ISNULL(mdm.json_value(0, @tx_json_ingestion_etl, 'tx_sql_for_meta_dt_valid_from'), 'n/a' ) + '</td></tr>'
        EXEC f @id, @tx; SET @tx = N'        <tr><td><b><i>SQL for Technical Valid Till</b></i></td>' + ISNULL(mdm.json_value(0, @tx_json_ingestion_etl, 'tx_sql_for_meta_dt_valid_till'), 'n/a' ) + '</td></tr>'
        EXEC f @id, @tx; SET @tx = N'      </table>'
      END      

      IF (mdm.json_value(0, @tx_json_dataset, 'is_ingestion') = 'false' /* Transformation consist of "Transformation"-part, per part a utilized mapping of columns and utilized datasets. */) BEGIN

        EXEC f @id, @tx; SET @tx = N'      <h2>Transformations</h2>';
        EXEC f @id, @tx; SET @tx = N'      <p>This Transformations has # ' + CONVERT(NVARCHAR(4), mdm.json_count(@tx_prt)) + ' Part(s). Ever part in the SQL code UNION-ed together, this way <b><i>Data</b></i> or <b><i>Information</b></i> from two or more source or transformation logic can be combined into a new <b><i>Dataset</b></i>. Per <b><i>Union</b></i> the <b><i>Mapping of the "<b><i>Attributes</b></i>" are listed and the the "<b><i>Source</b></i>"-datasts. Also the SQL query for technical reference is documented here.</p>';

        /* Build HTML for "Transformation Part(s)" */
        SET @ni_prt = 0; SET @mx_prt = mdm.json_count(@tx_prt); WHILE (@ni_prt < @mx_prt) BEGIN 
          
          --PRINT('id_transformation_part : "' + mdm.json_value(@ni_prt, @tx_prt, 'id_transformation_part') + '"');            

          EXEC f @id, @tx; SET @tx = N'      <div>'
          EXEC f @id, @tx; SET @tx = N'        <h3>SQL Query of "Transformation"-part:</h3>'
          EXEC f @id, @tx; SET @tx = N'        <p>The below SQL-query can be parsed into "Utilized"-mappings and -datasets.</p>'  
          EXEC f @id, @tx; SET @tx = N'        ' + mdm.html_code_block_body_part(mdm.json_value(@ni_prt, @tx_prt, 'tx_transformation_part'));
          
          IF (1=1 /* Build HTML for "Utilized Mapping(s)". */) BEGIN 
            EXEC f @id, @tx; SET @tx = N'        <h3>Utilized Mappings:</h3>'
            EXEC f @id, @tx; SET @tx = N'        <table>'
            EXEC f @id, @tx; SET @tx = N'          <tr><b><i>';
            EXEC f @id, @tx; SET @tx = N'            <th>#            </th>';
            EXEC f @id, @tx; SET @tx = N'            <th>Column       </th>';
            EXEC f @id, @tx; SET @tx = N'            <th>Mapping (SQL)</th>';
            EXEC f @id, @tx; SET @tx = N'            <th>Is Group By  </th>';
            EXEC f @id, @tx; SET @tx = N'          </b></i></tr>';
            SET @tx_map = (SELECT /* Extract "Mapping" for "Transformation"-part. */
              ni_ordering, nm_target_column, tx_transformation_mapping, is_in_group_by 
            FROM (SELECT att.ni_ordering, att.nm_target_column, map.tx_transformation_mapping, map.is_in_group_by 
                  FROM tsa_dta.tsa_transformation_mapping AS map JOIN tsa_dta.tsa_attribute AS att ON att.id_attribute = map.id_attribute
                  WHERE map.id_transformation_part = mdm.json_value(@ni_prt, @tx_prt, 'id_transformation_part')
                 ) AS map ORDER BY ni_ordering FOR JSON AUTO);
            SET @ni_map = 0; SET @mx_map = mdm.json_count(@tx_map); WHILE (@ni_map < @mx_map) BEGIN 
              EXEC f @id, @tx; SET @tx = N'          <tr>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_map, @tx_map, 'ni_ordering'),              'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_map, @tx_map, 'nm_target_column'),         'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_map, @tx_map, 'tx_transformation_mapping'),'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' +    IIF(mdm.json_value(@ni_map, @tx_map, 'is_in_group_by') = '0', 'No', 'Yes') + '</td>'
              EXEC f @id, @tx; SET @tx = N'          </tr>'
            SET @ni_map += 1; END
            EXEC f @id, @tx; SET @tx = N'        </table>'
          END

          IF (1=1 /* Build HTML for "Utilized Dataset(s)". */) BEGIN

            EXEC f @id, @tx; SET @tx = N'        <h3>Utilized Datasets:</h3>'
            EXEC f @id, @tx; SET @tx = N'        <table>'
            EXEC f @id, @tx; SET @tx = N'          <tr><b><i>';
            EXEC f @id, @tx; SET @tx = N'              <th>#</th>';
            EXEC f @id, @tx; SET @tx = N'              <th>FROM/JOIN-Type</th>';
            EXEC f @id, @tx; SET @tx = N'              <th>Source Schema</th>';
            EXEC f @id, @tx; SET @tx = N'              <th>Source Table </th>';
            EXEC f @id, @tx; SET @tx = N'              <th>Alias </th>';
            EXEC f @id, @tx; SET @tx = N'              <th>Join Criteria</th>';
            EXEC f @id, @tx; SET @tx = N'          </b></i></tr>';
            SET @tx_dst = (SELECT /* Extract "Mapping" for "Transformation"-part. */
              ni_transformation_dataset, cd_join_type, nm_target_schema, nm_target_table, cd_alias, tx_join_criteria
            FROM (SELECT uds.ni_transformation_dataset, uds.cd_join_type, dst.nm_target_schema, dst.nm_target_table, uds.cd_alias, uds.tx_join_criteria
                  FROM tsa_dta.tsa_transformation_dataset AS uds JOIN tsa_dta.tsa_dataset AS dst ON dst.id_dataset = uds.id_dataset
                  WHERE uds.id_transformation_part = mdm.json_value(@ni_prt, @tx_prt, 'id_transformation_part') 
                 ) AS uds ORDER BY ni_transformation_dataset ASC FOR JSON AUTO);
            SET @ni_dst = 0; SET @mx_dst = mdm.json_count(@tx_dst); WHILE (@ni_dst < @mx_dst) BEGIN 
              EXEC f @id, @tx; SET @tx = N'          <tr>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'ni_transformation_dataset'), 'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'cd_join_type'),              'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'nm_target_schema'),          'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'nm_target_table'),           'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'cd_alias'),                  'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'            <td>' + ISNULL(mdm.json_value(@ni_dst, @tx_dst, 'tx_join_criteria'),          'n/a') + '</td>'
              EXEC f @id, @tx; SET @tx = N'         </tr>'
            SET @ni_dst += 1; END
            EXEC f @id, @tx; SET @tx = N'       </table>'
          END            
                             
          EXEC f @id, @tx; SET @tx = N'      </div>';

        SET @ni_prt += 1; END
      
      END
    
    END

    EXEC f @id, @tx; SET @tx = N'    ' + mdm.html_code_block_body_script();
    EXEC f @id, @tx; SET @tx = N'  </body>'
    EXEC f @id, @tx; SET @tx = N'</html>'
    EXEC f @id, @tx; /* Write last line. */

  END

  /* Print text html file to Console. */
  EXEC mdm.usp_html_print_to_console @ip_id_dataset, @ip_is_debugging;

END
GO