USE [master]
GO
/****** Object:  Database [db_topmanid]    Script Date: 07/27/2018 20:04:57 ******/
CREATE DATABASE [db_topmanid] ON  PRIMARY 
( NAME = N'db_topmanid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_topmanid.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_topmanid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\db_topmanid_log.LDF' , SIZE = 1344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_topmanid] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_topmanid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_topmanid] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [db_topmanid] SET ANSI_NULLS OFF
GO
ALTER DATABASE [db_topmanid] SET ANSI_PADDING OFF
GO
ALTER DATABASE [db_topmanid] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [db_topmanid] SET ARITHABORT OFF
GO
ALTER DATABASE [db_topmanid] SET AUTO_CLOSE ON
GO
ALTER DATABASE [db_topmanid] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [db_topmanid] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [db_topmanid] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [db_topmanid] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [db_topmanid] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [db_topmanid] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [db_topmanid] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [db_topmanid] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [db_topmanid] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [db_topmanid] SET  ENABLE_BROKER
GO
ALTER DATABASE [db_topmanid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [db_topmanid] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [db_topmanid] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [db_topmanid] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [db_topmanid] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [db_topmanid] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [db_topmanid] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [db_topmanid] SET  READ_WRITE
GO
ALTER DATABASE [db_topmanid] SET RECOVERY SIMPLE
GO
ALTER DATABASE [db_topmanid] SET  MULTI_USER
GO
ALTER DATABASE [db_topmanid] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [db_topmanid] SET DB_CHAINING OFF
GO
USE [db_topmanid]
GO
/****** Object:  Table [dbo].[department]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[id] [varchar](3) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [varchar](8) NOT NULL,
	[description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[size]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[size](
	[size] [varchar](10) NOT NULL,
	[status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[size] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[season]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[season](
	[id] [varchar](6) NOT NULL,
	[season] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[price_ctg]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[price_ctg](
	[id] [varchar](10) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[discount] [int] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[position]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[position](
	[id] [varchar](10) NOT NULL,
	[position] [varchar](50) NOT NULL,
	[status] [bit] NULL,
	[permission_level] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[store]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[store](
	[id] [varchar](4) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[address] [varchar](200) NULL,
	[phone] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[staff]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[staff](
	[id] [varchar](10) NOT NULL,
	[id_position] [varchar](10) NULL,
	[id_card] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[address] [varchar](200) NULL,
	[birthplace] [varchar](50) NULL,
	[birthdate] [date] NULL,
	[register_date] [datetime] NULL,
	[password] [varchar](100) NULL,
	[status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article](
	[article] [varchar](9) NOT NULL,
	[id_department] [varchar](3) NOT NULL,
	[id_category] [varchar](8) NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[article] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[store_staff]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[store_staff](
	[id_staff] [varchar](10) NOT NULL,
	[id_store] [varchar](4) NOT NULL,
	[date_active] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_store_staff] PRIMARY KEY CLUSTERED 
(
	[id_staff] ASC,
	[id_store] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mutation_history]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mutation_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_staff] [varchar](10) NOT NULL,
	[previous_store] [varchar](4) NOT NULL,
	[present_store] [varchar](4) NOT NULL,
	[mutation_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article_season_week]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article_season_week](
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[article] ASC,
	[id_season] ASC,
	[week] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[article_price]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[article_price](
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
	[id_price_ctg] [varchar](10) NOT NULL,
	[price] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_article_price] PRIMARY KEY CLUSTERED 
(
	[article] ASC,
	[id_season] ASC,
	[week] ASC,
	[id_price_ctg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[item]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item](
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
	[size] [varchar](10) NOT NULL,
	[upc] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[article] ASC,
	[id_season] ASC,
	[week] ASC,
	[size] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sales_history]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sales_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[id_store] [varchar](4) NOT NULL,
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
	[id_price_ctg] [varchar](10) NOT NULL,
	[price] [int] NOT NULL,
	[qty] [int] NOT NULL,
	[total] [int] NOT NULL,
	[sales_staff] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stock]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock](
	[id_store] [varchar](4) NOT NULL,
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
	[size] [varchar](10) NOT NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_store] ASC,
	[article] ASC,
	[id_season] ASC,
	[week] ASC,
	[size] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stock_transfer_history]    Script Date: 07/27/2018 20:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock_transfer_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[tsin] [varchar](4) NOT NULL,
	[tsout] [varchar](4) NOT NULL,
	[article] [varchar](9) NOT NULL,
	[id_season] [varchar](6) NOT NULL,
	[week] [varchar](10) NOT NULL,
	[size] [varchar](10) NOT NULL,
	[qty] [int] NOT NULL,
	[operator] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__size__status__778AC167]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[size] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__price_ctg__statu__2F10007B]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[price_ctg] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__position__status__1A14E395]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[position] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__position__permis__3B40CD36]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[position] ADD  DEFAULT ((1)) FOR [permission_level]
GO
/****** Object:  Default [DF__store__status__0CBAE877]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[store] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__store_sta__statu__21B6055D]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[store_staff] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__item_pric__price__08B54D69]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_price] ADD  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF_item_price_status]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_price] ADD  CONSTRAINT [DF_item_price_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__stock__qty__282DF8C2]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock] ADD  DEFAULT ((0)) FOR [qty]
GO
/****** Object:  ForeignKey [FK__staff__id_positi__1ED998B2]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK__staff__id_positi__1ED998B2] FOREIGN KEY([id_position])
REFERENCES [dbo].[position] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK__staff__id_positi__1ED998B2]
GO
/****** Object:  ForeignKey [FK__item__id_categor__108B795B]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article]  WITH CHECK ADD FOREIGN KEY([id_category])
REFERENCES [dbo].[category] ([id])
GO
/****** Object:  ForeignKey [FK__item__id_departm__0F975522]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article]  WITH CHECK ADD FOREIGN KEY([id_department])
REFERENCES [dbo].[department] ([id])
GO
/****** Object:  ForeignKey [FK__store_sta__id_st__22AA2996]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[store_staff]  WITH CHECK ADD  CONSTRAINT [FK__store_sta__id_st__22AA2996] FOREIGN KEY([id_staff])
REFERENCES [dbo].[staff] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[store_staff] CHECK CONSTRAINT [FK__store_sta__id_st__22AA2996]
GO
/****** Object:  ForeignKey [FK__store_sta__id_st__239E4DCF]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[store_staff]  WITH CHECK ADD  CONSTRAINT [FK__store_sta__id_st__239E4DCF] FOREIGN KEY([id_store])
REFERENCES [dbo].[store] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[store_staff] CHECK CONSTRAINT [FK__store_sta__id_st__239E4DCF]
GO
/****** Object:  ForeignKey [FK__mutation___id_st__286302EC]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[mutation_history]  WITH CHECK ADD  CONSTRAINT [FK__mutation___id_st__286302EC] FOREIGN KEY([id_staff])
REFERENCES [dbo].[staff] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mutation_history] CHECK CONSTRAINT [FK__mutation___id_st__286302EC]
GO
/****** Object:  ForeignKey [FK__mutation___prese__2A4B4B5E]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[mutation_history]  WITH CHECK ADD FOREIGN KEY([present_store])
REFERENCES [dbo].[store] ([id])
GO
/****** Object:  ForeignKey [FK__mutation___previ__29572725]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[mutation_history]  WITH CHECK ADD FOREIGN KEY([previous_store])
REFERENCES [dbo].[store] ([id])
GO
/****** Object:  ForeignKey [FK__item__article__02FC7413]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_season_week]  WITH CHECK ADD FOREIGN KEY([article])
REFERENCES [dbo].[article] ([article])
GO
/****** Object:  ForeignKey [FK__item__id_season__03F0984C]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_season_week]  WITH CHECK ADD FOREIGN KEY([id_season])
REFERENCES [dbo].[season] ([id])
GO
/****** Object:  ForeignKey [FK__item_pric__id_pr__0A9D95DB]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_price]  WITH CHECK ADD FOREIGN KEY([id_price_ctg])
REFERENCES [dbo].[price_ctg] ([id])
GO
/****** Object:  ForeignKey [FK__item_price__09A971A2]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[article_price]  WITH CHECK ADD FOREIGN KEY([article], [id_season], [week])
REFERENCES [dbo].[article_season_week] ([article], [id_season], [week])
GO
/****** Object:  ForeignKey [FK__item__22751F6C]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[item]  WITH CHECK ADD FOREIGN KEY([article], [id_season], [week])
REFERENCES [dbo].[article_season_week] ([article], [id_season], [week])
GO
/****** Object:  ForeignKey [FK__item__size__236943A5]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[item]  WITH CHECK ADD FOREIGN KEY([size])
REFERENCES [dbo].[size] ([size])
GO
/****** Object:  ForeignKey [FK__sales_his__sales__114A936A]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[sales_history]  WITH CHECK ADD FOREIGN KEY([sales_staff])
REFERENCES [dbo].[staff] ([id])
GO
/****** Object:  ForeignKey [FK_sales_history_article_price]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[sales_history]  WITH CHECK ADD  CONSTRAINT [FK_sales_history_article_price] FOREIGN KEY([article], [id_season], [week], [id_price_ctg])
REFERENCES [dbo].[article_price] ([article], [id_season], [week], [id_price_ctg])
GO
ALTER TABLE [dbo].[sales_history] CHECK CONSTRAINT [FK_sales_history_article_price]
GO
/****** Object:  ForeignKey [FK__stock__2A164134]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD FOREIGN KEY([article], [id_season], [week], [size])
REFERENCES [dbo].[item] ([article], [id_season], [week], [size])
GO
/****** Object:  ForeignKey [FK__stock__id_store__29221CFB]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock]  WITH CHECK ADD FOREIGN KEY([id_store])
REFERENCES [dbo].[store] ([id])
GO
/****** Object:  ForeignKey [FK__stock_tra__opera__367C1819]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock_transfer_history]  WITH CHECK ADD FOREIGN KEY([operator])
REFERENCES [dbo].[staff] ([id])
GO
/****** Object:  ForeignKey [FK__stock_tran__tsin__3493CFA7]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock_transfer_history]  WITH CHECK ADD FOREIGN KEY([tsin])
REFERENCES [dbo].[store] ([id])
GO
/****** Object:  ForeignKey [FK__stock_transfer_h__3587F3E0]    Script Date: 07/27/2018 20:04:58 ******/
ALTER TABLE [dbo].[stock_transfer_history]  WITH CHECK ADD FOREIGN KEY([tsout], [article], [id_season], [week], [size])
REFERENCES [dbo].[stock] ([id_store], [article], [id_season], [week], [size])
GO
