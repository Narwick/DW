USE [DW]
GO
/****** Object:  Table [dw_stg].[STG_EXTRATO_BANCARIO]    Script Date: 08/10/2023 15:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw_stg].[STG_EXTRATO_BANCARIO](
	[DATA_LANCAMENTO] [datetime] NULL,
	[DESCRICAO] [varchar](500) NULL,
	[VALOR] [numeric](15, 2) NULL,
	[SALDO] [numeric](15, 2) NULL
) ON [PRIMARY]
GO
