USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/17/2023 9:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[createAt] [datetime] NOT NULL,
	[accountId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (1, 94.4000015258789, N'hihihihihihhi', CAST(N'2023-07-12T01:22:45.707' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (2, 23.5, N'la la la', CAST(N'2023-07-12T01:33:12.110' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (3, 170.5, N'aaaaaa', CAST(N'2023-07-12T07:55:08.140' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (4, 46.599998474121094, N'okok', CAST(N'2023-07-12T11:02:25.890' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (5, 221.80000305175781, N'ok', CAST(N'2023-07-12T11:09:47.420' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (6, 43, N'hehe', CAST(N'2023-07-12T20:29:30.053' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (7, 13.300000190734863, N'1111', CAST(N'2023-07-12T20:37:42.437' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (8, 72.9000015258789, N'555', CAST(N'2023-07-12T20:47:38.697' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (9, 191.60000610351563, N'66', CAST(N'2023-07-12T21:23:16.243' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (10, 13.300000190734863, N'2334', CAST(N'2023-07-12T21:42:17.663' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (11, 72.9000015258789, N'12345', CAST(N'2023-07-12T21:43:22.910' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (12, 13.300000190734863, N'qqqqqqqqq', CAST(N'2023-07-12T21:53:24.090' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (15, 2, N'pp', CAST(N'2023-07-12T22:06:53.990' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (16, 2, N'ff', CAST(N'2023-07-12T22:07:45.587' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (17, 74.9000015258789, N'dd', CAST(N'2023-07-12T22:08:05.280' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (18, 47.799999237060547, N'dd', CAST(N'2023-07-12T22:09:08.417' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (19, 95.800003051757812, N'yy', CAST(N'2023-07-12T22:16:58.237' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (26, 137.10000610351563, N'', CAST(N'2023-07-13T00:28:19.397' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (32, 74, N'', CAST(N'2023-07-13T12:37:26.430' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (33, 85.699996948242188, N'', CAST(N'2023-07-13T12:42:16.257' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (34, 74.699996948242188, N'', CAST(N'2023-07-13T12:53:29.643' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (35, 72.9000015258789, N'', CAST(N'2023-07-13T12:54:08.227' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (37, 1, N'', CAST(N'2023-07-13T14:37:35.157' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (38, 3.5999999046325684, N'', CAST(N'2023-07-13T14:44:01.900' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (39, 87, N'', CAST(N'2023-07-13T14:44:21.650' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (40, 21.5, N'', CAST(N'2023-07-13T14:48:37.060' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (41, 133.5, N'', CAST(N'2023-07-13T14:51:57.847' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (42, 21.5, N'', CAST(N'2023-07-13T14:54:25.543' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (43, 72.9000015258789, N'', CAST(N'2023-07-13T14:56:06.207' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (44, 47.799999237060547, N'', CAST(N'2023-07-13T14:58:45.657' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (45, 57, N'', CAST(N'2023-07-13T15:10:54.917' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (46, 54.900001525878906, N'', CAST(N'2023-07-13T15:12:34.847' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (47, 47.799999237060547, N'', CAST(N'2023-07-13T15:15:10.973' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (48, 13.300000190734863, N'', CAST(N'2023-07-13T15:15:50.673' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (49, 1, N'', CAST(N'2023-07-13T15:16:15.840' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (50, 95.800003051757812, N'', CAST(N'2023-07-13T15:22:05.153' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (51, 95.800003051757812, N'', CAST(N'2023-07-13T15:22:13.410' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (52, 147.60000610351563, N'', CAST(N'2023-07-13T15:22:48.097' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (53, 160.89999389648438, N'', CAST(N'2023-07-13T15:23:23.730' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (54, 74.699996948242188, N'', CAST(N'2023-07-13T15:23:40.370' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (55, 95.800003051757812, N'', CAST(N'2023-07-13T15:23:54.410' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (56, 57.299999237060547, N'', CAST(N'2023-07-13T15:24:21.733' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (57, 91, N'', CAST(N'2023-07-13T15:25:18.317' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (58, 80.699996948242188, N'', CAST(N'2023-07-13T15:25:52.437' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (59, 71.5, N'', CAST(N'2023-07-13T19:03:58.633' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (60, 47.799999237060547, N'', CAST(N'2023-07-13T19:04:31.600' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (61, 1, N'', CAST(N'2023-07-13T19:05:23.830' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (62, 99, N'', CAST(N'2023-07-13T19:05:44.893' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (63, 7.9000000953674316, N'', CAST(N'2023-07-13T19:16:37.253' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (64, 77.200004577636719, N'', CAST(N'2023-07-13T19:25:06.153' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (65, 77.200004577636719, N'', CAST(N'2023-07-13T19:26:44.290' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (66, 58.400001525878906, N'', CAST(N'2023-07-13T23:22:17.490' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (67, 47.799999237060547, N'', CAST(N'2023-07-14T13:24:22.453' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (68, 47.799999237060547, N'', CAST(N'2023-07-14T13:31:09.437' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (69, 64.5, N'', CAST(N'2023-07-14T13:32:29.267' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (70, 13.300000190734863, N'', CAST(N'2023-07-14T20:15:45.067' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (71, 74.699996948242188, N'', CAST(N'2023-07-14T20:18:59.147' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (72, 47.799999237060547, N'', CAST(N'2023-07-14T20:22:28.367' AS DateTime), 2, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (73, 310.70001220703125, N'la la la', CAST(N'2023-07-15T11:06:17.837' AS DateTime), 5, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (74, 75.5999984741211, N'oke', CAST(N'2023-07-16T18:39:42.420' AS DateTime), 10, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (75, 21.5, N'', CAST(N'2023-07-17T08:58:45.143' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (76, 243.60000610351563, N'kakakaaa', CAST(N'2023-07-17T09:02:34.013' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (77, 71.800003051757812, N'', CAST(N'2023-07-17T09:13:16.513' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (78, 62.700000762939453, N'', CAST(N'2023-07-17T09:13:56.423' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (79, 204, N'', CAST(N'2023-07-17T09:15:26.537' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (80, 176.20001220703125, N'', CAST(N'2023-07-17T09:21:25.867' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([id], [amount], [description], [createAt], [accountId], [status]) VALUES (81, 7.1999998092651367, N'', CAST(N'2023-07-17T09:22:24.040' AS DateTime), 4, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
