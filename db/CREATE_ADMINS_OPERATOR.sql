-- Author - Justin Hancock - 10/23/2009
-- This script sets each user to have the role of "ROLE_ADMIN" on the Operator site.
-- The only extra functionality that this offers is a full view of the extraboard.

update authorities set authority='ROLE_ADMIN' where operator_rtd_id='11379'; -- Sandra Kerr
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='19241'; -- Justin Hancock
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='18520'; -- Lisa Fliam
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='17748'; -- Pam Ferguson
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='17424'; -- Nataly Handlos
update authorities set authority='ROLE_ADMIN' where operator_rtd_id='15734'; -- Van Tran
commit;