-- Role: afrecikuxltyaz
CREATE ROLE afrecikuxltyaz LOGIN
  ENCRYPTED PASSWORD 'md53434443ae0df61cca40bf493f1561e74'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;

-- Database: dfg5vumj88tck7
CREATE DATABASE dfg5vumj88tck7
  WITH OWNER = afrecikuxltyaz
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       CONNECTION LIMIT = -1;

