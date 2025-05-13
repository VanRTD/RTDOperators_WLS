-------------------------------------------------------------
grant select, insert, update, delete on ROS.DRIVER_ALERTS to rep_ip;
grant select on ROS.DRIVER_ALERTS to rep_read;

grant select, insert, update, delete on ROS.TRANSPORTATION_BULLETINS to rep_ip;
grant select on ROS.TRANSPORTATION_BULLETINS to rep_read;

grant select on REP.DETOURS to ROS_USER;
grant select on REP.DETOURS_ROUTE to ROS_USER;
-------------------------------------------------------------

Connect to REP_READ on ECORE01P

create synonym REP_READ.DRIVER_ALERTS for ROS.DRIVER_ALERTS;

create synonym REP_READ.TRANSPORTATION_BULLETINS for ROS.TRANSPORTATION_BULLETINS;
-------------------------------------------------------------
Connect to REP_IP on ECORE01P

create synonym REP_IP.DRIVER_ALERTS for ROS.DRIVER_ALERTS;

create synonym REP_IP.TRANSPORTATION_BULLETINS for ROS.TRANSPORTATION_BULLETINS;

-------------------------------------------------------------

Connect to ROS_USER on ECORE01P

create synonym ROS_USER.DETOURS for REP.DETOURS;

create synonym ROS_USER.DETOURS_ROUTE for REP.DETOURS_ROUTE;

