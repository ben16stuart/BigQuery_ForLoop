DECLARE vector_dates ARRAY<STRING>;
SET vector_dates = 
['2023-09-22',
 --'2023-09-23',
 --'2023-09-24',
 '2023-09-25',
 '2023-09-26', 
 '2023-09-27', 
 '2023-09-28',
 '2023-09-29',
 --'2023-09-30',
 --'2023-10-01',
 '2023-10-02',
 '2023-10-03',
 '2023-10-04', 
 '2023-10-05',
 '2023-10-06'
 --'2023-10-07',
 --'2023-10-08'];
];
FOR loop_variable_name IN (SELECT * FROM UNNEST(vector_dates) as x)
DO
-------------------------- CODE TO LOOP HERE--------------------
DELETE FROM `<project.database.table>` WHERE DW_EFF_DT = CAST(loop_variable_name.x AS DATE) ;

INSERT INTO `<project.database.table>`
  (
  SELECT
    CAST(loop_variable_name.x AS DATE) AS DW_EFF_DT
---------------------------------------------------------------
END FOR;
