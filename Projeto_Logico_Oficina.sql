-- criando banco de dados para o cenário de oficina
create database oficina;
use oficina;

-- drop table clients;
-- criar tabela de clientes
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(50),
    constraint unique_cpf_client unique(CPF)
);

select * from clients;
-- criar tabela de clientes
create table vehicles(
	idVehicle int auto_increment primary key,
	idClient int,
    quantity int
);

-- tabela de mecânicos 
create table mechanics(
	idMechanics int auto_increment primary key,
	Fname int,
    quantity int
);

-- tabela de serviços
create table services(
	idServices int auto_increment primary key,
	vehicleRepair boolean default 0,
    vehicleCheckup boolean default 0
);

-- tabela de Ordem de Serviço (OS)
create table serviceOrder(
	idnumSOrder int auto_increment primary key,
	idMechanics int,
	dateE date,
    dateC date,
    vTotal varchar(45)
);

-- tabela de peças
create table parts(
	idParts int auto_increment primary key,
    idnumSOrder int,
    nameParts varchar(45),
    valueParts varchar(45)
);

-- tabela de mão-de-obra
create table labor(
	idLabor int auto_increment primary key,
	totalLabor(45),
);

-- Criada a partir da relação Veículos-Mecânicos
create table vMechanics(
	idVehicle int,
    idClient int,
    quantity int not null,
    primary key (idVehicle idClient),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);










