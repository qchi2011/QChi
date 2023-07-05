USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 7/5/2023 11:38:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[to] [nvarchar](50) NOT NULL,
	[subject] [nvarchar](50) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EmailLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
