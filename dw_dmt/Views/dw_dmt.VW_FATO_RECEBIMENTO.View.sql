USE [DW]
GO
/****** Object:  View [dw_dmt].[VW_FATO_RECEBIMENTO]    Script Date: 08/10/2023 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dw_dmt].[VW_FATO_RECEBIMENTO] 
as (
	select 
			dt.SK_DIM_TEMPO 
			,tp.SK_DIM_TIPO_RECEBIMENTO
			,be.SK_DIM_DEVEDOR
			,VALOR_RECEBIMENTO
			,SALDO_TOTAL
	from dw_ods.VW_ODS_RECEBIMENTO OP
	inner join dw_dmt.DIM_TIPO_RECEBIMENTO tp on op.TIPO_RECEBIMENTO = tp.TIPO_RECEBIMENTO
	inner join dw_dmt.DIM_DEVEDOR be on op.NOME_PAGADOR = be.NOME_DEVEDOR
	inner join dw_dmt.DIM_TEMPO dt on dt.DATA = op.DATA_RECEBIMENTO

)
GO
