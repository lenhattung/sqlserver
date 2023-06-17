-- Vi du 1
CREATE DATABASE CSDL1;


-- Vi du 2
CREATE DATABASE employees
ON
(
	NAME = 'employees_data',
	FILENAME = 'C:\data\employees_data.mdf'
);

CREATE DATABASE employees_1
ON
(
	NAME = 'employees_data_1',
	FILENAME = 'C:\data\employees_data_1.mdf',
	SIZE = 10 MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
);


CREATE DATABASE employees_2
ON
(
	NAME = 'employees_data_2',
	FILENAME = 'C:\data\employees_data_2.mdf',
	SIZE = 10 MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
)
LOG ON (
	NAME = 'employees_data_2_log',
	FILENAME = 'C:\data\employees_data_2_log.ldf',
	SIZE = 10 MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB
)