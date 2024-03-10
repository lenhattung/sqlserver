CREATE DATABASE NVDB
ON
(	NAME = 'nvdb_data',
	FILENAME = 'C:\data\nvdb_data.mdf',
	SIZE =10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB)
LOG ON
(	NAME = 'nvdb_log',
	FILENAME = 'C:\data\nvdb_log.ldf',
	SIZE =5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB)
