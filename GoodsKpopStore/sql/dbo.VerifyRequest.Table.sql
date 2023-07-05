USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[VerifyRequest]    Script Date: 7/5/2023 11:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerifyRequest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[requestContent] [nvarchar](max) NOT NULL,
	[isVerify] [bit] NOT NULL,
	[expired] [datetime] NOT NULL,
	[createAt] [datetime] NOT NULL,
	[accountId] [int] NOT NULL,
	[emailLogId] [int] NOT NULL,
 CONSTRAINT [PK_VerifyRequest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[VerifyRequest]  WITH CHECK ADD  CONSTRAINT [FK_VerifyRequest_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[VerifyRequest] CHECK CONSTRAINT [FK_VerifyRequest_Account]
GO
ALTER TABLE [dbo].[VerifyRequest]  WITH CHECK ADD  CONSTRAINT [FK_VerifyRequest_EmailLog] FOREIGN KEY([emailLogId])
REFERENCES [dbo].[EmailLog] ([id])
GO
ALTER TABLE [dbo].[VerifyRequest] CHECK CONSTRAINT [FK_VerifyRequest_EmailLog]
GO
