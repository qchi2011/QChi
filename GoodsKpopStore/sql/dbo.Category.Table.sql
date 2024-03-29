USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/17/2023 9:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Tech')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Music')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Fashion')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Magazines')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
