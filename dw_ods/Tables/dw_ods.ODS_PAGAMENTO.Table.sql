USE [DW]
GO
/****** Object:  Table [dw_ods].[ODS_PAGAMENTO]    Script Date: 08/10/2023 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw_ods].[ODS_PAGAMENTO](
	[DATA_RECEBIMENTO] [datetime] NULL,
	[TIPO_PAGAMENTO] [varchar](500) NULL,
	[NOME_BENEFICIARIO] [varchar](500) NULL,
	[VALOR_RECEBIMENTO] [numeric](15, 2) NULL,
	[SALDO_TOTAL] [numeric](15, 2) NULL,
	[DATA_CARGA] [datetime] NULL
) ON [PRIMARY]
GO
