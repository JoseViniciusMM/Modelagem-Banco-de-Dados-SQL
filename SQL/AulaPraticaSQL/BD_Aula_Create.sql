use aula2;

create table Endereco (
id_end integer primary key, 
rua_end varchar (100),
numero_end integer,
bairro_end varchar (100)
);

create table Cidade (
id_cid integer primary key,
nome_cid varchar (100),
data_criacao_cid date
);

create table Estado ( 
id_est integer primary key, 
nome_est varchar (100),
sigla_est varchar (10),
regiao_est varchar (100)
);

create table Pais (
id_pai integer primary key,
nome_pai varchar (100),
continente_pai varchar (100)
);
