
use Supermercado_Vende_Mais;

create table Fornecedor (
id_for integer primary key auto_increment,
nome_for varchar (50) not null,
cnpj_for varchar (20) not null
);

create table Despesa (
id_des integer primary key auto_increment,
nome_des varchar (50) not null,
valor_des float
);

create table Setor (
id_set integer primary key auto_increment,
nome_set varchar (50) not null
);

create table Caixa (
id_cai integer primary key auto_increment,
saldo_inicial_cai float,
total_recebimentos_cai float,
total_retiradas_cai float,
saldo_final_cai float
);

create table Pagamento (
id_pag integer primary key auto_increment,
tipo_pag varchar (50) not null,
data_pag date,
id_cai_fk int,
foreign key(id_cai_fk) references Caixa (id_cai),
id_des_fk int,
foreign key(id_des_fk) references Despesa (id_des)
);

create table Funcionario (
id_fun integer primary key auto_increment,
nome_fun varchar (50) not null,
funcao_fun varchar (50) not null,
id_set_fk int,
foreign key(id_set_fk) references Setor (id_set)
); 

create table Compra ( 
id_com integer primary key auto_increment,
valor_com float not null,
data_com date,
id_for_fk int,
foreign key(id_for_fk) references Fornecedor (id_for),
id_des_fk int,
foreign key(id_des_fk) references Despesa (id_des),
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario (id_fun)
);

create table Cliente (
id_cli integer primary key auto_increment,
nome_cli varchar (50) not null,
endereco_cli varchar (100),
cpf_cli varchar (20) not null
);

 create table Venda ( 
id_ven integer primary key auto_increment,
valor_ven float not null,
data_ven date,
id_fun_fk int,
foreign key(id_fun_fk) references Funcionario (id_fun),
id_cli_fk int,
foreign key(id_cli_fk) references Cliente (id_cli)
);

create table Entrega ( 
id_ent integer primary key auto_increment,
data_ent date,
endereco_alternativo_ent varchar (100),
hora_ent time,
id_ven_fk int,
foreign key(id_ven_fk) references Venda (id_ven)
);

 create table Recebimento (
id_rec integer primary key auto_increment,
tipo_rec varchar (50) not null,
data_rec date,
id_cai_fk int,
foreign key(id_cai_fk) references Caixa (id_cai),
id_ven_fk int,
foreign key(id_ven_fk) references Venda (id_ven)
);

create table Produto (
id_pro integer primary key auto_increment,
nome_pro varchar (100) not null,
valor_pro float not null,
estoque_pro varchar (20)
);

create table Produto_Compra (
id_prco integer primary key auto_increment,
id_com_fk int,
foreign key(id_com_fk) references Compra (id_com),
id_pro_fk int,
foreign key(id_pro_fk) references Produto (id_pro)
);

create table Venda_Produto (
id_vepe integer primary key auto_increment,
quantidade_vepe int,
id_ven_fk int,
foreign key(id_ven_fk) references Venda (id_ven),
id_pro_fk int,
foreign key(id_pro_fk) references Produto (id_pro)
);

