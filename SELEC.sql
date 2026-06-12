SELECT 
    V.Data AS Data_da_Venda,
    VD.Nome AS Nome_do_Vendedor,
    V.Nome_Cliente AS Nome_do_Cliente,
    R.Valor AS Valor_Total_Pago_pelo_Cliente,
    PF.Valor_Custo_Produto AS Valor_de_Custo_do_Fornecedor,
    C.Valor_Bonificacao AS Valor_da_Comissao_do_Consultor
FROM VENDA V
INNER JOIN VENDEDOR VD ON V.Matricula_Vendedor = VD.Matricula
INNER JOIN RECEBIMENTO R ON V.id_Venda = R.id_Venda
INNER JOIN PAGAMENTO_FORNECEDOR PF ON V.id_Venda = PF.id_Venda
INNER JOIN COMISSAO C ON V.id_Venda = C.id_Venda;