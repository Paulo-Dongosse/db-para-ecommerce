# 🛒 Projeto Banco de Dados - E-commerce  

![Badge MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql)  
![Badge Status](https://img.shields.io/badge/Status-Concluído-brightgreen)  
![Badge Author](https://img.shields.io/badge/Autor-Paulo%20João%20Dongosse-orange)

---

## 📖 Sobre o Projeto  

Este projeto consiste no **desenvolvimento de um banco de dados relacional para um sistema de E-commerce**, simulando a estrutura utilizada em plataformas de vendas online.  

O objetivo é **armazenar e gerenciar informações essenciais do negócio**, permitindo consultas estratégicas e o controle de todo o fluxo comercial, desde o cadastro de clientes até a entrega do pedido.  

Com esse banco, é possível:  
- Gerenciar **clientes** (pessoa física e jurídica);  
- Cadastrar **produtos, fornecedores e vendedores**;  
- Registrar **pedidos** e relacioná-los com seus respectivos produtos;  
- Controlar **estoque, frete e status de pedidos**;  
- Mapear relações de **produto-fornecedor** e **produto-vendedor**;  
- Realizar consultas SQL para **análise e tomada de decisão**.  

---

## 📂 Estrutura do Projeto  

📁 **db_projeto/**  
- 📄 [`script tb e-commerce.sql`](./script%20tb%20e-commerce.sql) → Criação de tabelas (DDL)  
- 📄 [`insercao as tabelas.sql`](./insercao%20as%20tabelas.sql) → Inserção de dados (DML - INSERT)  
- 📄 [`script de Consulta.sql`](./script%20de%20Consulta.sql) → Consultas SQL (SELECT, WHERE, JOIN, GROUP BY)  
- 🖼️ [`DER e_commerce.png`](./DER%20e_commerce.png) → Diagrama Entidade-Relacionamento (imagem)  
- 📄 [`DER e_commerce2.pdf`](./DER%20e_commerce2.pdf) → DER em formato PDF  

---

## 🗂️ Modelo Entidade-Relacionamento  

O **DER (Diagrama Entidade-Relacionamento)** representa as entidades e os relacionamentos do sistema.  

### 📌 Versão PNG  
![Diagrama DER](./DER%20e_commerce.png)  

### 📌 Versão PDF  
📄 [Abrir DER em PDF](./DER%20e_commerce2.pdf)  

---

## 🚀 Como executar o projeto  

1. Clone este repositório:  
   ```bash
   git clone https://github.com/seu-usuario/db_projeto.git
   cd db_projeto
