-- Inserindo o Vendedor responsável
INSERT INTO VENDEDOR (Matricula, Nome) 
VALUES ('VND001', 'Carlos Silva');

-- Inserindo o Fornecedor parceiro
INSERT INTO FORNECEDOR (CNPJ, Nome_Fantasia, Contato) 
VALUES ('12345678000199', 'Operadora Turística Mundial', 'contato@mundial.com');

-- Inserindo o Serviço base
INSERT INTO SERVICO (Descricao, Categoria) 
VALUES ('Hospedagem em Resort 5 Estrelas', 'Hotelaria');

-- Inserindo o Pacote comercializado
INSERT INTO PACOTE (Descricao, Preco_Venda) 
VALUES ('Pacote de Férias Premium Caribe', 5500.00);

-- Vinculando o Serviço ao Pacote
INSERT INTO PACOTE_SERVICO (id_Pacote, id_Servico) 
VALUES (1, 1);

-- Inserindo uma Venda ativa (Fluxo Completo solicitado)
INSERT INTO VENDA (Data, Valor_Total, Matricula_Vendedor, Nome_Cliente) 
VALUES ('2026-06-11', 5500.00, 'VND001', 'Marianne Souza');

-- Registro Financeiro 1: Comissão gerada para o Consultor/Vendedor
INSERT INTO COMISSAO (Valor_Bonificacao, id_Venda) 
VALUES (550.00, 1);

-- Registro Financeiro 2: Recebimento do Cliente associado à Venda
INSERT INTO RECEBIMENTO (Metodo, Valor, Status, id_Venda) 
VALUES ('Cartão de Crédito', 5500.00, 'Pago', 1);

-- Registro Financeiro 3: Custo/Pagamento originado para o Fornecedor
INSERT INTO PAGAMENTO_FORNECEDOR (Valor_Custo_Produto, Data_Limite_Pagamento, id_Venda, CNPJ_Fornecedor) 
VALUES (3500.00, '2026-07-11', 1, '12345678000199');