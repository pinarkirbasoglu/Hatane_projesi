USE [Hastane_ders]
GO
/****** Object:  Table [dbo].[Departmanlar]    Script Date: 6.07.2023 14:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departmanlar](
	[Dept_no] [tinyint] IDENTITY(1,1) NOT NULL,
	[Dept_adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departmanlar] PRIMARY KEY CLUSTERED 
(
	[Dept_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktorlar]    Script Date: 6.07.2023 14:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktorlar](
	[Doktor_no] [smallint] IDENTITY(1,1) NOT NULL,
	[Doktor_adi] [nvarchar](50) NOT NULL,
	[Dept_no] [tinyint] NOT NULL,
 CONSTRAINT [PK_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[Doktor_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hasta_yatis]    Script Date: 6.07.2023 14:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta_yatis](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[yat_tarihi] [smalldatetime] NOT NULL,
	[cik_tarihi] [smalldatetime] NULL,
	[oda_no] [tinyint] NOT NULL,
	[doktor_no] [smallint] NOT NULL,
	[dept_no] [tinyint] NOT NULL,
	[hasta_no] [int] NOT NULL,
 CONSTRAINT [PK_Hasta_yatis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastalar]    Script Date: 6.07.2023 14:38:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalar](
	[Hasta_no] [int] IDENTITY(1,1) NOT NULL,
	[Hasta_adi] [nvarchar](50) NOT NULL,
	[Hasta_dog_tar] [smalldatetime] NOT NULL,
	[hasta_adres] [nvarchar](150) NULL,
 CONSTRAINT [PK_Hastalar] PRIMARY KEY CLUSTERED 
(
	[Hasta_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departmanlar] ON 

INSERT [dbo].[Departmanlar] ([Dept_no], [Dept_adi]) VALUES (1, N'Cildiye')
INSERT [dbo].[Departmanlar] ([Dept_no], [Dept_adi]) VALUES (2, N'Kardioloji')
INSERT [dbo].[Departmanlar] ([Dept_no], [Dept_adi]) VALUES (3, N'ortopedi')
INSERT [dbo].[Departmanlar] ([Dept_no], [Dept_adi]) VALUES (4, N'pskiyatri')
INSERT [dbo].[Departmanlar] ([Dept_no], [Dept_adi]) VALUES (5, N'kulak burun boğaz')
SET IDENTITY_INSERT [dbo].[Departmanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Doktorlar] ON 

INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (1, N'Kamil Bey', 1)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (3, N'Fatma hn', 2)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (4, N'ismail abi', 2)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (5, N'ayşe hn', 3)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (7, N'hayati akbaş', 1)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (9, N'ahmet hakkı aşık', 4)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (10, N'fatma erzengin', 4)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (11, N'ibrahim doktor', 5)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (12, N'esra bolat', 5)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (14, N'sevgi çalışkan', 3)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (15, N'nevzat baygül', 1)
INSERT [dbo].[Doktorlar] ([Doktor_no], [Doktor_adi], [Dept_no]) VALUES (16, N'süleyman doğru', 2)
SET IDENTITY_INSERT [dbo].[Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Hasta_yatis] ON 

INSERT [dbo].[Hasta_yatis] ([id], [yat_tarihi], [cik_tarihi], [oda_no], [doktor_no], [dept_no], [hasta_no]) VALUES (1, CAST(N'2023-07-03T00:00:00' AS SmallDateTime), CAST(N'2023-07-05T00:00:00' AS SmallDateTime), 3, 3, 2, 2)
INSERT [dbo].[Hasta_yatis] ([id], [yat_tarihi], [cik_tarihi], [oda_no], [doktor_no], [dept_no], [hasta_no]) VALUES (7, CAST(N'2023-07-06T00:00:00' AS SmallDateTime), NULL, 98, 16, 2, 1)
INSERT [dbo].[Hasta_yatis] ([id], [yat_tarihi], [cik_tarihi], [oda_no], [doktor_no], [dept_no], [hasta_no]) VALUES (9, CAST(N'2023-07-06T00:00:00' AS SmallDateTime), CAST(N'2023-07-08T00:00:00' AS SmallDateTime), 67, 9, 4, 1)
INSERT [dbo].[Hasta_yatis] ([id], [yat_tarihi], [cik_tarihi], [oda_no], [doktor_no], [dept_no], [hasta_no]) VALUES (10, CAST(N'2023-07-06T00:00:00' AS SmallDateTime), NULL, 54, 14, 3, 1)
SET IDENTITY_INSERT [dbo].[Hasta_yatis] OFF
GO
SET IDENTITY_INSERT [dbo].[Hastalar] ON 

INSERT [dbo].[Hastalar] ([Hasta_no], [Hasta_adi], [Hasta_dog_tar], [hasta_adres]) VALUES (1, N'osman bal', CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'bursa')
INSERT [dbo].[Hastalar] ([Hasta_no], [Hasta_adi], [Hasta_dog_tar], [hasta_adres]) VALUES (2, N'tamer x', CAST(N'1998-02-03T00:00:00' AS SmallDateTime), N'ankara')
INSERT [dbo].[Hastalar] ([Hasta_no], [Hasta_adi], [Hasta_dog_tar], [hasta_adres]) VALUES (3, N'yunus z', CAST(N'2005-03-06T00:00:00' AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[Hastalar] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Hastalar]    Script Date: 6.07.2023 14:38:11 ******/
ALTER TABLE [dbo].[Hastalar] ADD  CONSTRAINT [IX_Hastalar] UNIQUE NONCLUSTERED 
(
	[Hasta_adi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_Departmanlar] FOREIGN KEY([Dept_no])
REFERENCES [dbo].[Departmanlar] ([Dept_no])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_Departmanlar]
GO
ALTER TABLE [dbo].[Hasta_yatis]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_yatis_Departmanlar] FOREIGN KEY([dept_no])
REFERENCES [dbo].[Departmanlar] ([Dept_no])
GO
ALTER TABLE [dbo].[Hasta_yatis] CHECK CONSTRAINT [FK_Hasta_yatis_Departmanlar]
GO
ALTER TABLE [dbo].[Hasta_yatis]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_yatis_Doktorlar] FOREIGN KEY([doktor_no])
REFERENCES [dbo].[Doktorlar] ([Doktor_no])
GO
ALTER TABLE [dbo].[Hasta_yatis] CHECK CONSTRAINT [FK_Hasta_yatis_Doktorlar]
GO
ALTER TABLE [dbo].[Hasta_yatis]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_yatis_Hastalar] FOREIGN KEY([hasta_no])
REFERENCES [dbo].[Hastalar] ([Hasta_no])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hasta_yatis] CHECK CONSTRAINT [FK_Hasta_yatis_Hastalar]
GO
