create database restaurante_come_mais;
use restaurante_come_mais;

create table Funcionario (
id_fun int PRIMARY KEY not null,
nome_fun varchar(150) not null,
email_fun varchar(100) not null,
cpf_fun numeric(11) not null,
ctps_fun numeric(12) not null,
celular_fun numeric(15) not null
);

create table Cliente (
id_cli int PRIMARY KEY not null,
nome_cli varchar(150) not null,
cpf_cli numeric(11) not null,
celular_cli numeric(15) not null,
endereco_cli varchar(200) not null,
email_cli varchar(100) not null
);

create table Fornecedor (
id_for int PRIMARY KEY not null,
nome_for varchar(150) not null,
celular_for numeric(15) not null,
cnpj_for numeric(14) not null
);

create table Entregador_App (
id_enap INT PRIMARY KEY not null,
nome_enap varchar(150) not null,
aplicativo_enap varchar(100) not null,
email_enap varchar(100) not null,
cpf_enap numeric(11, 0) not null,
celular_enap numeric(15, 0) not null
);

create table Mesa (
id_mes int PRIMARY KEY not null,
numero_mes int not null,
capacidade_mes int not null,
status_mes varchar(50) not null
);

create table Produto (
id_pro int PRIMARY KEY not null,
nome_pro varchar(150) not null,
estoque_pro int not null,
valor_pro numeric(10,2) not null
);

create table Entrega (
id_ent int PRIMARY KEY not null,
endereco_alternativo_ent varchar(200) not null, 
hora_saida_ent time not null,
hora_entrega_ent time not null,
data_ent date not null,
id_enap_fk int not null,
FOREIGN KEY (id_enap_fk) REFERENCES Entregador_App(id_enap),
id_fun_fk int not null,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario(id_fun)
);

create table Despesa (
id_des int PRIMARY KEY not null,
descricao_des varchar(255) not null,
valor_des numeric(10,2) not null,
data_des date not null,
id_for_fk int not null,
FOREIGN KEY (id_for_fk) REFERENCES Fornecedor(id_for)
);

create table Caixa (
id_cai int PRIMARY KEY not null,
numero_cai int not null,
saldo_inicial_cai numeric(10,2) not null,
total_pagamentos_cai numeric(10,2) not null,
total_recebimentos_cai numeric(10,2) not null,
total_final_cai numeric(10,2) not null,
data_cai date not null,
id_fun_fk int not null,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario(id_fun)
);

create table Pagamento (
id_pag int PRIMARY KEY not null,
data_pag date not null,
valor_pag numeric(10,2) not null,
forma_pagamento_pag varchar(50) not null,
status_pag varchar(50) not null,
vencimento_pag date not null,
id_cai_fk int not null,
FOREIGN KEY (id_cai_fk) REFERENCES Caixa(id_cai),
id_des_fk int not null,
FOREIGN KEY (id_des_fk) REFERENCES Despesa(id_des)
);

create table Pedido (
id_ped int PRIMARY KEY not null,
hora_ped time not null,
valor_ped numeric(10,2) not null,
status_ped varchar(50),
id_mes_fk int not null,
FOREIGN KEY (id_mes_fk) REFERENCES Mesa(id_mes),
id_fun_fk int not null,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario(id_fun)
);

create table Compra (
id_com int PRIMARY KEY not null,
valor_com numeric(10,2) not null,
data_comp date not null,
parcelamento_com int not null,
id_fun_fk int not null,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario(id_fun),
id_for_fk int not null,
FOREIGN KEY (id_for_fk) REFERENCES Fornecedor(id_for)
);

create table Venda (
id_ven int PRIMARY KEY not null,
valor_ven numeric(10,2) not null,
data_vend date not null,
parcelamento_ven int not null,
id_fun_fk int not null,
FOREIGN KEY (id_fun_fk) REFERENCES Funcionario(id_fun),
id_ent_fk int not null,
FOREIGN KEY (id_ent_fk) REFERENCES Entrega(id_ent),
id_cli_fk int not null,
FOREIGN KEY (id_cli_fk) REFERENCES Cliente(id_cli),
id_ped_fk int not null,
FOREIGN KEY (id_ped_fk) REFERENCES Pedido(id_ped)
);

create table Prato (
id_pra int PRIMARY KEY not null,
nome_pra varchar(150) not null,
foto_pra blob not null,
valor_pra numeric(10,2) not null,
ingredientes_pra varchar(200) not null
);

create table Recebimento (
id_rec int PRIMARY KEY not null,
data_rec date not null,
parcela_rec int not null,
valor_rec numeric(10,2) not null,
forma_recebimento_rec varchar(50) not null,
status_rec varchar(50) not null,
vencimento_rec date not null,
id_cai_fk int not null,
FOREIGN KEY (id_cai_fk) REFERENCES Caixa(id_cai),
id_ven_fk int not null,
FOREIGN KEY (id_ven_fk) REFERENCES Venda(id_ven)
);

create table Reserva (
id_res int PRIMARY KEY not null,
data_res date not null,
horario_res time not null,
numero_pessoas_res int not null,
id_cli_fk int not null,
FOREIGN KEY (id_cli_fk) REFERENCES Cliente(id_cli),
id_mes_fk int not null,
FOREIGN KEY (id_mes_fk) REFERENCES Mesa(id_mes)
);

create table Venda_Prato (
id_vepr int PRIMARY KEY not null,
id_pra_fk int not null,
FOREIGN KEY (id_pra_fk) REFERENCES Prato(id_pra),
id_ven_fk int not null,
FOREIGN KEY (id_ven_fk) REFERENCES Venda(id_ven)
);

create table Prato_Pedido (
id_prpe int PRIMARY KEY not null,
id_pra_fk int not null,
FOREIGN KEY (id_pra_fk) REFERENCES Prato(id_pra),
id_ped_fk int not null,
FOREIGN KEY (id_ped_fk) REFERENCES Pedido(id_ped)
);

create table Venda_Produto (
id_prve int PRIMARY KEY not null,
id_pro_fk int not null,
FOREIGN KEY (id_pro_fk) REFERENCES Produto(id_pro),
id_ven_fk int not null,
FOREIGN KEY (id_ven_fk) REFERENCES Venda(id_ven)
);

create table Produto_Compra (
id_prco int PRIMARY KEY not null,
id_pro_fk int not null,
FOREIGN KEY (id_pro_fk) REFERENCES Produto(id_pro),
id_com_fk int not null,
FOREIGN KEY (id_com_fk) REFERENCES Compra(id_com)
);