 -- USE e_commerce;
-- criar tabela cliente
create table Cliente (
	idCliente int auto_increment primary key,
	nome varchar(50) not null,
	sobrenome varchar(50),
	endereco varchar(100),
	dataNascimento date
);
ALTER TABLE Cliente DROP COLUMN cpf;

-- Cliente Pessoa Física
CREATE TABLE ClientePF (
    idCliente int primary key,
    cpf char(11) unique,
    foreign key (idCliente) references Cliente(idCliente)
);

-- Cliente Pessoa Jurídica
CREATE TABLE ClientePJ (
    idCliente int primary key,
    cnpj char(18) unique not null,
    razaoSocial varchar(100),
    foreign key (idCliente) references Cliente(idCliente)
);

--  tabela produto
create table Produto (
	idProduto int auto_increment primary key,
    categoria varchar(50),
    descricao varchar(50),
    valor float
);

-- tabela pedido

create table Pedido (
	idPedido int auto_increment primary key,
    statusPedido enum('aberto', 'fechado', 'cancelado') not null,
    descricao varchar(50),
    idCliente int,
    frete float,
    foreign key  (idCliente) references Cliente(idCliente)
);

-- tabela Procuto_Pedido

create table ProdutoPedido (
	idProduto int,
    idPedido int,
    quantidade int,
    status enum('disponivel', 'sem_estoque') not null,
    primary key (idProduto, idPedido),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idPedido) references Pedido(idPedido)
);

-- tabela Estoque
create table Estoque (
	idEstoque int auto_increment primary key,
    localizacao varchar(100),
    quantidade int
);

-- tabela Produto_estoque
create table ProdutoEstoque (
	idProduto int,
    idEstoque int,
    localizacao varchar(100),
    primary key (idProduto, idEstoque),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idEstoque) references Estoque(idEstoque)
);


-- tabela fornecedor

create table Fornecedor (
	idFornecedor int auto_increment primary key,
    razaoSocial varchar(50),
    cnpj char(18) unique not null,
    contacto varchar(15)
);

-- tabela Produto_Fornecedor

create table ProdutoFornecedor (
	idFornecedor int,
    idProduto int,
    quantidade int,
    primary key (idFornecedor, idProduto),
    foreign key (idFornecedor) references Fornecedor(idFornecedor),
    foreign key (idProduto) references Produto(idProduto)
);


--  tabela Vendedor
create table Vendedor (
	idVendedor int auto_increment primary key,
    razaoSocial varchar(50),
    nomeFantasia varchar(50),
    localizacao varchar(100),
    cnpj char(18) unique,
    cpf char(11) unique,
    contacto varchar(15)
);


-- Tabela Peoduto_Vndedor
create table ProdutoVendedor (
	idVendedor int,
    idProduto int,
    quantidade int,
    primary key (idVendedor, idProduto),
    foreign key (idVendedor) references Vendedor(idVendedor),
    foreign key (idProduto) references Produto(idProduto)
);


-- Tabela Pagamento
create table Pagamento(
    idPagamento int auto_increment primary key,
    idPedido int,
    tipo enum('cartao','boleto','pix','transferencia') not null,
    valor decimal(10,2),
    foreign key (idPedido) references Pedido(idPedido)
);

--   Tabela Entrega
create table Entrega (
    idEntrega int auto_increment primary key,
    idPedido int,
    statusEntrega enum('pendente','enviado','em_transito','entregue','cancelado') not null,
    codigoRastreio VARCHAR(50),
    foreign key(idPedido) references Pedido(idPedido)
);


-- Atualizar endereço do cliente
UPDATE Cliente
SET endereco = 'Av. Central, 999'
WHERE idCliente = 1;

-- Atualizar valor de um produto
UPDATE Produto
SET valor = valor * 1.10
WHERE categoria = 'Eletrônico';


show tables;
describe Cliente;
select * from Cliente;

describe Pagamento;