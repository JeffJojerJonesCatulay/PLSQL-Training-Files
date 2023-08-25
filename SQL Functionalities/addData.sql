-- Create Table
-- create table people(
--   id number(4) not null,
--   people_name varchar2(50) not null,
--   people_age number(3) not null,
--   primary key(id)
-- );

-- create table schema_audit(
--   ddl_date date,
--   ddl_user varchar2(12),
--   obj_type varchar2(12),
--   obj_name varchar2(12),
--   operation varchar2(12)
-- );

-- create table t_numbers(
--   num number
-- );

-- Insert Data
-- insert into people (id, people_name, people_age)
-- values (1, 'Jonah', 22);

-- Update Data
-- update people set people_name='Jeff Jojer Jones' where id = 1;

-- Delete Data
-- delete from people where id = 3;

-- Drop Table
-- drop table people;

-- Create a backup
-- CREATE Table people_backup AS select * FROM people where 1=0;