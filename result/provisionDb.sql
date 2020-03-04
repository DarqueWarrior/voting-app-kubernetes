-- ======================================================================================
-- SQL script to provision DB for Vote app 
-- ======================================================================================

CREATE DATABASE VOTEDB;

USE VOTEDB
CREATE LOGIN worker WITH password='I-am-1-good-readwrite-user';
CREATE LOGIN result WITH password='I-am-1-good-readonly-user';

CREATE USER worker
	FOR LOGIN worker
	WITH DEFAULT_SCHEMA = db_datawriter
GO

CREATE USER result
	FOR LOGIN result
	WITH DEFAULT_SCHEMA = db_datareader
GO

EXEC sp_addrolemember 'db_datawriter', 'worker'
EXEC sp_addrolemember 'db_datareader', 'worker'
EXEC sp_addrolemember 'db_datareader', 'result'

CREATE TABLE votes (id NVARCHAR(50) UNIQUE, vote NVARCHAR(50))
CREATE TABLE voteCount(vote NVARCHAR(50) UNIQUE, count INT)

insert into voteCount values ('a', 0)
insert into voteCount values ('b', 0)