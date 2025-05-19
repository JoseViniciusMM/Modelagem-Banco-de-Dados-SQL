use dentista;

create table Recebimento (
id_rec int primary key auto_increment,
data_rec date,
tipo_rec varchar(100),
valor_rec float not null
);

create table  Agenda (
id_age int primary key auto_increment,
data_age date not null, 
hora_age time,
tipo_age varchar(100)
);

create table Paciente (
id_pac int primary key auto_increment,
nome_pac varchar(50) not null,
cpf_pac varchar(20) not null,
telofene_pac varchar(20),
email_pac varchar(50)
);

create table  Consulta (
id_con int primary key auto_increment,
valor_con float not null,
data_con date not null
);

create table Procedimento (
id_pro int primary key auto_increment,
nome_pro varchar(50) not null,
materiais_pro varchar(200),
valor_pro float not null
);

create table Dentista (
id_den int primary key auto_increment,
nome_pac varchar(50) not null,
cpf_pac varchar(20) not null,
especialidade varchar(300)
);
