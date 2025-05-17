create database restaurante_bd;
use restaurante_bd;

create table Cliente(
id_clie int primary key auto_increment,
nome_clie varchar(300),
cpf_clie varchar(300),
celular_clie varchar(300),
enderco_clie varchar(300),
email_clie varchar(300),
sexo_clie varchar(300),
idade_clie varchar(300)
);

create table Funcionario(
id_func int primary key auto_increment,
nome_func varchar(300),
funcao_func varchar(300),
cpf_func varchar(300),
celular_func varchar(300),
enderco_func varchar(300),
email_func varchar(300),
sexo_func varchar(300),
idade_func varchar(300)
);

create table Fornecedor(
id_forn int primary key auto_increment,
nome_forn varchar(100),
cnpj_forn varchar(50),
endereco_forn varchar(300),
celular_forn varchar(100),
marca_forn varchar(100)
);

create table Mesa(
id_mes int primary key auto_increment,
numero_mes int,
capacidade_mes varchar(300),
status_mes varchar(300),
tipo_mes varchar(300),
cor_mes varchar(300)
);

create table Entregador_App(
id_enap int primary key auto_increment,
nome_enap varchar(300),
cpf_enap varchar(300),
email_enap varchar(300),
celular_enap varchar(300),
aplicativo_enap varchar(300),
veiculo_enap varchar(300),
endereco_enap varchar(300)
);

create table Venda(
id_vend int primary key auto_increment,
valor_vend double,
data_vend date,
hora_vend varchar(20),
forma_pag_vend varchar(100),
parcelamento_vend varchar(100),
id_clie_fk int,
id_func_fk int,
foreign key (id_func_fk) references Funcionario (id_func),
foreign key (id_clie_fk) references Cliente (id_clie)
);

create table Prato(
id_prat int primary key auto_increment,
nome_prat varchar(300),
foto_prat varchar(300),
valor_prat double,
ingredientes_prat varchar(300),
peso_prat varchar(300),
valor_kcal_prat varchar(300)
);

create table Venda_Prato(
id_vepr int primary key auto_increment,
id_vend_fk int,
id_prat_fk int,
foreign key (id_vend_fk) references Venda (id_vend),
foreign key (id_prat_fk) references Prato (id_prat)
);

create table Pedido(
id_pedi int primary key auto_increment,
nome_pedi varchar(300),
valor_pedi double,
hora_pedi time,
tempo_pedi time,
id_vend_fk int,
id_mes_fk int,
foreign key (id_vend_fk) references Venda (id_vend),
foreign key (id_mes_fk) references Mesa (id_mes)
);

create table Pedido_Prato(
id_prpr int primary key auto_increment,
id_pedi_fk int,
id_prat_fk int,
foreign key (id_pedi_fk) references Pedido (id_pedi),
foreign key (id_prat_fk) references Prato (id_prat)
);

create table Produto(
id_prod int primary key auto_increment,
nome_prod varchar(200),
marca_prod varchar(100),
estoque_prod int,
valor_prod double,
descricao_prod varchar(150),
tipo_prod varchar(50)
);

create table Produto_Pedido(
id_prpe int primary key auto_increment,
id_prod_fk int,
id_pedi_fk int,
foreign key (id_prod_fk) references Produto (id_prod),
foreign key (id_pedi_fk) references Pedido (id_pedi)
);

create table Venda_produto(
id_vepr int primary key auto_increment,
id_vend_fk int,
id_prod_fk int,
foreign key (id_vend_fk) references Venda (id_vend),
foreign key (id_prod_fk) references Produto (id_prod)
);

create table Compra(
id_comp int primary key auto_increment,
data_comp date,
forma_Pag_comp varchar(50),
valor_comp double,
parcelamento_comp varchar(200),
quantidade_comp int,
id_forn_fk int,
id_clie_fk int,
foreign key (id_forn_fk) references Fornecedor(id_forn),
foreign key (id_clie_fk) references Cliente (id_clie)
);

create table Compra_Produto(
id_copr int primary key auto_increment,
id_comp_fk int,
id_prod_fk int,
foreign key (id_comp_fk) references Compra (id_comp),
foreign key (id_prod_fk) references Produto (id_prod)
);

create table Reserva(
id_rese int primary key auto_increment,
numero_pessoas_rese int,
horario_rese time,
data_rese date,
id_clie_fk int,
id_mes_fk int,
foreign key (id_clie_fk) references Cliente (id_clie),
foreign key (id_mes_fk) references Mesa (id_mes)
);

create table Entrega(
id_entr int primary key auto_increment,
endereco_alternativo_entr varchar(300),
hora_saida_entr time,
hora_prevista_entr time,
hora_entrega_entr time,
data_entr date,
id_vend_fk int,
id_func_fk int,
id_enap_fk int,
foreign key (id_vend_fk) references Venda (id_vend),
foreign key (id_func_fk) references Funcionario (id_func),
foreign key (id_enap_fk) references Entregador_App (id_enap)
);

create table Caixa(
id_caix int primary key auto_increment,
data_caix date,
saldo_inicial_caix double,
total_recebimento_caix double,
total_pagamentos_caix double,
saldo_final_caix double,
id_func_fk int,
foreign key (id_func_fk) references Funcionario (id_func)
);

create table Despesa(
id_desp int primary key auto_increment,
descricao_desp varchar(200),
valor_desp double,
data_desp date,
forma_pag_desp varchar(100),
parcelas_desp varchar(100),
vencimento_desp date,
id_forn_fk int,
foreign key (id_forn_fk) references Fornecedor(id_forn)
);

create table Recebimento(
id_rece int primary key auto_increment,
valor_rece double,
parcela_rece int,
forma_rece varchar(100),
data_rece date,
vencimento_race date,
status_rece varchar(100),
id_caix_fk int,
id_vend_fk int,
foreign key (id_caix_fk) references Caixa (id_caix),
foreign key (id_vend_fk) references Venda (id_vend)
);

create table Pagamento(
id_paga int primary key auto_increment,
data_paga date,
valor_paga double,
forma_paga varchar(50),
parcela_paga int,
status_paga varchar(100),
vencimento_paga date,
id_caix_fk int,
id_desp_fk int,
foreign key (id_caix_fk) references Caixa (id_caix),
foreign key (id_desp_fk) references Despesa (id_desp)
);