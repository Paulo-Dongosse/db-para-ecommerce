use e_commerce;

-- Quantos Pedidos foram feito  por cada cliente
select c.nome, c.sobrenome, count(p.idPedido) as total_pedidos
	from Cliente c
join Pedido p on c.idCliente = p.idCliente
	group by c.idCliente;
    
 -- Verificar se alguns vendedores também são fornecedores
 select v.razaoSocial as Vendedor, f.razaoSocial as Fornecedor
	from Vendedor v
join Fornecedor f on v.cnpj = f.cnpj or v.cpf = f.cnpj;

-- ver relação de produtos, fornecedores e estoques
select pr.descricao as produto, f.razaoSocial as Fornecedor, e.localizacao, e.quantidade
	from Produto pr
join ProdutoFornecedor pf on pr.idProduto = pf.idProduto
join Fornecedor f on f.idFornecedor = pf.idFornecedor
join ProdutoEstoque pe on pr.idProduto = pe.idProduto
join Estoque e on e.idEstoque = pe.IdEstoque;

-- relacao entre nomes dos fornecedores e nomes dos produtos
select f.razaoSocial as Fornecedor, p.descricao as Produtos
	from ProdutoFornecedor pf
join Fornecedor f on pf.idFornecedor = f.idFornecedor
join Produto p on pf.idProduto = p.idProduto;

-- Total de gastos por clientes (valor do pedido + frete)
 select c.nome, c.sobrenome, sum(pg.valor + pe.frete) as Total_gasto
	from Cliente c
join Pedido pe on c.idCliente = pe.idCliente
join Pagamento pg on pe.idPedido = pg.idPedido
	group by c.idCliente
	order by Total_gasto desc;

-- cliente que fizeram mais de 2 pedidos
select c.nome, c.sobrenome, count(p.idPedido) as qtd_pedido
	from Cliente c
join Pedido p on c.idCliente = p.idPedido
group by c.idCliente
having count(p.idPedido)  <= 2;
