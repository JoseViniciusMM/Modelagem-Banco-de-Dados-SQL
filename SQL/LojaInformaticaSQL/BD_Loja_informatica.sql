create database Loja_Informatica;
use Loja_Informatica;

#José VInícius Machado Martines
#Rafael Felipe de Oliveira Aguiar

create table Cliente(
id_clie int primary key auto_increment not null,
nome_clie varchar(200) not null,
cpf_clie varchar(50) not null,
rg_clie varchar(50) not null,
telefone_clie varchar(50) not null,
endereco_clie varchar(200) not null,
sexo_clie varchar(50),
renda_fami_clie double,
data_nasc_clie date not null
);

/*INSERTS - 2. Inserir 10 registros nas tabelas Produto e Cliente. */

insert into Cliente values
(null, 'Naruto Uzumaki', '358.474.154-69', '1451452', '55(69)9746 1544', 'Avenida Afonso Trigo', 'Masculino', 8000, '1999-10-10'),
(null, 'Monkey D. Luffy', '182.155.784-45', '8946514', '55(69)4876 5132', 'Avenida Gabriel Zanette', 'Masculino', 5000, '1997-05-09'),
(null, 'joseph joestar', '159.589.699-85', '8651154', '55(69)5146 4685', 'Avenida Goiás ', 'Masculino', 2500, '1920-09-27'),
(null, 'Denji Pochita', '478.698.582-68', '7845165', '55(69)8465 4651', 'Avenida Rio Branco', 'Masculino', 800, '2003-12-01'),
(null, 'hinata hyuga', '614.655.231-78', '4948651', '55(69)4651 4865', 'Avenida Washington Luís', 'Feminino', 5800, '1999-12-27'),
(null, 'Rias Gremory', '948.658.745-51', '6514856', '55(69)8965 4545', 'Rua Santos Dumont', 'Feminino', 2600, '1990-03-16'),
(null, 'Nico Robin', '454.971.215-45', '1616494', '55(69)5415 8569', 'Rua Da Paz', 'Feminino', 1900, '1997-07-01'),
(null, 'Violet Evergarden', '461.648.537-21', '1544669', '55(69)9467 9462', 'Rua Belo Horizonte', 'Feminino', 3000, '1988-01-16'),
(null, 'Noelle Silva', '654.982.369-88', '7746146', '55(69)8452 6565', 'Rua Das Flores', 'Feminino', 10000, '2005-02-23'),
(null, 'Soma Yukihira', '456.845.949-57', '6136956', '55(69)9463 9466', 'Rua José Bonifácio', 'Masculino', 1000, '2002-11-02');


create table Funcionario(
id_func int primary key auto_increment not null,
nome_func varchar(200) not null,
telefone_func varchar(50),
salario_func double not null,
cpf_func varchar(50) not null,
rg_func varchar(50) not null,
funcao_func varchar(100) not null,
endereco_func varchar (200)
);

/*INSERT - 3. Insira 05 registros nas tabelas Fornecedor e Funcionário*/

insert into Funcionario values
(null, 'Ichigo Kurosaki', '55(69)8461-4511', '4800', '642.256.496-46', '745126', 'Vendedor', 'Rua Primeiro De Maio '),
(null, 'Edward Elric', '55(69)9566-2219', '2500',  '648.485.596-46', '946134', 'Caixa', 'Rua Sao Luiz' ),
(null, 'Rin Tohsaka', '55(69)9626-0474', '7200',  '962.951.491-46', '4649461', 'Vendedor', 'Rua das Flores' ),
(null, 'Levi Ackemen', '55(69)9562-5622', '1600',  '966.654.465-34', '4794661', 'Zelador', 'Avenida Gabriel Zanette'),
(null, 'Erza Scarlet', '55(69)4861-2084', '6800',  '496.321.654-46', '8946136', 'Gerente', 'Avenida Portugal');


create table Servico(
id_serv int primary key auto_increment not null,
descricao_serv varchar(300) not null,
valor_serv double not null,
tempo_serv time
);

/*INSERTS*/

insert into Servico values
(null, 'Limpeza Interna', 20.00, '00:10:00'),
(null, 'Trocar de Memória Ram', 70.50, '00:30:00'),
(null, 'Consertar Fonte', 100.00, '01:00:00'),
(null, 'Consertar Placa-mãe', 50.00, '00:30:00'),
(null, 'Trocar de Water Cooler', 25.00, '00:10:00'),
(null, 'Consertar SSD', 2500.00, '03:00:00'),
(null, 'Consertar Disco-local', 60.50, '00:45:00'),
(null, 'Trocar Gabinete', 88.00, '00:50:00'),
(null, 'Trocar Teclado', 25.00, '00:15:00'),
(null, 'Consertar Monitor', 250.00, '01:00:00');

create table Fornecedor(
id_forn int primary key auto_increment not null,
razao_forn varchar(100) not null,
nome_forn varchar(100) not null,
cnpj_forn varchar(50) not null,
endereco_forn varchar(300) not null,
telefone_forn varchar(50) not null
);

/*INSERTS - 3. Insira 05 registros nas tabelas Fornecedor e Funcionário*/

insert into Fornecedor values
(null, 'T-Gamer Informática LTDA', 'T-Gamer Informática', '325-9', 'Avenida Vereador João de Luca', '55(69)8415-9746'),
(null, 'Periféricos Gamer LTDA', 'Periféricos Gamer', '946-5', ' Avenida Engenheiro Oscar Americano', '55(69)9744-9464'),
(null, 'B&S INFORMÁTICA Ltda', 'B&S INFORMÁTICA', '496-7', 'Avenida Braz Leme', '55(69)8656-9461'),
(null, 'Axis Informática Ltda', 'Axis Informática', '962-4', 'Avenida Sumaré', '55(69)9865-4916'),
(null, 'Premium Informática Ltda', 'Premium Informática', '946-7', 'Avenida dos Bandeirantes', '55(69)4866-9466');

create table Produto(
id_prod int primary key auto_increment not null,
marca_prod varchar(100) not null,
quantidade_prod double not null,
valor_prod double not null,
descricao_prod varchar(150),
tamanho_prod varchar(5) not null,
tipo_prod varchar(50) not null
);

/*INSERTS - 2. Inserir 10 registros nas tabelas Produto e Cliente. */

insert into Produto values
(null, 'Razer', 20, 477.00, 'Caixa Termica', '16cm', 'Cooler'),
(null, 'HyperX', 18, 580.00, 'Fone de ouvido com um microfone acoplado', '18cm', 'Headset'),
(null, 'Redragon', 15, 500.00, 'Câmera de vídeo', '15cm', 'WebCam'),
(null, 'HyperX', 20, 600.00, 'Espaço de armazenamento de dados temporário ', '13cm', 'Memória RAM'),
(null, 'Razer', 2, 5600.00, 'transmisor de imagens', '20cm', 'Placa de vídeo'),
(null, 'Logitech', 8, 1520.00, 'Sistema que une todos os componentes de um computador,', '20cm', 'Placa-mãe'),
(null, 'Redragon', 19, 590.00, 'Dispositivo que possui uma série de botões', '38cm', 'Teclado'),
(null, 'HyperX', 13, 1900.00, 'Poderosa máquina de calcular', '8cm', 'Processador'),
(null, 'Logitech', 17, 678.00, 'Armazena uma grande quantidade de dados', '14cm', 'SSD'),
(null, 'Redragon', 9, 110.00, 'Dispositivo que controla um cursor', '10cm', 'Mouse');

create table Compra(
id_comp int primary key auto_increment not null,
data_comp date not null,
forma_Pag_comp varchar(50) not null,
valor_comp double not null,
quantidade_comp int,
id_forn_fk int,
foreign key (id_forn_fk) references Fornecedor(id_forn)
);

/*INSERTS - 6. Insira os registros necessários para comprar 05 produtos de 01 fornecedor.*/

insert into Compra values
(null, '2020-05-06', 'Dinheiro', 990, 9, 2),
(null, '2020-05-09', 'Cartão', 10440, 18, 2),
(null, '2020-05-09', 'Cartão', 11200, 2, 2),
(null, '2020-05-22', 'Cheque', 11210, 19, 2),
(null, '2020-05-22', 'Cheque', 24700, 13, 2);


create table Despesa(
id_desp int primary key auto_increment not null,
descricao_desp varchar(200),
valor_desp double not null,
data_desp date not null,
forma_pag_desp varchar(100) not null,
id_forn_fk int,
foreign key (id_forn_fk) references fornecedor (id_forn)
);

/*INSERTS - 4. Insira 03 registros nas tabelas Despesa e Caixa.*/

insert into Despesa values
(null, 'Salário', 22900, '2020-06-13', 'A vista', null),
(null, 'Periféricos', 11200, '2020-06-13', 'A vista', 2), 
(null, 'Outros', 1600, '2020-06-13', 'A vista', null);

create table Caixa(
id_caix int primary key auto_increment not null,
data_caix date not null,
saldo_inicial_caix double not null,
total_pagamento_caix double not null,
saldo_final_caix double not null,
total_recebimento_caix double not null,
id_func_fk int,
foreign key (id_func_fk) references funcionario (id_func)
);

/*INSERTS - 4. Insira 03 registros nas tabelas Despesa e Caixa.*/

insert into Caixa values
(null, '2020-06-9', 200.00, 580.00, 780, 580.00, 2),
(null, '2020-06-13', 200.00, 477.00, 677.00, 477.00, 2),
(null, '2020-06-16', 200.00, 5600.00, 760.00, 5600.00, 2),
(null, '2020-06-19', 200.00, 110.00, 310.00, 110.00, 2),
(null, '2020-06-27', 200.00, 678.00, 878.00, 678.00, 2),
(null, '2020-06-28', 200.00, 100.00, 300.00, 100.00, 2),
(null, '2020-06-29', 200.00, 20.00, 220.00, 20.00, 2);

create table Pagamento(
id_paga int primary key auto_increment not null,
data_paga date not null,
valor_paga double not null,
forma_paga varchar(50) not null,
parcela_paga int,
id_comp_fk int,
id_caix_fk int,
id_desp_fk int,
foreign key (id_comp_fk) references compra (id_comp),
foreign key (id_caix_fk) references caixa (id_caix),
foreign key (id_desp_fk) references despesa (id_desp)
);

/*INSERTS - 7. Insira os registros necessários para pagar 02 despesas.*/

insert into Pagamento values 
(null, '2020-06-05', 22900, 'Cheque', null, 3, null, 2),
(null, '2020-06-13', 11200, 'Cartão', null, null, null, 1);

create table Venda (
id_vend int primary key auto_increment not null,
valor_vend double not null,
data_vend date not null,
hora_vend varchar(20),
forma_pag_vend varchar(100),
id_clie_fk int,
id_func_fk int,
foreign key (id_clie_fk) references cliente (id_clie),
foreign key (id_func_fk) references funcionario (id_func)
);

/*INSERTS - 5. Insira os registros necessários para vender 05 produtos para 01 cliente.*/

insert into Venda values
(null, 580.00, '2020-06-9', '16:20:00', 'A vista', 9, 3),
(null, 477.00, '2020-06-13', '17:15:00', 'A vista', 9, 3),
(null, 5600.00, '2020-06-16', '18:01:00', 'A vista', 9, 3),
(null, 110.00, '2020-06-19', '18:58:00', 'A vista', 9, 1),
(null, 678.00, '2020-06-27', '19:36:00', 'A vista', 9, 1),
(null, 100.00, '2020-06-28', '19:36:00', 'A vista', 6, 3),
(null, 20.00, '2020-06-29', '14:30:00', 'A vista', 3, 1);


create table Recebimento (
id_rece int primary key auto_increment not null,
valor_rece double not null,
parcela_rece int,
forma_rece varchar(100) not null,
data_vencimento_rece date not null,
id_caix_fk int,
id_vend_fk int,
foreign key (id_caiX_fk) references caixa (id_caix),
foreign key (id_vend_fk) references Venda(id_vend)
);

/*INSERTS - 8. Insira os registros necessários para receber as 05 vendas realizadas.*/

insert into Recebimento values
(null, 580.00, '1', 'Cartão', '2020-06-9', 1, 1),
(null, 477.00, '1', 'Cartão', '2020-06-13', 2, 2),
(null, 5600.00, '2', 'Cheque', '2020-06-16', 3, 3),
(null, 110.00, not null, 'Dinheiro', '2020-06-19', 4, 4),
(null, 678.00, '2', 'Cheque', '2020-06-27', 5, 5),
(null, 100.00, not null, 'Dinheiro', '2020-06-28', 6, 6),
(null, 20.00, not null, 'Dinheiro', '2020-06-29', 7, 7);

create table Venda_Serv(
id_vser int primary key auto_increment not null,
id_vend_fk int,
id_serv_fk int,
foreign key (id_vend_fk) references venda (id_vend),
foreign key (id_serv_fk) references servico (id_serv)
);

/*INSERTS*/

insert into Venda_Serv values
(null, 6, 1),
(null, 7, 3);

create table Venda_Prod(
id_vpro int primary key auto_increment not null,
id_vend_fk int,
id_prod_fk int,
quant_vpro int,
foreign key (id_vend_fk) references venda (id_vend),
foreign key (id_prod_fk) references produto (id_prod)
);

/*INSERTS - 5. Insira os registros necessários para vender 05 produtos para 01 cliente.*/

insert into Venda_prod values
(null, 1, 2, 1),
(null, 2, 1, 1),
(null, 3, 5, 1),
(null, 4, 10, 1),
(null, 5, 9, 1);


create table Compra_Prod(
id_cprod int primary key auto_increment not null,
id_comp_fk int,
id_prod_fk int,
quant_cprod int,
valor_cprod float,
foreign key (id_comp_fk) references Compra (id_comp),
foreign key (id_prod_fk) references Produto (id_prod)
);

/*INSERTS - 6. Insira os registros necessários para comprar 05 produtos de 01 fornecedor.*/

insert into Compra_prod values
(null, 1, 10, 9, 990.00),
(null, 2, 2, 18, 10440.00),
(null, 3, 5, 2, 11200.00),
(null, 4, 7, 19, 11210.00),
(null, 5, 8, 13, 24700.00);

create table Funcionario_Servico (
id_fserv int not null primary key auto_increment,
id_func_fk int,
id_serv_fk int,
foreign key (id_func_fk) references Funcionario (id_func),
foreign key (id_serv_fk) references Servico (id_serv)
);

/*INSERTS*/

insert into Funcionario_Servico values 
(null, 3, 1),
(null, 1, 3);

# 1. Atualize o salário para R$ 5.000,00 nos funcionários com a função de vendedor e ordene pelo nome;
update Funcionario set salario_func = 5000 where (funcao_func LIKE '%vendedor%') order by nome_func;

# 2. Atualize a renda familiar para R$ 10.000,00 nos clientes do sexo feminino e com data de nascimento maior que 01/01/2000 e ordene pelo nome;
update Cliente set renda_fami_clie = 10000 where (sexo_clie = 'Feminino') and (data_nasc_clie > '2000-01-01') order by nome_clie;

# 3. Selecione os dados dos produtos com estoque superior a 5;
select * from Produto where (quantidade_prod > 5);

# 4. Selecione os dados dos serviços com o valor entre R$ 10,00 e R$ 1.000,00;
select * from Servico where (valor_serv between 10 and 1000);

# 5. Selecione os dados dos fornecedores que contenham a palavra 'fiat' no nome atributo nome;
select * from Fornecedor where (nome_forn like '%fiat%'); #kk

# 6. Selecione o valor médio dos produtos;
select avg(valor_prod) from Produto;

# 7. Selecione o salário máximo dos funcionários;
select max(salario_func) from Funcionario;

# 8. Selecione a soma dos salários dos funcionários;
select sum(salario_func) from Funcionario;

# 9. Selecione o valor mínimo dos serviços;
select min(valor_serv) from Servico;

# 10. Selecione os clientes do sexo feminino ou masculino;
select * from Cliente where (sexo_clie = 'Feminino') or (sexo_clie = 'Masculino');
