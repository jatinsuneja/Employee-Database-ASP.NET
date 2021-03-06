﻿USE [tbemp]
GO
/****** Object:  Table [dbo].[tbemp]    Script Date: 03-01-2020 14:55:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbemp](
	[eno] [int] NOT NULL,
	[ename] [varchar](50) NULL,
	[eadd] [varchar](50) NULL,
	[esal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[eno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[delemp]    Script Date: 03-01-2020 14:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delemp]
	@eno int
AS
	delete from tbemp where eno = @eno
GO
/****** Object:  StoredProcedure [dbo].[dispemp]    Script Date: 03-01-2020 14:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dispemp]

AS
	SELECT * from tbemp
GO
/****** Object:  StoredProcedure [dbo].[findemp]    Script Date: 03-01-2020 14:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[findemp]
@eno int
AS
	SELECT * from tbemp where eno = @eno
GO
/****** Object:  StoredProcedure [dbo].[insemp]    Script Date: 03-01-2020 14:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insemp]

	
	@eno int,
	@en varchar(50),
	@ed varchar(50),
	@es int
AS
	insert tbemp values(@eno,@en,@ed,@es)
GO
/****** Object:  StoredProcedure [dbo].[updemp]    Script Date: 03-01-2020 14:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updemp]
	@eno int,
	@en varchar(50),
	@ed varchar(50),
	@es int
AS
	update tbemp set ename=@en,eadd=@ed,esal=@es where eno = @eno
GO
