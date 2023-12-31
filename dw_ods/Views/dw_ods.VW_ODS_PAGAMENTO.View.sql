USE [DW]
GO
/****** Object:  View [dw_ods].[VW_ODS_PAGAMENTO]    Script Date: 08/10/2023 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dw_ods].[VW_ODS_PAGAMENTO] as
(

select 
		DATA_LANCAMENTO as DATA_RECEBIMENTO
		,IIF(ISNULL(left(descricao,charindex('-',DESCRICAO)-1),'NÃO IDENTIFICADO') = '','NÃO IDENTIFICADO',left(descricao,charindex('-',DESCRICAO)-1)) as TIPO_RECEBIMENTO
		,replace(IIF(right(descricao,charindex('-',reverse(DESCRICAO))-1) = '','NÃO IDENTIFICADO',right(descricao,charindex('-',reverse(DESCRICAO))-1)),'No estabelecimento', '') as NOME_BENEFICIARIO
		,SEB.VALOR AS VALOR_RECEBIMENTO
		,IIF(SEB.SALDO < 0,0,SEB.SALDO) AS SALDO_TOTAL
from dw_stg.STG_EXTRATO_BANCARIO SEB
where SEB.VALOR < 0



)
GO
