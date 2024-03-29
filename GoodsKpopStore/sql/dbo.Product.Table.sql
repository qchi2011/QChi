USE [GoodsKpop]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/17/2023 9:31:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (1, N'[ALLFORYOU] SECHSKIES GRIP HOLDER', N'[GENERAL PRODUCT]

Type: GRIP HOLDER

Material: TPU, PC

Dimensions: 40x40x5mm

Manufacturer: Ezgoods

Country of manufacture : KOREA



[Precautions for handling]	

-Please use it after removing the sticker.

- If you attach and detach the grip holder several times, the adhesive strength of the sticker may decrease.



[Quality Assurance Standards]	

This product can be exchanged or compensated in accordance with the Consumer Dispute Resolution Standards notified by the Fair Trade Commission.

', 13.3, 8, N'https://cafe24img.poxo.com/ygnext/web/product/tiny/202007/4f793031d17f0a108aedc679a22457f3.jpg
', 1, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (2, N'(Poster gift) GQ May 2023(ROSE) - Type A', N'
[YG SELECT free gift]
Cover Image A3 Size Poster
* 1:1 payment according to purchase quantity
* Air cap packaging (not tube packaging)
', 72.9000015258789, 40, N'/GoodsKpopStore/images/GQ MAY 2023(ROSĂ‰)jpg.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (4, N'
(Poster gift) GQ May 2023(ROSÉ) - Type B
', N'
[YG SELECT free gift]
Cover Image A3 Size (300×400) Poster
* 1:1 payment according to purchase quantity
* Air cap packaging (not tube packaging)

', 47.8, 99, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/d95cc760b783016b5d7d01a9703baa1c.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (7, N'
(Poster gift) GQ May 2023(ROSÉ) - Type C

', N'
[YG SELECT free gift]
Cover Image A3 Size (300×400) Poster
* 1:1 payment according to purchase quantity
* Air cap packaging (not tube packaging)

', 85.7, 43, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/8e89b06c56a234bebf47571252590aff.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (8, N'[G1] EUNJIWON HAND FAN', N'[Product Features]  

- Built-in 2600mAh battery

- Up to 12 hours of wireless use on a single charge



[Product Precautions]

- When using for the first time, use this product after fully charging it.

- Fan charging speed may vary depending on the charger.

- When charging the fan, the battery may generate heat.

- When charging this product, use an approved product with rated voltage.

- Do not apply excessive shock or pressure to this product. It may cause deformation or failure.

- Store away from direct sunlight, high temperature and humidity, and out of reach of children.

- Never operate with wet hands. There may be a risk of electric shock or accident.

- Do not arbitrarily disassemble this product or use it for other purposes.

- Do not heat this product or bring it close to fire.

- We are not responsible for any damage caused by the users negligence or artificial product change/manipulation.

', 1, 44, N'https://cafe24img.poxo.com/ygnext/web/product/tiny/shop1_200e993767be6acdaf81df5eaa3ebcbb.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (10, N'BLACKPINK THE GAME COUPON CARD', N'[Size]
102 x 64 x 25mm / 80g

[Contents]
· PACKAGE WEIGHT: 80g
· COUPON CARD: 54 x 86mm / Paper / RANDOM 1EA (1 OF 8)
· MINI L-HOLDER: 59 x 95mm / Paper / RANDOM 1EA (1 OF 4)
· CLEAR CARD SET: 54 x 86mm / PET / 12EA (GAME CHARACTER 4EA + PET 4EA + BG 4EA)
· KEY RING: 31 x 40.5mm / ACRYLIC / RANDOM 1EA (1 OF 4)
· STICKER PACK: 54 x 86mm / Paper / 8EA

', 21.5, 50, N'https://cafe24img.poxo.com/ygnext/web/product/tiny/202305/011d1800b45ab66926df294668259bf3.png

', 1, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (11, N'
BLACKPINK Rolling Stone Collectors Edition 

', N'
[Contents]
Box Packaging + Group Cover (1 type) + Individual Cover (4 types) + Mini Magazine (44 pages) + Photo Set (5 x 7in) + Sticker
', 95.8, 60, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202208/9b314bfe0c0891b0af0aaa8ced1cf671.jpg', 4, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (12, N'
(TAEYANG) EP ALBUM [Down To Earth]
', N'
[Size]
142 x 125mm

[Contents]
- Jewel Case: 142 x 125mm
- CD-R
- Booklet: 120 x 120mm / 24p
- Photo Card: 86 x 54mm / 1 randomly selected out of 3 types
- Mini Folded Poster: 110 x 220mm
- Poster: 770 x 520mm (First release limited edition only)
', 74.7, 81, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202304/323e20174713f4e04f928e3fe394ab30.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (13, N'
WINNER 2022 CONCERT [THE CIRCLE] KiT VIDEO
', N'
[Size]
146 x 210 x 13mm / Approx. 330g

[Contents]
Sleeve + KiT (1 ea./270 minutes) + KiT Box + Photobook (80 pages) + Selfie Photocard (2 randomly selected out of 8 types) + Postcard
', 19, 50, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202304/c356d19e8d06078b7a5fd3977f27830a.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (14, N'
BAZAAR July 2022 (WINNER) - Type A (WINNER)

', N'
[Size]
210 x 297 x 15mm

[Product Information]
Cover: WINNER
', 56.7, 8, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/245cd5906320aca4abaaae5b16913c18.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (15, N'
JISOO FIRST SINGLE ALBUM [ME] YG TAG ALBUM 
', N'
* Contents vary by version.
* A maximum of 10 products can be purchased per order.
* Contents are subject to change during the manufacturing process.
* If you purchase pre-order and regular items together, your shipment will be dispatched on the shipping date of the pre-order item you purchase.
', 49.7, 30, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202304/6786fd01f1beca3a8595f13e8e0c6e38.jpg
', 2, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (16, N'
JISOO FIRST SINGLE ALBUM [ME] KiT ALBUM
', N'
This spring, JISOO is coming back with her first solo album. Her comeback has created great buzz among the international fans as it is the last solo album of BLACKPINKs.

JISOO, who carved out a niche in the global music industry as an artist, is raising a lot of expectations with skills and appearance she will show with the new album.

JISOO FIRST SINGLE ALBUM KiT ALBUM is available for pre-order starting on March 6 and will be released at YG SELECT, Weverse Shop, KTOWN4U, and online/offline record shops in South Korea on March 31.

', 54.2, 42, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202304/17886072732678021d849803b134e15e.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (17, N'
Esquire 2021
', N'
[Size]
210 x 297 x 15mm
* The size may vary due to production process.
', 4.5, 57, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202106/f88c29b8a177178ecc31ddc76cd1ad0c.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (18, N'
LEE CHANHYUK 1st SOLO ALBUM [ERROR]
', N'
PACKAGE BOX + SCRIPT PHOTOBOOK (56p) + CD + ENVELOPE + ROUND PHOTOCARD (1ea) + RANDOM PHOTOCARD (1 of 2) + PHOTO FILM (1ea) + MINI PHOTOBOOK (12p) + RANDOM LARGE POSTCARD (2 of 4 / FIRST PRESS ONLY) + LOGO TAG (1ea / FIRST PRESS ONLY)
', 19.4, 73, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202210/8f7e8f98098267e346d8e5bc1955f7c2.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (20, N'
TREASURE 2nd MINI ALBUM [THE SECOND STEP] 
', N'
* Each order is limited to 5 items per option. (Total 50 items)
* One poster is provided per purchase amount while the first press supplies last.
* Contents are subject to change during the manufacturing process.
* If you purchase pre-order and regular items together, your shipment will be dispatched on the shipping date of the pre-order item you purchase.', 71.5, 11, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202209/00fe2750bea24cdd17798ce18771f3e6.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (21, N'
TREASURE 2nd MINI ALBUM (PHOTOBOOK ver.)
', N'

 TREASURE 2nd MINI ALBUM [THE SECOND STEP : CHAPTER TWO] (PHOTOBOOK ver.) 

TREASURE is coming back to solidify their position the group has achieved through ‘THE SECOND STEP’ in the first half of 2022.

THE SECOND STEP : CHAPTER TWO boasts the members’ higher commitment and powerful performances, which will allow the group to interact with TREASURE MAKERS around the world more closely.', 54.6, 83, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202209/3cb61d5a02edad65c08d02cdb546854f.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (22, N'KRUNK HAND FAN', N'[ADDITIONAL INFORMATION]

Material: PC, ABS 

Size: 110 x 230 x 48mm



Product notes: 

When using for the first time, use this product after fully charging it.

Fan charging speed may vary depending on the charger. 

When charging the fan, the battery may generate heat.

When charging this product, use an approved product with rated voltage.

Do not apply excessive shock or pressure to this product. It may cause deformation or failure.

Store away from direct sunlight, high temperature and high humidity, and out of reach of children.

Never operate with wet hands. There may be a risk of electric shock or accident.

Do not arbitrarily disassemble this product or use it for any other purpose.

Do not heat this product or bring it close to fire. 

We are not responsible for any damage caused by the users negligence or artificial product change/manipulation.

', 80.7, 94, N'https://cafe24img.poxo.com/ygnext/web/product/tiny/shop1_18d3ee75ef3fc04ee76bb7e1e2fa3341.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (24, N'
TREASURE 2nd MINI ALBUM(RANDOM ver.)
', N'
[Size]
62 x 90 x 4mm / 150g

[Contents]
Case + Selfie Tag Card (1 of 10 selected at random) + Lyrics Photo Card Set (11 ea.) + Unit Photo Card (1 of 20 selected at random)
* TREASURE 2nd MINI ALBUM [THE SECOND STEP : CHAPTER TWO] YG TAG ALBUM(RANDOM ver.) comes in four versions featuring different images. One of four versions is shipped at random.', 4.3, 45, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202209/438be280e6ac3e73478fd2634c296d32.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (29, N'
GQ February 2023 (JISOO) - Type A
', N'
[Product Information]
Volume 1, 228 pages, no free gift
', 65.5, 8, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/214e2dbf6fa24b16c913b185bd821b5e.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (30, N'[XOXO] JEON SOMI Splatter Smart Tok', N'[Size]
40 x 40 x 6.7mm / 10g

[Material]
Urethane, Polycarbonate

[Manufacturer]
Feed International

[Country of Manufacture]
South Korea

[Cautions]
- Attach onto a clean surface.
- Remove the clear protective film on the adhesive pad attached to the back of the product.
- Some products (those with special coatings or a curved surface/those made of leather or glass) may not be compatible with this product.
- The adhesive performance of this product may vary depending on the condition or nature of the surface to which it is attached.
- Do not use thinners or organic solvents for cleaning.

', 54.1, 71, N'https://cafe24img.poxo.com/ygnext/web/product/big/202111/921724aacdbcba185482e5b7fc8b6f73.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (31, N'
[Pre-Order][Dunst] UNISEX VARSITY JACKET_NAVY
', N'
[Material]
- Shell: 100% Nylon
- Lining: 100% Polyester
- Fill: 100% Polyester
', 52.3, 93, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/65a2743c3e886694d8615450d2a7e9c8.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (32, N'
UNISEX LAMBSKIN LEATHER HALF JACKET_BLACK
', N'
[Material]
- Shell: Lambskin Leather
- Lining: 100% Polyester
[Manufacturer]
CTDOTS
', 54.9, 80, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/d838a559134e963e9a3f2a4a85744977.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (33, N'
GQ February 2023 (JISOO) - Type B
', N'
[Product Information]
Volume 1, 228 pages, no free gift
', 52.9, 72, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/4b3eb9bcfa3f2c71ca9203322e52f9a6.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (34, N'
BLACKPINK 2nd ALBUM [BORN PINK] 
', N'

The world’s best girl group BLACKPINK is making their comeback with their second full-length album [BORN PINK].

On the 1st, BLACKPINK announced their massive comeback in the name of [BORN PINK], which includes their pre-released single, new album, and world tour. Alongside the pre-release of ‘Pink Venom’, the announcement of the group’s full-length album also brought excitement among global audiences.

', 1.8, 73, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202209/5d4f9f92d160e8ba58e2b43a772d55e9.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (35, N'
[Dunst] MINI PLEATS SKIRT_BLACK
', N'
[Material]
- Shell: 78% Polyester, 22% Rayon
- Lining: 100% Polyester

', 3.6, 90, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/6b95a57e96c99a0e6132e12b1e10cf5a.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (36, N'
(SET) BLACKPINK 2nd ALBUM [BORN PINK]
', N'
[Contents]
Packaging Box + CD + Photo Book (80P) + Envelope + Accordion Lyrics Paper + Large Photocard (1 out of 4 selected at random) + Postcard (1 of 4 selected at random) + Instant Films (2 of 8 selected at random) + Selfie Photocard (1 of 8 selected at random) + Sticker (1ea / first release limited edition only) + Poster (1ea / first release limited edition only)
?Sold out of First Press, so stickers and posters are not included.
', 90.8, 90, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202208/aef1ca78623ae6d51bde91c9d22be6c1.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (37, N'[LASTDANCE] BIGBANG PHONECASE', N'[Product Information]
Material: 100% Polycarbonate
Product Material: Specified above
Manufacturer: WOYC Korea
Country of Manufacture: South Korea
Manufacture Date: Dec. 2017

[Cautions]
- All metal products discolor over time.
- Store with caution away from moisture.
- Handle with caution to prevent product damage caused by impact.

', 23.3, 99, N'https://cafe24img.poxo.com/ygnext/web/product/big/shop1_ebbbfc829aad61ce690c3ba6bc5a3a43.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (38, N'
WINNER 4th MINI ALBUM [HOLIDAY] 
', N'
[Size]
150 x 150x 9mm / 300g

[Contents]
CD + DIGIPACK + BOOKLET (24p) + FOLDED POSTER (1ea) + RANDOM SELFIE PHOTOCARD (1 of 5) + HOLIDAY SEAL (1ea) + RANDOM UNIT SELFIE PHOTOCARD (1 of 2 / FIRST EDITION ONLY)
', 57.3, 89, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/554de9f51619b3c839f28ce7b31d57db.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (39, N'
GQ February 2023 (JISOO) - Type B
', N'
[Product Information]
Volume 1, 228 pages, no free gift
', 62.2, 96, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/4b3eb9bcfa3f2c71ca9203322e52f9a6.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (40, N'
[YG SELECT EDITION] WINNER 4th MINI ALBUM
', N'
[Contents]
SLEEVE COVER + PHOTOBOOK (102p) + CD + RANDOM PHOTOCARD (1 of 8) + RANDOM SELFIE PHOTOCARD (2 of 12) + STICKER (1ea) + RANDOM WINNER POSTCARD (1 of 2) + RANDOM ID CARD (1 of 4)
', 74, 6, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/e78a0d002c7fdaa6f42783dc279023c5.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (41, N'
TREASURE 1ST PRIVATE STAGE [TEU-DAY] KiT VIDEO
', N'
TREASURE staged a comeback with the release of their first mini album [THE SECOND STEP : CHAPTER ONE] on February 15, 2022. The album broke records, exceeding 800,000 copies in sales and attaining the highest number of daily music video views. Still quite active, TREASURE will be releasing TREASURE 1ST PRIVATE STAGE [TEU-DAY] KiT VIDEO containing live performances of their first private stage on April 11.

', 71.8, 54, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202204/0c8918bb6157a57d649fcd4ebf2b76ad.jpg', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (42, N'
[Dunst] DOUBLE PLEATS SKIRT_BEIGE
', N'
[Material]
- Shell: 77% Acrylic, 22% Polyester, 1% Wool
- Lining: 100% Polyester

', 90.9, 80, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/479490934dc4fcb1b586c6630b281a36.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (43, N'
[Dunst] CREST LOGO CABLE CARDIGAN_FRENCH NAVY
', N'
[Material]
- Shell: 100% Cotton

', 81.1, 75, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/e5199e0f9a7780eccbe4f91a6423739e.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (44, N'
[Dunst] CLASSIC TWEED MIDI SKIRT_BLACK
', N'
[Material]
- Shell: 77% Acrylic, 22% Polyester, 1% Wool
- Lining: 100% Polyester

', 83.6, 69, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/09015a74df3e61fd2f571a42e8a68969.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (45, N'[LASTDANCE] BIGBANG PATCH', N'[Product Information]
Material: Brass, Stone, Plating, Felt
Product Material: Specified above
Weight: Specified above
Size: Specified above
Manufacturer: W#
Country of Manufacture: South Korea
Manufacture Date: Dec. 2017

[Cautions]
- All metal products discolor over time.
- Store with caution away from moisture.
- Handle with caution to prevent product damage caused by impact.

', 36.9, 6, N'https://cafe24img.poxo.com/ygnext/web/product/big/shop1_244435a519d3143cd5f310b7a724af35.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (46, N'
[Dunst] CLASSIC TWEED COLLAR JACKET_BLACK
', N'
[Material]
- Shell: 77% Acrylic, 22% Polyester, 1% Wool
- Lining: 100% Polyester

', 57, 54, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/77d6f904764bdc306dd1aa638b659772.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (47, N'
GQ February 2023 (JISOO) - Type C
', N'
[Product Information]
Volume 1, 228 pages, no free gift
', 46, 23, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/602c08d3e126d90458779ac69d19a852.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (48, N'
[Dunst] CLASSIC 28 LEATHER BAG_BLACK
', N'
[Material]
- Shell: Cowhide Leather
- Lining: 100% Cotton


', 2, 37, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/cd7a624751b97d1bd49f4ffa53abea4e.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (49, N'
VOGUE February 2023 (JENNIE) - Type C', N'
[Product Information]
Volume 1, 361pages, no free gift
', 55.7, 23, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/feee5437c8627ca2f6b8312afa80c2d1.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (50, N'
[Pre-Order]CLASSIC REGIMENTAL TIE_GREY STRIPE
', N'
[Material]
- Shell: 59% Silk, 29% Polyester, 12% Cotton


', 73.6, 68, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/996de074b1e3825da14d9d3c93db3fe6.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (51, N'
BAZAAR July 2022 (WINNER) - Type E (HOONY)
', N'
[Size]
210 x 297 x 15mm
', 92.2, 31, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/7428e4ef514ba843b93c27be9a9cdc1c.jpg', 4, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (52, N'
BAZAAR July 2022 (WINNER) - Type D (MINO)
', N'

[Size]
210 x 297 x 15mm
', 91, 83, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/779700a2ba1c4aba0e36cd1a21783033.jpg', 4, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (53, N'
[Dunst] UNISEX DADDY LINEN JACKET_FRENCH NAVY
', N'
[Material]
- Shell: 68% Cotton, 32% Linen
- Lining: 100% Cotton


', 22.9, 84, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/ddb61fe7f9a84f4c77a0ac679f5e9e65.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (54, N'
BAZAAR July 2022 (WINNER) - Type C (JINU)
', N'

[Size]
210 x 297 x 15mm
', 49.6, 74, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/f4ac527b776b2b37453a60d9893f50d4.jpg	', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (55, N'
[Pre-Order][Dunst] TERRY SET-UP T-SHIRT_IVORY
', N'
[Material]
- Shell: 81% Cotton, 19% Polyester

', 95.2, 20, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/0f711bccde6123537fca566dc5a19a43.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (56, N'
[Pre-Order][Dunst] TERRY SET-UP T-SHIRT_IVORY
', N'
[Material]
- Shell: 81% Cotton, 19% Polyester

', 32.6, 5, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/8c27ee01e4b62b5398ceba0c3462f3c0.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (57, N'
TREASURE 1st MINI ALBUM
', N'
* "TREASURE 1st MINI ALBUM [THE SECOND STEP : CHAPTER ONE] KiT ALBUM" is made with FSC-certified paper, low-carbon eco-friendly paper, soybean oil-based ink, and eco-friendly coating to protect the environment. The KiT is made with biodegradable plastic (PLA) and 100% recycled, FSC-certified paper. The vinyl packaging is made with PLA, a biodegradable material.

', 21.7, 37, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202202/376d887fe4c05e8a05b7c7fbbbbb843c.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (58, N'
TREASURE 1st MINI ALBUM(DIGIPACK ver)
', N'
12 versions of "TREASURE 1st MINI ALBUM [THE SECOND STEP : CHAPTER ONE] (DIGIPACK ver.)" (1 version for each member) are now available for purchase.
The album is available for pre-order on January 11 and will be released at YG SELECT and online/offline record shops in South Korea on February 15.
', 77, 92, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202202/53121c169c856ab7ef587998daea2840.jpg
', 2, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (59, N'
(SET) JEON SOMI THE FIRST ALBUM XOXO
', N'
[Contents]
Packaging + Photo Book + CD + Postcard (8 postcards) + Mini Notepad + Sticker Set (2 sheets) + Random Pin (1 of 2 shipped at random) + Random Photo Card (1 of 6 shipped at random) + Poster
', 98, 1, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202110/75b528078efc603682e25f6d0a66c1c8.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (60, N'
LISA FIRST SINGLE ALBUM LALISA
', N'

LISA personally participated in the design of her first single album, “LALISA,” which includes the packaging, photo book, photo card (1 of 4 shipped at random), instant photo (1 of 4 shipped at random), and more. High in collectible value, this first release limited edition also contains a Rare Golden Ticket (shipped at random) and a Rare Golden Ticket.
', 95.7, 8, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202108/83ccc756d5fadae892ad627494c58a43.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (61, N'[THESHOW] BLACKPINK AIRPODS PRO CASE
', N'- This is a made-to-order product. Cancellations are not accepted. 
- This product is manufactured after the pre-order period ends. Please note that 1-2 weeks may be required for dispatch.
- The product image may differ from the actual product.
- The color may slightly differ from the actual product depending on your monitor resolution.

- This product features BLACKPINK characters.

', 86.8, 79, N'https://cafe24img.poxo.com/ygnext/web/product/big/202012/3233168453861bdcd0909d61f021d198.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (62, N'[Elago] BLACKPINK Airpods Hang Case
', N'
[Product Information]
Type AirPods Case
Material Silicone, Zinc Alloys
Size Width 64mm, Length 49mm, Thickness 25mm
Manufacturer elago
Country of Manufacture China

[Cautions]
- Compatible with AirPods 1, 2
- Keep away from fire.
', 42.4, 80, N'https://cafe24img.poxo.com/ygnext/web/product/big/shop1_ac2388fc8f7a7892bbfd41e6971e75d2.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (63, N'
[Dunst] SILKY CHAMPANGE DRESS_CREAM
', N'
[Material]
- Shell: 58% Polyester, 42% Rayon
- Lining: 100% Polyester

', 98.6, 82, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/0c78875bce97f763ef438f0fe1b842c2.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (64, N'
[Dunst] CAMISOLE VOLUME DRESS_BLACK
', N'
[Material]
- Shell 1: 81% Rayon, 19% Nylon
- Shell 2: 100% Cotton
- Lining: 100% Polyester

', 38.7, 76, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/b854c90bb39dec4565311878f26162a5.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (65, N'[KHVATEC] KRUNK 5PIN CABLE (Android / iOS)
', N'
Shipping Method : Selected by customer
Delivery Time : 15 - 20 days
Shipping Area : A Region.
Shipping Rate : International Shipping Fee
- An additional fee may be charged depending on the region.
- Delivery may be slightly delayed due to product availability and warehouse circumstances.
- As indicated on the product details, brand products are shipped directly from the brand with a separate shipping fee.
', 94.5, 71, N'https://cafe24img.poxo.com/ygnext/web/product/big/shop1_8489232b8fae772fda31a92b5eaab58c.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (66, N'
[Dunst] BUTTON POINT SLEEVELESS KNIT 
', N'
[Material]
- Shell: 75% Rayon,
25% Nylon


', 26.7, 53, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/ae098bad4cc0b6bf5dcebfcf76e72442.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (67, N'
BANDING PLEATS TENNIS MINI SKIRT_SKY BLUE
', N'
[Material]
- Shell: 100% Polyseter
- Lining: 90% Polyester, 10% Polyurethane


', 89, 37, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/1b57b02bd41817e565e4586229a1b631.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (68, N'[MOTTE] G-DRAGON PHONECASE MIRROR_TYPE 1
', N'
[Additional Information]
Size
iPhone 11_Pink: Width 78.9mm, Length 154mm, Thickness 14.4mm
iPhone 11 Pro_Black: Width 74.5mm, Length 147mm, Thickness 14.4mm
iPhone 11 Pro Max_Neon Yellow: Width 81mm, Length 161mm, Thickness 14.3mm

Material
PC, Oil, Sand
', 59.1, 4, N'https://cafe24img.poxo.com/ygnext/web/product/big/shop1_5d42570c2553a79821a961a04a1fc3d2.jpg

', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (69, N'
BAZAAR July 2022 (WINNER) - B TYPE (YOON)', N'
[Size]
210 x 297 x 15mm
', 48.4, 82, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202206/9915e13f0db8a1de307bc7594091b71d.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (70, N'
ELLE 2022 (LISA)', N'
[Size]
210 x 297 x 15mm

', 63.2, 95, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202205/5ba631ffe643bad49ad04c8a3f7dbc4a.jpg
', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (71, N'
BIGBANG10 THE EXHIBITION: A TO Z X VR PACKAGE
', N'
[Product Information]
Product Name: [Elago] BLACKPINK iPhone 11 Sand Case
Certificate of Permission: Not Applicable
Country of Manufacture: China
Manufacture: elago

', 96, 83, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_af1e51676f0ca40474a3da47f6966abe.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (72, N'
[Dunst] 2-WAY TWEED DRESS_CREAM
', N'
[Material]
- Shell: 63% Cotton, 19% Polyester, 18% Acrylic
- Lining: 100% Polyester


', 64.7, 67, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/0968a6945941aad6902693338fbfe8ab.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (73, N'
[Elago] BLACKPINK iPhone 11 Sand Case
', N'
Material
PC, Oil, Sand

[Cautions]
- Keep away from fire.

[Quality Assurance Standard]
Compensation for defective products is provided according to Fair Trade Commission standards.
', 21.6, 56, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_0184879d719bde65aa994b08798c4d12.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (74, N'
[20th] SECHSKIES PHONECASE_CARD
', N'
Material: ABS, PC, Metal
Option: Specified above
Size: 133 x 198 x 99mm (280g)
Manufacturer: TRADIT
Country of Manufacture: China
Manufacture Date: Dec. 2017
', 68.4, 84, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_6bba77c239ef55af13ab2d90bd0f1b83.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (75, N'
[10th] BIGBANG iRING
', N'
[Cautions]
1. This product may cause harm to those with physical/mental disability, the elderly, and children. Supervision is required.
2. Do not put any substances (such as liquid or metal) into the air vent or intake.
3. Charge with standard rated voltage. (DC 5V / Micro 5-Pin)
4. Do not insert the adapter or USB cable with wet hands.
', 57.9, 21, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_0695356ae08435b69711feac5bf8f16b.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (76, N'
LISA FIRST SINGLE VINYL LP LALISA [LIMITED]
', N'
“LALISA” Vinyl LP [LIMITED EDITION], LISA’S First Single will be produced in limited quality from August 26-September 9 for orders for which payment has been completed. Items will be dispatched in order starting on December 27.', 92.4, 81, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202111/4ce6a499ffc8f5b89231852b4d1c1630.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (77, N'
BLACKPINK 1st FULL ALBUM(Solo Edition)
', N'
[Special Package]
- Special Photo Book (ROSÉ Ver.)(60 pages)
- Photo Card (1 out of 4 shipped at random; options available for each member)
- Ticket Bookmark (1 out of 4 shipped at random; options available for each member)
- Event Entry Serial Code
', 8.5, 80, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202107/59b6f9d79dde0f8896434626134b72eb.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (78, N'
BAZAAR 2022 (ROSÉ)', N'
[Size]
210 x 297 x 15mm

', 23.3, 50, N'
https://cafe24img.poxo.com/ygnext/web/product/extra/small/202204/75c5ace78f304905bc0c5df3a6aae280.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (79, N'
[Dunst] 2-WAY TWEED DRESS_CREAM
', N'
[Material]
- Shell: 63% Cotton, 19% Polyester, 18% Acrylic
- Lining: 100% Polyester


', 10.8, 49, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202305/0968a6945941aad6902693338fbfe8ab.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (80, N'
BLACKPINK 1st FULL ALBUM [THE ALBUM]
', N'
[Product Information]
Product Name: BLACKPINK 1st FULL ALBUM [THE ALBUM]
Certificate of Permission: Not Applicable
Country of Manufacture: South Korea
', 17.9, 27, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_fc6ab5ce5bcc37be11b429f077d26750.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (81, N'
[NVPPOPUP] SAE NA T-SHIRTS
', N'
[Size]
M - Length: 70cm, Shoulder: 47cm, Chest: 52cm, Sleeve: 20cm/190g
L - Length: 74cm, Shoulder: 50cm, Chest: 55cm, Sleeve: 22cm/190g
XL - Length: 78cm, Shoulder: 53cm, Chest: 58cm, Sleeve: 24cm/190g


', 36.9, 86, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/559e1461427d008ef08404dce9432836.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (82, N'
BAZAAR 2022 (ROSÉ) TYPE B', N'
[Size]
210 x 297 x 15mm

', 80.4, 93, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202108/6a58607aae7522680cd4764536cc0a82.jpeg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (83, N'
BIGBANG ARTTOY USB
', N'
[Quality Assurance Standard]
Compensation for defective products is provided according to Fair Trade Commission standards.

[Warranty Service]
TRADIT / +82-2-783-9760

', 58.4, 40, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_2c7970c9bc8eb88915ff194b652f9616.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (84, N'
KRUNK AIR CLEANER
', N'
[Cautions]
1. This product may cause harm to those with physical/mental disability, the elderly, and children. Supervision is required.
2. Do not put any substances (such as liquid or metal) into the air vent or intake.
3. Charge with standard rated voltage. (DC 5V / Micro 5-Pin)
4. Do not insert the adapter or USB cable with wet hands.
5. Do not apply excessive impact or pressure.
6. Turn the power off and connect to standard rated voltage, then turn on.
7. Ensure the voltage is DC 5V before use when using various USB ports such as mobile charger, computer, power bank, or car.
8. This product cannot be disassembled. Compensation is not offered for damage caused by customer alteration.
* Recommended USB Port: Use a USB port that works normally.
* Temperatures for Use: 5-45 ?
', 11.9, 62, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_1af486fe998c95eff8d04178d1856f4a.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (85, N'
[NVPPOPUP] Ayan T-SHIRTS
', N'
[Material]
100% Cotton


', 10.1, 8, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/36c03cc163e89fc0112566dee5bf1a88.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (86, N'
[PBA] KRUNK MEMBERSHIP PHONECASE
', N'  [Quality Assurance Standard]  Compensation for defective products is provided according to Fair Trade Commission standards.    [Warranty Service]  TRADIT / +82-2-783-9760    
', 28.1, 72, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_1103071f2a03131fb17e77b573d3411f.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (87, N'
[NVPPOPUP] Ayan HOODIE
', N'
[Material]
100% Cotton


', 31.5, 52, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202302/b18398747e518fe9dff7a4a93c3ede62.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (88, N'
TWINKLE SCRIPT LOGO CROP TANK TOP BLACK', N'
We accept the following forms of payment:
- Eximbay
- Credit Card
  - Visa
  - MasterCard
  - American Express
-Paypal


', 16.6, 67, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/0120024d4984df1a245f4ae1853e24e7.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (89, N'
[MOTTE] G-DRAGON HAND FAN
', N'  [Quality Assurance Standard]  Compensation for defective products is provided according to Fair Trade Commission standards.    [Warranty Service]  TRADIT / +82-2-783-9760    
', 44.7, 7, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_26c318fbf76c8c9037eef0c05033a701.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (90, N'
BAZAAR 2022 (JENNIE)', N'
[Size]
210 x 297 x 15mm

', 19.3, 87, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202107/bb942d12055250751e352f6d5d1a257c.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (91, N'
[MOTTE] G-DRAGON PHONECASE MIRROR_TYPE 4
', N'
[Quality Assurance Standard]
Compensation for defective products is provided according to Fair Trade Commission standards.
Warranty Service: YG SELECT / en@ygselect.com
', 4.8, 61, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202112/20099bd194461bf16c09a378b342e720.jpg
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (92, N'
TWINKLE SCRIPT LOGO CROP TANK TOP WHITE
', N'
If your order amount is high, you may receive a confirmation call from your credit card company.
In the event that the order is determined to have been placed with a stolen card or identity, the order may be withheld or canceled at our discretion.


', 7.3, 20, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/fac940365ba600454538f5aaebfd9ebd.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (93, N'
SECHSKIES AIRPODS SILICONE CASE SET
', N'
  Material  PC, Oil, Sand    [Cautions]  - Keep away from fire.    [Quality Assurance Standard]  Compensation for defective products is provided according to Fair Trade Commission standards.  
', 62.7, 40, N'
https://cafe24img.poxo.com/ygnext/web/product/extra/small/shop1_85c9ccaccd8304a2ff047dde0f14e65e.png
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (94, N'
ADLV CIRCLE WAPPEN BALL CAP BLACK
', N'
If your order amount is high, you may receive a confirmation call from your credit card company.
In the event that the order is determined to have been placed with a stolen card or identity, the order may be withheld or canceled at our discretion.

', 32.7, 43, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/ee7f39cc240acb3ac4f82151f09736f6.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (95, N'
BLACKPINK 1st MINI ALBUM [SQUARE UP]
', N'
[Contents]
- CD + Photo Book + Lenticular Lyric Book + 1 Postcard + 1 Photo Card (Shipped at Random) + 1 Selfie Photo Card (Shipped at Random)
- All albums sold at YG SELECT are counted for Hanteo Chart and Gaon Chart.
* The product details and release date are subject to change due to production processes.
', 87.2, 56, N'
https://cafe24img.poxo.com/ygnext/web/product/big/shop1_224e0ce9fad9508ed1de18daa0c26ad2.jpg
', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (96, N'
ADLV CIRCLE WAPPEN BALL CAP NAVY
', N'
If your order amount is high, you may receive a confirmation call from your credit card company.
In the event that the order is determined to have been placed with a stolen card or identity, the order may be withheld or canceled at our discretion.
', 68.5, 34, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/71e2f162b0a74e64cc46ab9be6d39610.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (97, N'
BAZAAR 2022 (JENNIE) TYPE A,C', N'
[Size]
210 x 297 x 15mm

', 50.3, 40, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202107/aad6f609dde741a333a93ff209f09dce.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (98, N'
ADLV CIRCLE WAPPEN CROP SWEAT SHIRT WHITE
', N'
If your order amount is high, you may receive a confirmation call from your credit card company.
In the event that the order is determined to have been placed with a stolen card or identity, the order may be withheld or canceled at our discretion.
', 11.8, 42, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/1d736b3198c7f080a8aaa72bd49a72b8.jpg
', 3, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (99, N'
Vogue France March 2023 (JISOO)', N'
[Product Information]
Volume 1, 162 pages, no free gift

', 82.9, 66, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202303/669b9c0115604f936ef65756ea88e411.jpg', 4, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (100, N'
SIDE EMBOSSING PRINTING TRAINING PANTS
', N'
If your order amount is high, you may receive a confirmation call from your credit card company.
In the event that the order is determined to have been placed with a stolen card or identity, the order may be withheld or canceled at our discretion.', 57.2, 30, N'
https://cafe24img.poxo.com/ygnext/web/product/big/202301/542356b19cb57d44ac347fe2e8efc141.jpg
', 3, 0)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (102, N'BLACKPINK 1st THE ALBUM', N'1.How You Like That
2.Shut Down
3.Pink Venom', 20.5, 48, N'/GoodsKpopStore/images/BLACKPINK 1st FULL ALBUM ă€ŒTHE ALBUM.jpg', 2, 1)
INSERT [dbo].[Product] ([id], [name], [description], [price], [quantity], [image], [categoryId], [status]) VALUES (107, N'KRUNK POWER BANK', N'COLOR: BLACK/BLUE', 15.399999618530273, 48, N'/GoodsKpopStore/images/KRUNK POWER BANK.jpg', 1, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
