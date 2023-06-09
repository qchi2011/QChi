USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/10/2023 11:51:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[address] [nvarchar](150) NULL,
	[roleid] [int] NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (1, N'admin', N'123', N'admin@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (2, N'user', N'123', N'user@gmail.com', N'hoabinh', 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (3, N'chi1', N'chi123', N'chi@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (4, N'chi2', N'chi2', N'chi2@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (5, N'lisa2703', N'12345', N'lisa@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (6, N'chi4', N'hihi', N'chi4@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (7, N'blackpinkeul', N'lisalisa', N'bp@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[Account] ([id], [username], [password], [email], [address], [roleid], [fullname], [phone]) VALUES (8, N'kikikaka123', N'hehehaha', N'ecec@gmail.com', NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
