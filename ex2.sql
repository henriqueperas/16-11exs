CREATE DATABASE Ex1aula1611
GO
USE [16/11]

CREATE TABLE project(
id			INT				NOT NULL	IDENTITY,
name		VARCHAR(45)		NOT NULL,
description	VARCHAR(45)		NOT NULL,
date		VARCHAR(45)		NOT NULL,
PRIMARY KEY(id)
)

CREATE TABLE users(
id			INT				NOT NULL	IDENTITY,
name		VARCHAR(45)		NOT NULL,
username	VARCHAR(10)		NOT NULL,
password	VARCHAR(8)		NOT NULL,
email		VARCHAR(45)		NOT NULL,
PRIMARY KEY(id)
)

CREATE TABLE users_has_projects(
users_id		INT			NOT NULL,
projects_id		INT			NOT NULL,
PRIMARY KEY (users_id, projects_id),
FOREIGN KEY (users_id) REFERENCES project(id),
FOREIGN KEY (projects_id) REFERENCES users(id)
)

INSERT INTO project VALUES
(10001, 'Re-folha', 'Refatoração das Folhas', '05/09/2014'),
(10002, 'Manutenção PC´s', 'Manutenção PC´s', '06/09/2014'),
(10003, 'Auditoria', NULL, '07/09/2014')
GO

INSERT INTO users VALUES
(1, 'Maria', 'Rh_maria', '123mudar', 'maria@empresa.com'),
(2, 'Paulo', 'Ti_paulo', '123@456', 'paulo@empresa.com'),
(3, 'Ana', 'Rh_ana', '123mudar', 'ana@empresa.com'),
(4, 'Clara', 'Ti_clara', '123mudar', 'clara@empresa.com'),
(5, 'Aparecido', 'Rh_apareci', '55@!cido', 'aparecido@empresa.com')
GO

INSERT INTO users_has_projects VALUES
(1, 10001),
(5, 10001),
(3, 10003),
(4, 10002),
(2, 10002)
GO 

SELECT 