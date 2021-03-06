-- DDL

CREATE DATABASE WISHLISTS;
GO

USE WISHLISTS;
GO

CREATE TABLE Usuarios(
	idUsuario INT PRIMARY KEY IDENTITY,
	nickname VARCHAR(250) UNIQUE NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	senha VARCHAR(250) NOT NULL
);
GO

CREATE TABLE Desejos(
	idDesejo INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES Usuarios(idUsuario),
	descricao VARCHAR(250) NOT NULL,
	dataCriacao DATE,
	favorito BIT DEFAULT(0)
);
GO