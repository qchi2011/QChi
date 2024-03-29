USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/17/2023 9:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
	[address] [nvarchar](150) NULL,
	[roleid] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (1, N'admin', N'123', N'admin@gmail.com', N'Vu Quynh Chi', N'020112003', N'London', 0)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (2, N'user', N'123', N'user@gmail.com', N'Lalisa Manoban', N'0999999999', N'Thailand', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (3, N'chi1', N'chi123', N'chi@gmail.com', N'Chi Chi', N'012345678', N'Dak Lak', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (4, N'chi2', N'chi2', N'chi2@gmail.com', N'LaLiThu', N'2654879', N'LA', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (5, N'lisa2703', N'12345', N'lisa@gmail.com', N'Vu Minh Thu', N'0123654', N'Cao Bang', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (9, N'chi6', N'chi7', N'hihi@gmail.com', N'Jennie', N'012345689', N'korea', 1)
INSERT [dbo].[Account] ([id], [username], [password], [email], [fullname], [phone], [address], [roleid]) VALUES (10, N'zd3', N'1234', N'zd3@gmail.com', N'Nguyen Dinh Dung', N'01234567', N'trong tim Jim', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
