USE [MaestroPokemon]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/11/2022 11:38:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](35) NOT NULL,
	[Correo] [varchar](500) NOT NULL,
	[Password] [varchar](500) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (1, N'Daniel', N'danyband@gmail.com', N'78890')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (2, N'Carlos ', N'carlitosway@gmail.com', N'800888')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (3, N'', N'', N'')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (11, N'Juan', N'juan1212@gmail.com', N'w13j1h2j1')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (15, N'Daniel Alfonso Martínez Payán ', N'daniel.alfonso.martinez@correounivalle.edu.co', N'')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (19, N'carlos', N'sabiovillalobos@hotmail.com', N'')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (20, N'DAniel', N'daniel12@gmail.com', N'12345')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (21, N'docente', N'sabiovillalobos2@hotmail.com', N'dasdasd')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (22, N'dany', N'dany@gmail.com', N'8008')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (7, N'Peter', N'petercar@gmail.com', N'8199191')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (8, N'Loky', N'Lokiyo@gmail.com', N'w13j1h2j1')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Correo], [Password]) VALUES (10, N'Loky', N'Lokiyo2@gmail.com', N'w13j1h2j1')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__60695A196875AED1]    Script Date: 23/11/2022 11:38:17 p. m. ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_listar]    Script Date: 23/11/2022 11:38:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_listar]
as
begin

select * from Usuarios
end


GO
