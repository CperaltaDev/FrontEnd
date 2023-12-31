USE [MercaWeb]
GO
/****** Object:  Table [dbo].[TBL_Producto]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](50) NULL,
	[Tipo] [varchar](50) NULL,
	[Valor] [money] NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_rol]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_rol](
	[idrol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[estado] [bit] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[idrol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_usuario]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[idrol] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[documento] [varchar](20) NULL,
	[direccion] [varchar](70) NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[estado] [bit] NULL CONSTRAINT [DF__usuario__estado__1DE57479]  DEFAULT ((1)),
 CONSTRAINT [PK__usuario__080A9743B0EE6C61] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_Venta]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Producto] [varchar](50) NULL,
	[Tipo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Valor] [money] NULL,
	[Usuario] [varchar](50) NULL,
	[Descuento] [int] NULL,
	[Fecha] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Producto] ON 

INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (1, N'Proteina', N'Pollo', 23652.0000, N'Pechuga con Pollo')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (2, N'Proteina', N'Pollo', 69950.0000, N'Filte de Media Pechuga')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (3, N'Proteina', N'Pollo', 15900.0000, N'Muslo Bucanero')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (4, N'Proteina', N'Carne', 18990.0000, N'Bola de Pierna')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (5, N'Proteina', N'Carne', 9990.0000, N'Beef Steak')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (6, N'Proteina', N'Carne', 14990.0000, N'Sobrebarriga')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (7, N'Proteina', N'Pescado', 9450.0000, N'Mojarra')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (8, N'Proteina', N'Pescado', 37990.0000, N'Salmon')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (9, N'Proteina', N'Pescado', 23250.0000, N'Tilapia')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (10, N'Proteina', N'Mariscos', 38000.0000, N'Mix de Mariscos')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (11, N'Proteina', N'Mariscos', 35900.0000, N'Mix de Pesquera')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (12, N'Proteina', N'Mariscos', 25800.0000, N'Marisco Pesco')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (13, N'Despensa', N'Atunes', 29990.0000, N'Atun Aceite')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (14, N'Despensa', N'Atunes', 21990.0000, N'Atun Cusine')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (15, N'Despensa', N'Atunes', 21990.0000, N'Atun Colomo')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (16, N'Despensa', N'Harinas', 3290.0000, N'Harina de Maiz')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (17, N'Despensa', N'Harinas', 9992.0000, N'Harina de Trigo')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (18, N'Despensa', N'Harinas', 4500.0000, N'Harina Extrafina')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (19, N'Despensa', N'Harinas', 28990.0000, N'Finesse')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (20, N'Lacteos', N'Huevos', 24000.0000, N'Huevos Kikes')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (21, N'Granos', N'Granos', 22290.0000, N'Arroz Diana Blanco')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (22, N'Granos', N'Granos', 19590.0000, N'Grano Valey')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (23, N'Granos', N'Granos', 4790.0000, N'Pasta')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (24, N'Congelados', N'Congelados', 15590.0000, N'Pulpas Congelado')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (25, N'Cafe', N'Cafe', 12990.0000, N'Colcafe')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (26, N'Cafe', N'Cafe', 21990.0000, N'Nescafe')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (27, N'Cafe', N'Cafe', 18290.0000, N'Sello Rojo')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (28, N'Te', N'Te', 24990.0000, N'Te')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (29, N'Chocolates', N'Chocolate', 9390.0000, N'Corona')
INSERT [dbo].[TBL_Producto] ([id], [Producto], [Tipo], [Valor], [Descripcion]) VALUES (30, N'Chocolates', N'Chocolate', 9190.0000, N'Sol')
SET IDENTITY_INSERT [dbo].[TBL_Producto] OFF
SET IDENTITY_INSERT [dbo].[TBL_rol] ON 

INSERT [dbo].[TBL_rol] ([idrol], [nombre], [descripcion], [estado]) VALUES (1, N'Administrador', N'Superusuario', 1)
INSERT [dbo].[TBL_rol] ([idrol], [nombre], [descripcion], [estado]) VALUES (2, N'Usuario', N'Usuario Estandar', 1)
SET IDENTITY_INSERT [dbo].[TBL_rol] OFF
SET IDENTITY_INSERT [dbo].[TBL_usuario] ON 

INSERT [dbo].[TBL_usuario] ([idusuario], [idrol], [nombre], [documento], [direccion], [telefono], [email], [password], [estado]) VALUES (1, 2, N'CARLOS PERALTA', N'123456', N'CALLE 25 NO 78 90', N'5555555', N'PRUEBAS@WEB.COM', N'COLOMBIA2020*+', 1)
INSERT [dbo].[TBL_usuario] ([idusuario], [idrol], [nombre], [documento], [direccion], [telefono], [email], [password], [estado]) VALUES (2, 2, N'MANUELA PERALTA', N'4548474845', N'CALLE 187 NO 89 76', N'74589652', N'MPERALTA', N'!admin', 1)
SET IDENTITY_INSERT [dbo].[TBL_usuario] OFF
SET IDENTITY_INSERT [dbo].[TBL_Venta] ON 

INSERT [dbo].[TBL_Venta] ([id], [Producto], [Tipo], [Descripcion], [Cantidad], [Valor], [Usuario], [Descuento], [Fecha]) VALUES (1, N'Proteina', N'Pollo', N'Pechuga con Pollo', 1, 0.0000, N'cperalta', 0, N'9/10/2023 10:34:01 p. m.')
SET IDENTITY_INSERT [dbo].[TBL_Venta] OFF
/****** Object:  StoredProcedure [dbo].[SP_MW_PRODUCTO]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:         Carlos Peralta
-- Create date:    2023-10-10
-- Description:	   CONSULTA VENTA .
-- Version:        1.0.0.0
-- Project:        PRJ MERCAWEB
-- =============================================


CREATE PROCEDURE [dbo].[SP_MW_PRODUCTO]

@tipo varchar(10)

AS 

  BEGIN TRY
	SELECT  DISTINCT Producto,tipo  FROM TBL_Producto WHERE Tipo = @tipo 
  END TRY

BEGIN CATCH
        --EXEC [LogStoredProcedure].[dbo].[proc_AdicionarLogSP] 'SP_MW_PRODUCTO'
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SP_MW_PROTEINAS]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:         Carlos Peralta
-- Create date:    2023-10-10
-- Description:	   CONSULTA PROTEINA .
-- Version:        1.0.0.0
-- Project:        PRJ MERCAWEB
-- =============================================


CREATE PROCEDURE [dbo].[SP_MW_PROTEINAS]


AS 

  BEGIN TRY
	SELECT DISTINCT tipo FROM TBL_Producto WHERE Tipo = 'pollo' 
  END TRY

BEGIN CATCH
        --EXEC [LogStoredProcedure].[dbo].[proc_AdicionarLogSP] 'EXEC SP_MW_PROTEINAS'
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[SP_MW_TIPO]    Script Date: 09/10/2023 22:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:         Carlos Peralta
-- Create date:    2023-10-10
-- Description:	   CONSULTA VENTA .
-- Version:        1.0.0.0
-- Project:        PRJ MERCAWEB
-- =============================================


CREATE PROCEDURE [dbo].[SP_MW_TIPO]

@tipo varchar(10)

AS 

  BEGIN TRY
	SELECT Descripcion FROM TBL_Producto WHERE Tipo = @tipo 
  END TRY

BEGIN CATCH
        --EXEC [LogStoredProcedure].[dbo].[proc_AdicionarLogSP] 'EXEC SP_MW_PROTEINAS'
END CATCH
GO
