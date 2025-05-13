-- This script sets each user to have the role of "ROLE_ADMIN" on the Operator site.
-- The only extra functionality that this offers is a full view of the extraboard.

/* Connect to ROS User */


Prompt Enter ROS User Password
connect ros

SET DEFINE OFF;

spool UPDATE_ADMINS_OPERATOR.log;

update authorities set authority='ROLE_ADMIN' where operator_rtd_id='10010'; -- Bell, William J.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='10146'; -- Ames, Michael W.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='10831'; -- Buckner, Sherri Lynn
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='11379'; -- Kerr, Sandra
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='11935'; -- Merritt, Donald E.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='12602'; -- Haynes, Yolanda Kaye
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='13187'; -- Clinkenbeard, Loradean K.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='13401'; -- Clinkenbeard, Richard
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='1418'; -- Yates, Gregory A.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='14983'; -- Garcia-Balderas, Gina Victoria
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='16571'; -- Skinner, Sherie L.
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='16861'; -- Delsanno, Travis Ashley Jason
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='16911'; -- Holloway, Lisa Brennan
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='17032'; -- Seifert, Daniel P
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='17108'; -- Hone, Doyle
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='18558'; -- Merritt, Daniel W.

spool off;

commit;