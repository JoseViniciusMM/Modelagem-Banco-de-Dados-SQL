use testinsert;

create table Pais (
id_pai integer primary key,
nome_pai varchar (100),
continente_pai varchar (100)
);

insert into pais (id_pai, nome_pai, continente_pai) values (1, 'Brasil', 'America');
insert into pais (id_pai, nome_pai, continente_pai) values (2, 'Portugal', 'Europa');

insert into pais values (3, 'Inglaterra', 'Europa');
insert into pais values (4, 'Japão', 'Asia');
select * from pais;

create table Estado (
id_est integer primary key,
nome_est varchar (100),
sigla_est varchar (10),
regiao_est varchar (100),
id_pai_fk integer,
foreign key (id_pai_fk) references Pais (id_pai)
);

insert into estado (id_est, nome_est, id_pai_fk) values (1, 'Rondônia', 1);
insert into estado (id_est, nome_est, sigla_est, id_pai_fk) values (2, 'Londres', 'LO', 3);

select * from estado;



Create table Cidade (
id_cid integer primary key,
nome_cid varchar (100),
data_criacao_cid date,
id_est_fk integer,
foreign key (id_est_fk) references Estado (id_est)
);

Create table Endereco (
id_end integer primary key,
rua_end varchar (100),
numero_end integer,
bairro_end varchar (100),
id_cid_fk integer,
foreign key (id_cid_fk) references Cidade (id_cid)
);

create table Cliente (
id_cli integer primary key,
nome_cli varchar (200) not null,
cpf_cli varchar (15),
data_nasc_cli date,
sexo_cli varchar (30),
email_cli varchar (200),
id_end_fk integer,
foreign key (id_end_fk) references Endereco (id_end)
);
