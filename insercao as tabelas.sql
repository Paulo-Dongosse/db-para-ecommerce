-- USE e_commerce;

-- USE e_commerce;

-- Inserindo Clientes
INSERT INTO Cliente (nome, sobrenome, endereco, dataNascimento) VALUES
('João', 'Silva', 'Rua A, 123', '1990-01-01'),
('Maria', 'Oliveira', 'Rua B, 456', '1985-02-02'),
('Pedro', 'Souza', 'Rua C, 789', '1992-03-03'),
('Ana', 'Costa', 'Rua D, 101', '1988-04-04'),
('Lucas', 'Pereira', 'Rua E, 202', '1995-05-05'),
('Carla', 'Rodrigues', 'Rua F, 303', '1993-06-06'),
('Marcos', 'Almeida', 'Rua G, 404', '1991-07-07'),
('Fernanda', 'Nascimento', 'Rua H, 505', '1989-08-08'),
('Ricardo', 'Mendes', 'Rua I, 606', '1996-09-09'),
('Juliana', 'Barbosa', 'Rua J, 707', '1994-10-10');

-- Cliente Pessoa Física (CPF sequência)
INSERT INTO ClientePF (idCliente, cpf) VALUES
(1, '11111111110'),
(2, '11111111111'),
(3, '11111111112'),
(4, '11111111113'),
(5, '11111111114'),
(6, '11111111115'),
(7, '11111111116'),
(8, '11111111117'),
(9, '11111111118'),
(10,'11111111119');

-- Cliente Pessoa Jurídica
INSERT INTO ClientePJ (idCliente, cnpj, razaoSocial) VALUES
(1, '222222222222222220', 'Empresa A'),
(2, '222222222222222221', 'Empresa B'),
(3, '222222222222222222', 'Empresa C'),
(4, '222222222222222223', 'Empresa D'),
(5, '222222222222222224', 'Empresa E'),
(6, '222222222222222225', 'Empresa F'),
(7, '222222222222222226', 'Empresa G'),
(8, '222222222222222227', 'Empresa H'),
(9, '222222222222222228', 'Empresa I'),
(10,'222222222222222229', 'Empresa J');

-- Produtos
INSERT INTO Produto (categoria, descricao, valor) VALUES
('Eletrônico', 'Celular', 1200.00),
('Eletrônico', 'Notebook', 3500.00),
('Móvel', 'Cadeira Gamer', 800.00),
('Móvel', 'Mesa Escritório', 600.00),
('Eletrodoméstico', 'Geladeira', 2500.00),
('Eletrodoméstico', 'Micro-ondas', 500.00),
('Esporte', 'Bicicleta', 1500.00),
('Esporte', 'Esteira', 2200.00),
('Vestuário', 'Jaqueta', 300.00),
('Vestuário', 'Tênis', 400.00);

-- Pedidos
INSERT INTO Pedido (statusPedido, descricao, idCliente, frete) VALUES
('aberto', 'Pedido 1', 1, 50.00),
('fechado', 'Pedido 2', 2, 30.00),
('cancelado', 'Pedido 3', 3, 20.00),
('aberto', 'Pedido 4', 4, 60.00),
('fechado', 'Pedido 5', 5, 40.00),
('aberto', 'Pedido 6', 6, 25.00),
('cancelado', 'Pedido 7', 7, 70.00),
('fechado', 'Pedido 8', 8, 35.00),
('aberto', 'Pedido 9', 9, 45.00),
('fechado', 'Pedido 10', 10, 55.00);

-- ProdutoPedido
INSERT INTO ProdutoPedido (idProduto, idPedido, quantidade, status) VALUES
(1, 1, 2, 'disponivel'),
(2, 2, 1, 'disponivel'),
(3, 3, 5, 'sem_estoque'),
(4, 4, 3, 'disponivel'),
(5, 5, 1, 'disponivel'),
(6, 6, 4, 'sem_estoque'),
(7, 7, 2, 'disponivel'),
(8, 8, 1, 'disponivel'),
(9, 9, 6, 'sem_estoque'),
(10, 10, 2, 'disponivel');

-- Estoque
INSERT INTO Estoque (localizacao, quantidade) VALUES
('Depósito A', 100),
('Depósito B', 50),
('Depósito C', 75),
('Depósito D', 200),
('Depósito E', 150),
('Depósito F', 120),
('Depósito G', 80),
('Depósito H', 60),
('Depósito I', 40),
('Depósito J', 90);

-- ProdutoEstoque
INSERT INTO ProdutoEstoque (idProduto, idEstoque, localizacao) VALUES
(1, 1, 'Depósito A'),
(2, 2, 'Depósito B'),
(3, 3, 'Depósito C'),
(4, 4, 'Depósito D'),
(5, 5, 'Depósito E'),
(6, 6, 'Depósito F'),
(7, 7, 'Depósito G'),
(8, 8, 'Depósito H'),
(9, 9, 'Depósito I'),
(10,10, 'Depósito J');

-- Fornecedores
INSERT INTO Fornecedor (razaoSocial, cnpj, contacto) VALUES
('Fornecedor A', '333333333333333330', '11999990001'),
('Fornecedor B', '333333333333333331', '11999990002'),
('Fornecedor C', '333333333333333332', '11999990003'),
('Fornecedor D', '333333333333333333', '11999990004'),
('Fornecedor E', '333333333333333334', '11999990005'),
('Fornecedor F', '333333333333333335', '11999990006'),
('Fornecedor G', '333333333333333336', '11999990007'),
('Fornecedor H', '333333333333333337', '11999990008'),
('Fornecedor I', '333333333333333338', '11999990009'),
('Fornecedor J', '333333333333333339', '11999990010');

-- ProdutoFornecedor
INSERT INTO ProdutoFornecedor (idFornecedor, idProduto, quantidade) VALUES
(1, 1, 50),
(2, 2, 30),
(3, 3, 20),
(4, 4, 10),
(5, 5, 60),
(6, 6, 40),
(7, 7, 25),
(8, 8, 15),
(9, 9, 35),
(10,10, 45);

-- Vendedores
INSERT INTO Vendedor (razaoSocial, nomeFantasia, localizacao, cnpj, cpf, contacto) VALUES
('Vendedor A', 'Loja A', 'São Paulo', '444444444444444440', '11111111120', '11988880001'),
('Vendedor B', 'Loja B', 'Rio de Janeiro', '444444444444444441', '11111111121', '11988880002'),
('Vendedor C', 'Loja C', 'Belo Horizonte', '444444444444444442', '11111111122', '11988880003'),
('Vendedor D', 'Loja D', 'Porto Alegre', '444444444444444443', '11111111123', '11988880004'),
('Vendedor E', 'Loja E', 'Curitiba', '444444444444444444', '11111111124', '11988880005'),
('Vendedor F', 'Loja F', 'Recife', '444444444444444445', '11111111125', '11988880006'),
('Vendedor G', 'Loja G', 'Fortaleza', '444444444444444446', '11111111126', '11988880007'),
('Vendedor H', 'Loja H', 'Manaus', '444444444444444447', '11111111127', '11988880008'),
('Vendedor I', 'Loja I', 'Salvador', '444444444444444448', '11111111128', '11988880009'),
('Vendedor J', 'Loja J', 'Brasília', '444444444444444449', '11111111129', '11988880010');

-- ProdutoVendedor
INSERT INTO ProdutoVendedor (idVendedor, idProduto, quantidade) VALUES
(1, 1, 10),
(2, 2, 5),
(3, 3, 8),
(4, 4, 12),
(5, 5, 15),
(6, 6, 7),
(7, 7, 9),
(8, 8, 6),
(9, 9, 14),
(10,10, 11);

-- Pagamentos
INSERT INTO Pagamento (idPedido, tipo, valor) VALUES
(1, 'cartao', 1250.00),
(2, 'boleto', 3500.00),
(3, 'pix', 800.00),
(4, 'transferencia', 600.00),
(5, 'cartao', 2500.00),
(6, 'pix', 500.00),
(7, 'cartao', 1500.00),
(8, 'boleto', 2200.00),
(9, 'transferencia', 300.00),
(10,'cartao', 400.00);

-- Entregas
INSERT INTO Entrega (idPedido, statusEntrega, codigoRastreio) VALUES
(1, 'pendente', 'R12345'),
(2, 'enviado', 'R23456'),
(3, 'em_transito', 'R34567'),
(4, 'entregue', 'R45678'),
(5, 'cancelado', 'R56789'),
(6, 'pendente', 'R67890'),
(7, 'enviado', 'R78901'),
(8, 'em_transito', 'R89012'),
(9, 'entregue', 'R90123'),
(10,'cancelado', 'R01234');

rollback;