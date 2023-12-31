USE [DW]
GO
/****** Object:  View [dw_ods].[VW_ODS_RECEBIMENTO]    Script Date: 08/10/2023 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dw_ods].[VW_ODS_RECEBIMENTO] as
(

select 
		DATA_LANCAMENTO as DATA_RECEBIMENTO
		,left(descricao,charindex('-',DESCRICAO)-1) as TIPO_RECEBIMENTO
		,iif(right(descricao,charindex('-',reverse(DESCRICAO))-1) = '','NÃO IDENTIFICADO',right(descricao,charindex('-',reverse(DESCRICAO))-1)) as NOME_PAGADOR
		,SEB.VALOR AS VALOR_RECEBIMENTO
		,SEB.SALDO AS SALDO_TOTAL
from dw_stg.STG_EXTRATO_BANCARIO SEB
where SEB.VALOR > 0



)
GO
