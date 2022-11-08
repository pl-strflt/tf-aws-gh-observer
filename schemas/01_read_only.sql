CREATE ROLE read_only WITH LOGIN PASSWORD '' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';

GRANT CONNECT ON DATABASE postgres TO read_only;
GRANT USAGE ON SCHEMA public TO read_only;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO read_only;