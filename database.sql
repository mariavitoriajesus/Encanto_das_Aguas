Create database Encanto_Aguas;
use Encanto_Aguas;

create table hospedes(
	id_hospedes int auto_increment primary key,
    nome varchar(100),
    cpf varchar(20) unique,
    telefone varchar(50),
    email varchar(150) unique, 
    endereco text
);
select * from hospedes;

create table quarto(
	id_quarto int auto_increment primary key,
    numero int unique,
    tipo varchar(50),
    capacidade int, 
    preco_diaria decimal(10,2),
    status enum('Disponivel', 'Ocupado', 'Manutenção')
);
select * from quarto;

create table reserva(
	id_reserva int auto_increment primary key,
    id_hospedes int,
    id_quarto int, 
    data_checkin date, 
    data_checkout date,
    status enum('Pendente', 'Confirmada', 'Cancelada'),
    foreign key (id_hospedes) references hospedes(id_hospedes),
    foreign key (id_quarto) references quarto(id_quarto) 
);
select * from reserva;

create table pagamento(
	id_pagamento int auto_increment primary key,
    id_reserva int, 
    valor decimal(10,2),
    metodo_pagamento enum('Crédito', 'Débito', 'Dinheiro', 'Pix'),
    status_pagamento enum('Pago', 'Pendente', 'Cancelado'),
    foreign key (id_reserva) references reserva(id_reserva)
);
select * from  pagamento;

create table servico_spa(
    id_servico int auto_increment primary key,
    nome_servico varchar(100),
    descricao text,
    preco decimal(10,2)
);
select * from servico_spa;

create table funcionario(
	id_funcionario int auto_increment primary key,
    nome varchar(100),
    cpf varchar(20) unique,
    cargo varchar(50),
    telefone varchar(25),
    email varchar(100),
    senha varchar(255)
);
select * from funcionario;

create table agendamento_spa(
	id_agendamento int auto_increment primary key,
    id_hospedes int, 
    id_servico int,
    data_hora datetime, 
    id_funcionario int, 
    foreign key (id_funcionario) references funcionario(id_funcionario),
    foreign key (id_hospedes) references hospedes(id_hospedes),
    foreign key (id_servico) references servico_spa(id_servico)
);
select * from agendamento_spa;

create table historico_hospedagem(
	id_historico int auto_increment primary key,
    id_hospedes int,
    id_quarto int,
    data_checkin date, 
    data_checkout date,
    valor_total decimal(10,2),
	foreign key (id_hospedes) references hospedes(id_hospedes),
    foreign key (id_quarto) references quarto(id_quarto)
);
select * from historico_hospedagem;