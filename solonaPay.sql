USE [master]
GO

/****** Object:  Database [PayPalDB]    Script Date: 10/12/2023 8:39:46 AM ******/
CREATE DATABASE [PayPalDB]
 
USE [PayPalDB]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [varchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Authorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[roleId] [varchar](10) NULL,
 CONSTRAINT [PK__Authorit__3213E83FD6DA4BAB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[AccountNumber] [nvarchar](255) NOT NULL,
	[BankName] [nvarchar](255) NOT NULL,
	[AccountType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__BankAcco__349DA586D321C89E] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 10/12/2023 8:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[TransactionType] [nvarchar](255) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[TransactionDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK__Transact__55433A4B56450AEC] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Username], [Password], [Email], [Fullname]) VALUES (N'hoan', N'456', N'hau@gmail.com', N'ahsdasd')
INSERT [dbo].[Accounts] ([Username], [Password], [Email], [Fullname]) VALUES (N'huynh', N'456', N'huynh@gmail.com', N'hhunh')
INSERT [dbo].[Accounts] ([Username], [Password], [Email], [Fullname]) VALUES (N'NV01', N'123', N'nguyenpham242003@gmail.com', N'Phạm Đăng Nguyên')
INSERT [dbo].[Accounts] ([Username], [Password], [Email], [Fullname]) VALUES (N'NV02', N'123', N'haupss233@gmail.com', N'Nguyễn Thanh Hậu')
INSERT [dbo].[Accounts] ([Username], [Password], [Email], [Fullname]) VALUES (N'nv03', N'789', N'nv03@gmail.com', N'abc')
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (1, N'NV01', N'DIRE')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (3, N'NV02', N'STAF')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (4, N'NV03', N'CUST')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (9, N'hoan', N'DIRE')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (10, N'huynh', N'STAF')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (11, N'nv03', N'CUST')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (13, N'nv03', N'CUST')
INSERT [dbo].[Authorities] ([id], [Username], [roleId]) VALUES (16, N'nv03', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [price], [image], [quantity]) VALUES (1, N'Product01', 0.1, N'product1.webp', 10)
INSERT [dbo].[products] ([id], [name], [price], [image], [quantity]) VALUES (2, N'Product01', 0.1, N'product1.webp', 10)
INSERT [dbo].[products] ([id], [name], [price], [image], [quantity]) VALUES (3, N'Product01', 0.1, N'product1.webp', 10)
INSERT [dbo].[products] ([id], [name], [price], [image], [quantity]) VALUES (4, N'Product01', 0.1, N'product1.webp', 10)
SET IDENTITY_INSERT [dbo].[products] OFF
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'STAF', N'Staffs')
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_User] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_User]
GO
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [FK_BankAccount_User] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [FK_BankAccount_User]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_User] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transaction_User]
GO
USE [master]
GO
ALTER DATABASE [PayPalDB] SET  READ_WRITE 
GO
