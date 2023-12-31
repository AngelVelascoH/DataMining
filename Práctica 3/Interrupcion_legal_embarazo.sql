USE [Interrupcion_legal_embarazo]
GO
/****** Object:  Table [dbo].[interrupciones]    Script Date: 30/09/2021 09:37:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interrupciones](
	[año] [smallint] NULL,
	[mes] [nvarchar](50) NULL,
	[fingreso] [date] NULL,
	[edocivil_descripcion] [nvarchar](500) NULL,
	[edad] [tinyint] NULL,
	[desc_derechohab] [nvarchar](500) NULL,
	[nivel_edu] [nvarchar](500) NULL,
	[ocupacion] [nvarchar](500) NULL,
	[religion] [nvarchar](500) NULL,
	[parentesco] [nvarchar](500) NULL,
	[entidad] [nvarchar](500) NULL,
	[alc_o_municipio] [nvarchar](500) NULL,
	[fsexual] [tinyint] NULL,
	[sememb] [tinyint] NULL,
	[nhijos] [tinyint] NULL,
	[gesta] [tinyint] NULL,
	[naborto] [tinyint] NULL,
	[consejeria] [nvarchar](500) NULL,
	[anticonceptivo] [nvarchar](500) NULL,
	[c_fecha] [date] NULL,
	[c_num] [tinyint] NULL,
	[motiles] [nvarchar](500) NULL,
	[h_fingreso] [nvarchar](500) NULL,
	[h_fegreso] [nvarchar](500) NULL,
	[desc_servicio] [nvarchar](500) NULL,
	[p_semgest] [tinyint] NULL,
	[procile] [nvarchar](500) NULL,
	[s_complica] [nvarchar](500) NULL,
	[c_dolor] [nvarchar](500) NULL,
	[fecha_cierre] [date] NULL,
	[resultado_ile] [nvarchar](500) NULL,
	[procile_simplificada] [nvarchar](500) NULL
) ON [PRIMARY]
GO
