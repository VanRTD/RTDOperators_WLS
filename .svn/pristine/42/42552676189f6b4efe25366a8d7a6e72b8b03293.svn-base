/* Connect to ROS Schema */
/*  Alter datatype for ASSIGNMENT field from EXTRABOARD table */
prompt Enter ROS Schema Password
connect ROS

spool alter_EXTRABOARD_table.log;

ALTER TABLE ROS.EXTRABOARD
MODIFY(ASSIGNMENT VARCHAR2(4000));

spool off;