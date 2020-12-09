-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'capstone';
DROP DATABASE capstone;

DROP USER capstone_owner;
DROP USER capstone_appuser;