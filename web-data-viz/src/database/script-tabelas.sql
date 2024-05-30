-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE aquatech;

USE aquatech;


CREATE TABLE marca(
id INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(45));

INSERT INTO marca (nome) VALUES 
    ('Avelloz'),
    ('BMW'),
    ('Dafra'),
    ('Ducati'),
    ('Haojue'),
    ('Harley-Davidson'),
    ('Honda'),
    ('Kawasaki'),
    ('KTM'),
    ('Kymco'),
    ('MXF'),
    ('Piaggio'),
    ('Pro Tork'),
    ('Royal Enfield'),
    ('Shineray'),
    ('Sousa Motos'),
    ('Suzuki'),
    ('Triumph'),
    ('Voltz Motors'),
    ('Yamaha'),
    ('Bajaj'),
    ('Fantic'),
    ('MV Agusta'),
    ('Zontes'),
    ('Mottu'),
    ('Watts'),
    ('Origem'),
    ('Bull Motors');

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkmarca int, 
    foreign key (fkmarca) references marca(id)
);

SELECT * FROM usuario;

(SELECT 'Avelloz' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '1'
UNION ALL
SELECT 'BMW' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '2'
UNION ALL
SELECT 'Dafra' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '3'
UNION ALL
SELECT 'Ducati' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '4'
UNION ALL
SELECT 'Haojue' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '5'
UNION ALL
SELECT 'Harley-Davidson' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '6'
UNION ALL
SELECT 'Honda' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '7'
UNION ALL
SELECT 'Kawasaki' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '8'
UNION ALL
SELECT 'KTM' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '9'
UNION ALL
SELECT 'Kymco' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '10'
UNION ALL
SELECT 'MXF' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '11'
UNION ALL
SELECT 'Piaggio' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '12'
UNION ALL
SELECT 'Pro Tork' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '13'
UNION ALL
SELECT 'Royal Enfield' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '14'
UNION ALL
SELECT 'Shineray' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '15'
UNION ALL
SELECT 'Sousa Motos' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '16'
UNION ALL
SELECT 'Suzuki' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '17'
UNION ALL
SELECT 'Triumph' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '18'
UNION ALL
SELECT 'Voltz Motors' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '19'
UNION ALL
SELECT 'Yamaha' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '20'
UNION ALL
SELECT 'Bajaj' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '21'
UNION ALL
SELECT 'Fantic' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '22'
UNION ALL
SELECT 'MV Agusta' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '23'
UNION ALL
SELECT 'Zontes' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '24'
UNION ALL
SELECT 'Mottu' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '25'
UNION ALL
SELECT 'Watts' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '26'
UNION ALL
SELECT 'Origem' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '27'
UNION ALL
SELECT 'Bull Motors' as marca, count(*) as qtd FROM usuario WHERE fkmarca = '28');

select * from usuario;