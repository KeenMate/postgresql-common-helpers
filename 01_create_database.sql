create role km_common_helpers with password 'Password3000!!' login;

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'km_common_helpers'
  AND pid <> pg_backend_pid();

drop database if exists km_common_helpers;
create database km_common_helpers with owner km_common_helpers;
