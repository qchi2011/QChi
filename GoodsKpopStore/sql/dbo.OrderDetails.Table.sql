USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/17/2023 9:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[orderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (1, 1, 2, 1)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (2, 1, 10, 1)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (3, 2, 8, 2)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (4, 1, 10, 2)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (5, 1, 11, 3)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (6, 1, 12, 3)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (7, 2, 37, 4)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (8, 2, 2, 5)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (9, 4, 13, 5)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (10, 2, 10, 6)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (11, 1, 1, 7)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (12, 1, 2, 8)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (13, 2, 11, 9)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (14, 1, 1, 10)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (15, 1, 2, 11)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (16, 1, 1, 12)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (19, 2, 8, 15)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (20, 2, 8, 16)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (21, 1, 2, 17)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (22, 2, 8, 17)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (23, 1, 4, 18)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (24, 1, 11, 19)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (33, 1, 98, 26)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (34, 1, 35, 26)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (35, 1, 67, 26)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (36, 1, 94, 26)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (42, 1, 40, 32)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (43, 1, 7, 33)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (44, 1, 12, 34)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (45, 1, 2, 35)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (58, 1, 8, 37)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (59, 1, 35, 38)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (60, 1, 10, 39)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (61, 1, 29, 39)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (62, 1, 10, 40)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (63, 1, 4, 41)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (64, 1, 7, 41)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (65, 1, 10, 42)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (66, 1, 2, 43)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (67, 1, 4, 44)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (68, 3, 13, 45)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (69, 1, 32, 46)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (70, 1, 4, 47)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (71, 1, 1, 48)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (72, 1, 8, 49)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (73, 1, 11, 50)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (74, 1, 11, 51)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (75, 1, 2, 52)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (76, 1, 12, 52)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (77, 1, 1, 53)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (78, 1, 2, 53)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (79, 1, 12, 53)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (80, 1, 12, 54)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (81, 1, 11, 55)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (82, 1, 38, 56)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (83, 1, 52, 57)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (84, 1, 22, 58)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (85, 1, 20, 59)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (86, 1, 4, 60)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (87, 1, 8, 61)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (88, 1, 1, 62)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (89, 1, 7, 62)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (90, 1, 35, 63)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (91, 1, 24, 63)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (92, 1, 2, 64)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (93, 1, 24, 64)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (94, 1, 2, 65)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (95, 1, 24, 65)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (96, 1, 83, 66)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (97, 1, 4, 67)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (98, 1, 4, 68)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (99, 3, 10, 69)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (100, 1, 1, 70)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (101, 1, 12, 71)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (102, 1, 4, 72)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (103, 1, 64, 73)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (104, 2, 76, 73)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (105, 1, 95, 73)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (106, 4, 34, 74)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (107, 1, 74, 74)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (108, 1, 10, 75)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (109, 3, 83, 76)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (110, 1, 74, 76)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (111, 1, 41, 77)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (112, 1, 93, 78)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (113, 1, 11, 79)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (114, 2, 30, 79)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (115, 1, 82, 80)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (116, 1, 11, 80)
INSERT [dbo].[OrderDetails] ([id], [quantity], [productId], [orderId]) VALUES (117, 2, 35, 81)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
