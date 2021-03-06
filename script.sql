USE [market]
GO 
/****** Object:  Table [dbo].[Guaranty]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guaranty]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Guaranty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NOT NULL,
	[Percent] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginStatus]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [varchar](255) NULL,
	[Gender] [varchar](255) NULL,
	[Birthday] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brand]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Img] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Discount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Percent] [int] NOT NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Country]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[PersonId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[City]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Price] [real] NOT NULL,
	[Description] [varchar](255) NULL,
	[Img] [varchar](255) NULL,
	[Size] [int] NOT NULL,
	[Id2] [int] NULL,
	[Id3] [int] NULL,
	[Id4] [int] NULL,
	[Discriminator] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PupularCustomer]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PupularCustomer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PupularCustomer](
	[PersonId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VipCustomer]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VipCustomer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VipCustomer](
	[PersonId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LoginStatus_Account]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoginStatus_Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoginStatus_Account](
	[LoginStatusId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginStatusId] ASC,
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Provider](
	[PersonId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[PersonId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Empno] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Laptop]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Laptop]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Laptop](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Jewelry]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jewelry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Jewelry](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HomeElectronic]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HomeElectronic]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HomeElectronic](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Guaranty_Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guaranty_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Guaranty_Product](
	[GuarantyId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GuarantyId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GirlFashion]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GirlFashion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GirlFashion](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Fridge]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fridge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fridge](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FastFood]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FastFood]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FastFood](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Fashion]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fashion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fashion](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EmployeeAccount]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeAccount](
	[AccountId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[EmployeePersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Email]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Email](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EconomicBook]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EconomicBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EconomicBook](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[District]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[District]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_Discount]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Discount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product_Discount](
	[ProductId] [int] NOT NULL,
	[DiscountId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[DiscountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order](
	[Id] [varchar](255) NOT NULL,
	[CustomerPersonId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MenFashion]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenFashion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MenFashion](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WomenFashion]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WomenFashion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WomenFashion](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Wine]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Wine](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Watch]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Watch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Watch](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Television]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Television]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Television](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudyBook]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudyBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudyBook](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Story]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Story]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Story](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SkillBook]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SkillBook](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shoe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Shoe](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ScienceBook]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScienceBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ScienceBook](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Salary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Salary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeePersonId] [int] NOT NULL,
	[Salary] [real] NOT NULL,
	[Startdate] [date] NULL,
	[Finishdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Img] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quantity]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quantity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Quantity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VegetarianFood]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VegetarianFood]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VegetarianFood](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Uniform]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Uniform]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Uniform](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Type_Product]    Script Date: 05/06/2019 21:15:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Type_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Type_Product](
	[TypeId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProviderAccount]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProviderAccount](
	[AccountId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[ProviderPersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Provider_Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Provider_Product](
	[ProviderPersonId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderPersonId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Position]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeePersonId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Startdate] [date] NULL,
	[Finishdate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Phone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactId] [int] NOT NULL,
	[Number] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoyFashion]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BoyFashion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BoyFashion](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BoxedFood]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BoxedFood]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BoxedFood](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BiographiesBook]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BiographiesBook]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BiographiesBook](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CellPhone]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CellPhone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CellPhone](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Category_Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category_Product](
	[CategoryId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerPersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Computer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Computer](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerAccount]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerAccount](
	[AccountId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[CustomerPersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer_Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer_Product](
	[CustomerPersonId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerPersonId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CookingFood]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CookingFood]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CookingFood](
	[ProductId] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeePersonId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeliveryAddress]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryAddress]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeliveryAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](255) NOT NULL,
	[Address] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart_Product]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cart_Product](
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Address]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	[Homenumber] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](255) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [real] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](255) NOT NULL,
	[Amount] [real] NOT NULL,
	[Date] [date] NULL,
	[Id2] [int] NULL,
	[Number] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Int] [int] NULL,
	[Description2] [varchar](255) NULL,
	[Id3] [int] NULL,
	[Name2] [varchar](255) NULL,
	[Number2] [varchar](255) NULL,
	[Description3] [varchar](255) NULL,
	[Discriminator] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 05/06/2019 21:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FKAddress79039]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKAddress79039]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FKAddress79039] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKAddress79039]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FKAddress79039]
GO
/****** Object:  ForeignKey [FKAddress90061]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKAddress90061]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FKAddress90061] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKAddress90061]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FKAddress90061]
GO
/****** Object:  ForeignKey [FKBiographie776173]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBiographie776173]') AND parent_object_id = OBJECT_ID(N'[dbo].[BiographiesBook]'))
ALTER TABLE [dbo].[BiographiesBook]  WITH CHECK ADD  CONSTRAINT [FKBiographie776173] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBiographie776173]') AND parent_object_id = OBJECT_ID(N'[dbo].[BiographiesBook]'))
ALTER TABLE [dbo].[BiographiesBook] CHECK CONSTRAINT [FKBiographie776173]
GO
/****** Object:  ForeignKey [FKBoxedFood212690]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBoxedFood212690]') AND parent_object_id = OBJECT_ID(N'[dbo].[BoxedFood]'))
ALTER TABLE [dbo].[BoxedFood]  WITH CHECK ADD  CONSTRAINT [FKBoxedFood212690] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBoxedFood212690]') AND parent_object_id = OBJECT_ID(N'[dbo].[BoxedFood]'))
ALTER TABLE [dbo].[BoxedFood] CHECK CONSTRAINT [FKBoxedFood212690]
GO
/****** Object:  ForeignKey [FKBoyFashion216369]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBoyFashion216369]') AND parent_object_id = OBJECT_ID(N'[dbo].[BoyFashion]'))
ALTER TABLE [dbo].[BoyFashion]  WITH CHECK ADD  CONSTRAINT [FKBoyFashion216369] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKBoyFashion216369]') AND parent_object_id = OBJECT_ID(N'[dbo].[BoyFashion]'))
ALTER TABLE [dbo].[BoyFashion] CHECK CONSTRAINT [FKBoyFashion216369]
GO
/****** Object:  ForeignKey [FKCart405693]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart405693]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FKCart405693] FOREIGN KEY([CustomerPersonId])
REFERENCES [dbo].[Customer] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart405693]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart]'))
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FKCart405693]
GO
/****** Object:  ForeignKey [FKCart_Produ230460]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart_Produ230460]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart_Product]'))
ALTER TABLE [dbo].[Cart_Product]  WITH CHECK ADD  CONSTRAINT [FKCart_Produ230460] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart_Produ230460]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart_Product]'))
ALTER TABLE [dbo].[Cart_Product] CHECK CONSTRAINT [FKCart_Produ230460]
GO
/****** Object:  ForeignKey [FKCart_Produ251192]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart_Produ251192]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart_Product]'))
ALTER TABLE [dbo].[Cart_Product]  WITH CHECK ADD  CONSTRAINT [FKCart_Produ251192] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCart_Produ251192]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cart_Product]'))
ALTER TABLE [dbo].[Cart_Product] CHECK CONSTRAINT [FKCart_Produ251192]
GO
/****** Object:  ForeignKey [FKCategory_P304140]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCategory_P304140]') AND parent_object_id = OBJECT_ID(N'[dbo].[Category_Product]'))
ALTER TABLE [dbo].[Category_Product]  WITH CHECK ADD  CONSTRAINT [FKCategory_P304140] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCategory_P304140]') AND parent_object_id = OBJECT_ID(N'[dbo].[Category_Product]'))
ALTER TABLE [dbo].[Category_Product] CHECK CONSTRAINT [FKCategory_P304140]
GO
/****** Object:  ForeignKey [FKCategory_P831634]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCategory_P831634]') AND parent_object_id = OBJECT_ID(N'[dbo].[Category_Product]'))
ALTER TABLE [dbo].[Category_Product]  WITH CHECK ADD  CONSTRAINT [FKCategory_P831634] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCategory_P831634]') AND parent_object_id = OBJECT_ID(N'[dbo].[Category_Product]'))
ALTER TABLE [dbo].[Category_Product] CHECK CONSTRAINT [FKCategory_P831634]
GO
/****** Object:  ForeignKey [FKCellPhone328640]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCellPhone328640]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone]  WITH CHECK ADD  CONSTRAINT [FKCellPhone328640] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCellPhone328640]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone] CHECK CONSTRAINT [FKCellPhone328640]
GO
/****** Object:  ForeignKey [FKCity241283]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCity241283]') AND parent_object_id = OBJECT_ID(N'[dbo].[City]'))
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FKCity241283] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCity241283]') AND parent_object_id = OBJECT_ID(N'[dbo].[City]'))
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FKCity241283]
GO
/****** Object:  ForeignKey [FKComment404038]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKComment404038]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FKComment404038] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKComment404038]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FKComment404038]
GO
/****** Object:  ForeignKey [FKComputer801659]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKComputer801659]') AND parent_object_id = OBJECT_ID(N'[dbo].[Computer]'))
ALTER TABLE [dbo].[Computer]  WITH CHECK ADD  CONSTRAINT [FKComputer801659] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKComputer801659]') AND parent_object_id = OBJECT_ID(N'[dbo].[Computer]'))
ALTER TABLE [dbo].[Computer] CHECK CONSTRAINT [FKComputer801659]
GO
/****** Object:  ForeignKey [FKContact141536]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKContact141536]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FKContact141536] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKContact141536]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FKContact141536]
GO
/****** Object:  ForeignKey [FKCookingFoo176359]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCookingFoo176359]') AND parent_object_id = OBJECT_ID(N'[dbo].[CookingFood]'))
ALTER TABLE [dbo].[CookingFood]  WITH CHECK ADD  CONSTRAINT [FKCookingFoo176359] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCookingFoo176359]') AND parent_object_id = OBJECT_ID(N'[dbo].[CookingFood]'))
ALTER TABLE [dbo].[CookingFood] CHECK CONSTRAINT [FKCookingFoo176359]
GO
/****** Object:  ForeignKey [FKCustomer220795]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer220795]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FKCustomer220795] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer220795]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FKCustomer220795]
GO
/****** Object:  ForeignKey [FKCustomer_P374643]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer_P374643]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer_Product]'))
ALTER TABLE [dbo].[Customer_Product]  WITH CHECK ADD  CONSTRAINT [FKCustomer_P374643] FOREIGN KEY([CustomerPersonId])
REFERENCES [dbo].[Customer] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer_P374643]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer_Product]'))
ALTER TABLE [dbo].[Customer_Product] CHECK CONSTRAINT [FKCustomer_P374643]
GO
/****** Object:  ForeignKey [FKCustomer_P633704]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer_P633704]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer_Product]'))
ALTER TABLE [dbo].[Customer_Product]  WITH CHECK ADD  CONSTRAINT [FKCustomer_P633704] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomer_P633704]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer_Product]'))
ALTER TABLE [dbo].[Customer_Product] CHECK CONSTRAINT [FKCustomer_P633704]
GO
/****** Object:  ForeignKey [FKCustomerAc960907]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomerAc960907]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAccount]'))
ALTER TABLE [dbo].[CustomerAccount]  WITH CHECK ADD  CONSTRAINT [FKCustomerAc960907] FOREIGN KEY([CustomerPersonId])
REFERENCES [dbo].[Customer] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomerAc960907]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAccount]'))
ALTER TABLE [dbo].[CustomerAccount] CHECK CONSTRAINT [FKCustomerAc960907]
GO
/****** Object:  ForeignKey [FKCustomerAc998302]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomerAc998302]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAccount]'))
ALTER TABLE [dbo].[CustomerAccount]  WITH CHECK ADD  CONSTRAINT [FKCustomerAc998302] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKCustomerAc998302]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerAccount]'))
ALTER TABLE [dbo].[CustomerAccount] CHECK CONSTRAINT [FKCustomerAc998302]
GO
/****** Object:  ForeignKey [FKDeliveryAd869082]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDeliveryAd869082]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryAddress]'))
ALTER TABLE [dbo].[DeliveryAddress]  WITH CHECK ADD  CONSTRAINT [FKDeliveryAd869082] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDeliveryAd869082]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryAddress]'))
ALTER TABLE [dbo].[DeliveryAddress] CHECK CONSTRAINT [FKDeliveryAd869082]
GO
/****** Object:  ForeignKey [FKDepartment132805]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDepartment132805]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FKDepartment132805] FOREIGN KEY([EmployeePersonId])
REFERENCES [dbo].[Employee] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDepartment132805]') AND parent_object_id = OBJECT_ID(N'[dbo].[Department]'))
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FKDepartment132805]
GO
/****** Object:  ForeignKey [FKDistrict563462]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDistrict563462]') AND parent_object_id = OBJECT_ID(N'[dbo].[District]'))
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FKDistrict563462] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKDistrict563462]') AND parent_object_id = OBJECT_ID(N'[dbo].[District]'))
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FKDistrict563462]
GO
/****** Object:  ForeignKey [FKEconomicBo547199]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEconomicBo547199]') AND parent_object_id = OBJECT_ID(N'[dbo].[EconomicBook]'))
ALTER TABLE [dbo].[EconomicBook]  WITH CHECK ADD  CONSTRAINT [FKEconomicBo547199] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEconomicBo547199]') AND parent_object_id = OBJECT_ID(N'[dbo].[EconomicBook]'))
ALTER TABLE [dbo].[EconomicBook] CHECK CONSTRAINT [FKEconomicBo547199]
GO
/****** Object:  ForeignKey [FKEmail881056]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmail881056]') AND parent_object_id = OBJECT_ID(N'[dbo].[Email]'))
ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FKEmail881056] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmail881056]') AND parent_object_id = OBJECT_ID(N'[dbo].[Email]'))
ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FKEmail881056]
GO
/****** Object:  ForeignKey [FKEmployee925791]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployee925791]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FKEmployee925791] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployee925791]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FKEmployee925791]
GO
/****** Object:  ForeignKey [FKEmployeeAc470537]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployeeAc470537]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeAccount]'))
ALTER TABLE [dbo].[EmployeeAccount]  WITH CHECK ADD  CONSTRAINT [FKEmployeeAc470537] FOREIGN KEY([EmployeePersonId])
REFERENCES [dbo].[Employee] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployeeAc470537]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeAccount]'))
ALTER TABLE [dbo].[EmployeeAccount] CHECK CONSTRAINT [FKEmployeeAc470537]
GO
/****** Object:  ForeignKey [FKEmployeeAc706574]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployeeAc706574]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeAccount]'))
ALTER TABLE [dbo].[EmployeeAccount]  WITH CHECK ADD  CONSTRAINT [FKEmployeeAc706574] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKEmployeeAc706574]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeAccount]'))
ALTER TABLE [dbo].[EmployeeAccount] CHECK CONSTRAINT [FKEmployeeAc706574]
GO
/****** Object:  ForeignKey [FKFashion466316]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFashion466316]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fashion]'))
ALTER TABLE [dbo].[Fashion]  WITH CHECK ADD  CONSTRAINT [FKFashion466316] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFashion466316]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fashion]'))
ALTER TABLE [dbo].[Fashion] CHECK CONSTRAINT [FKFashion466316]
GO
/****** Object:  ForeignKey [FKFastFood789996]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFastFood789996]') AND parent_object_id = OBJECT_ID(N'[dbo].[FastFood]'))
ALTER TABLE [dbo].[FastFood]  WITH CHECK ADD  CONSTRAINT [FKFastFood789996] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFastFood789996]') AND parent_object_id = OBJECT_ID(N'[dbo].[FastFood]'))
ALTER TABLE [dbo].[FastFood] CHECK CONSTRAINT [FKFastFood789996]
GO
/****** Object:  ForeignKey [FKFridge901109]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFridge901109]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fridge]'))
ALTER TABLE [dbo].[Fridge]  WITH CHECK ADD  CONSTRAINT [FKFridge901109] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKFridge901109]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fridge]'))
ALTER TABLE [dbo].[Fridge] CHECK CONSTRAINT [FKFridge901109]
GO
/****** Object:  ForeignKey [FKGirlFashio502571]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGirlFashio502571]') AND parent_object_id = OBJECT_ID(N'[dbo].[GirlFashion]'))
ALTER TABLE [dbo].[GirlFashion]  WITH CHECK ADD  CONSTRAINT [FKGirlFashio502571] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGirlFashio502571]') AND parent_object_id = OBJECT_ID(N'[dbo].[GirlFashion]'))
ALTER TABLE [dbo].[GirlFashion] CHECK CONSTRAINT [FKGirlFashio502571]
GO
/****** Object:  ForeignKey [FKGuaranty_P268233]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGuaranty_P268233]') AND parent_object_id = OBJECT_ID(N'[dbo].[Guaranty_Product]'))
ALTER TABLE [dbo].[Guaranty_Product]  WITH CHECK ADD  CONSTRAINT [FKGuaranty_P268233] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGuaranty_P268233]') AND parent_object_id = OBJECT_ID(N'[dbo].[Guaranty_Product]'))
ALTER TABLE [dbo].[Guaranty_Product] CHECK CONSTRAINT [FKGuaranty_P268233]
GO
/****** Object:  ForeignKey [FKGuaranty_P572726]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGuaranty_P572726]') AND parent_object_id = OBJECT_ID(N'[dbo].[Guaranty_Product]'))
ALTER TABLE [dbo].[Guaranty_Product]  WITH CHECK ADD  CONSTRAINT [FKGuaranty_P572726] FOREIGN KEY([GuarantyId])
REFERENCES [dbo].[Guaranty] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKGuaranty_P572726]') AND parent_object_id = OBJECT_ID(N'[dbo].[Guaranty_Product]'))
ALTER TABLE [dbo].[Guaranty_Product] CHECK CONSTRAINT [FKGuaranty_P572726]
GO
/****** Object:  ForeignKey [FKHomeElectr826081]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKHomeElectr826081]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeElectronic]'))
ALTER TABLE [dbo].[HomeElectronic]  WITH CHECK ADD  CONSTRAINT [FKHomeElectr826081] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKHomeElectr826081]') AND parent_object_id = OBJECT_ID(N'[dbo].[HomeElectronic]'))
ALTER TABLE [dbo].[HomeElectronic] CHECK CONSTRAINT [FKHomeElectr826081]
GO
/****** Object:  ForeignKey [FKJewelry295213]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKJewelry295213]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jewelry]'))
ALTER TABLE [dbo].[Jewelry]  WITH CHECK ADD  CONSTRAINT [FKJewelry295213] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKJewelry295213]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jewelry]'))
ALTER TABLE [dbo].[Jewelry] CHECK CONSTRAINT [FKJewelry295213]
GO
/****** Object:  ForeignKey [FKLaptop200487]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLaptop200487]') AND parent_object_id = OBJECT_ID(N'[dbo].[Laptop]'))
ALTER TABLE [dbo].[Laptop]  WITH CHECK ADD  CONSTRAINT [FKLaptop200487] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLaptop200487]') AND parent_object_id = OBJECT_ID(N'[dbo].[Laptop]'))
ALTER TABLE [dbo].[Laptop] CHECK CONSTRAINT [FKLaptop200487]
GO
/****** Object:  ForeignKey [FKLoginStatu273487]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLoginStatu273487]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginStatus_Account]'))
ALTER TABLE [dbo].[LoginStatus_Account]  WITH CHECK ADD  CONSTRAINT [FKLoginStatu273487] FOREIGN KEY([LoginStatusId])
REFERENCES [dbo].[LoginStatus] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLoginStatu273487]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginStatus_Account]'))
ALTER TABLE [dbo].[LoginStatus_Account] CHECK CONSTRAINT [FKLoginStatu273487]
GO
/****** Object:  ForeignKey [FKLoginStatu548928]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLoginStatu548928]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginStatus_Account]'))
ALTER TABLE [dbo].[LoginStatus_Account]  WITH CHECK ADD  CONSTRAINT [FKLoginStatu548928] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKLoginStatu548928]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoginStatus_Account]'))
ALTER TABLE [dbo].[LoginStatus_Account] CHECK CONSTRAINT [FKLoginStatu548928]
GO
/****** Object:  ForeignKey [FKMenFashion167092]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKMenFashion167092]') AND parent_object_id = OBJECT_ID(N'[dbo].[MenFashion]'))
ALTER TABLE [dbo].[MenFashion]  WITH CHECK ADD  CONSTRAINT [FKMenFashion167092] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKMenFashion167092]') AND parent_object_id = OBJECT_ID(N'[dbo].[MenFashion]'))
ALTER TABLE [dbo].[MenFashion] CHECK CONSTRAINT [FKMenFashion167092]
GO
/****** Object:  ForeignKey [FKOrder766581]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrder766581]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FKOrder766581] FOREIGN KEY([CustomerPersonId])
REFERENCES [dbo].[Customer] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrder766581]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FKOrder766581]
GO
/****** Object:  ForeignKey [FKOrderDetai559638]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderDetai559638]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKOrderDetai559638] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderDetai559638]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKOrderDetai559638]
GO
/****** Object:  ForeignKey [FKOrderDetai762072]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderDetai762072]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FKOrderDetai762072] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderDetai762072]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetail]'))
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FKOrderDetai762072]
GO
/****** Object:  ForeignKey [FKOrderStatu211840]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderStatu211840]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderStatus]'))
ALTER TABLE [dbo].[OrderStatus]  WITH CHECK ADD  CONSTRAINT [FKOrderStatu211840] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKOrderStatu211840]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderStatus]'))
ALTER TABLE [dbo].[OrderStatus] CHECK CONSTRAINT [FKOrderStatu211840]
GO
/****** Object:  ForeignKey [FKPayment972283]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPayment972283]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payment]'))
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FKPayment972283] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPayment972283]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payment]'))
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FKPayment972283]
GO
/****** Object:  ForeignKey [FKPhone857668]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPhone857668]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phone]'))
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FKPhone857668] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPhone857668]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phone]'))
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FKPhone857668]
GO
/****** Object:  ForeignKey [FKPosition69137]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPosition69137]') AND parent_object_id = OBJECT_ID(N'[dbo].[Position]'))
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FKPosition69137] FOREIGN KEY([EmployeePersonId])
REFERENCES [dbo].[Employee] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPosition69137]') AND parent_object_id = OBJECT_ID(N'[dbo].[Position]'))
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FKPosition69137]
GO
/****** Object:  ForeignKey [FKProduct960477]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct960477]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FKProduct960477] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct960477]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FKProduct960477]
GO
/****** Object:  ForeignKey [FKProduct_Di270410]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct_Di270410]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product_Discount]'))
ALTER TABLE [dbo].[Product_Discount]  WITH CHECK ADD  CONSTRAINT [FKProduct_Di270410] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discount] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct_Di270410]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product_Discount]'))
ALTER TABLE [dbo].[Product_Discount] CHECK CONSTRAINT [FKProduct_Di270410]
GO
/****** Object:  ForeignKey [FKProduct_Di409525]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct_Di409525]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product_Discount]'))
ALTER TABLE [dbo].[Product_Discount]  WITH CHECK ADD  CONSTRAINT [FKProduct_Di409525] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProduct_Di409525]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product_Discount]'))
ALTER TABLE [dbo].[Product_Discount] CHECK CONSTRAINT [FKProduct_Di409525]
GO
/****** Object:  ForeignKey [FKProvider79077]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider79077]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider]'))
ALTER TABLE [dbo].[Provider]  WITH CHECK ADD  CONSTRAINT [FKProvider79077] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider79077]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider]'))
ALTER TABLE [dbo].[Provider] CHECK CONSTRAINT [FKProvider79077]
GO
/****** Object:  ForeignKey [FKProvider_P409128]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider_P409128]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_Product]'))
ALTER TABLE [dbo].[Provider_Product]  WITH CHECK ADD  CONSTRAINT [FKProvider_P409128] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider_P409128]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_Product]'))
ALTER TABLE [dbo].[Provider_Product] CHECK CONSTRAINT [FKProvider_P409128]
GO
/****** Object:  ForeignKey [FKProvider_P811153]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider_P811153]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_Product]'))
ALTER TABLE [dbo].[Provider_Product]  WITH CHECK ADD  CONSTRAINT [FKProvider_P811153] FOREIGN KEY([ProviderPersonId])
REFERENCES [dbo].[Provider] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProvider_P811153]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_Product]'))
ALTER TABLE [dbo].[Provider_Product] CHECK CONSTRAINT [FKProvider_P811153]
GO
/****** Object:  ForeignKey [FKProviderAc220623]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProviderAc220623]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderAccount]'))
ALTER TABLE [dbo].[ProviderAccount]  WITH CHECK ADD  CONSTRAINT [FKProviderAc220623] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProviderAc220623]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderAccount]'))
ALTER TABLE [dbo].[ProviderAccount] CHECK CONSTRAINT [FKProviderAc220623]
GO
/****** Object:  ForeignKey [FKProviderAc515057]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProviderAc515057]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderAccount]'))
ALTER TABLE [dbo].[ProviderAccount]  WITH CHECK ADD  CONSTRAINT [FKProviderAc515057] FOREIGN KEY([ProviderPersonId])
REFERENCES [dbo].[Provider] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKProviderAc515057]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderAccount]'))
ALTER TABLE [dbo].[ProviderAccount] CHECK CONSTRAINT [FKProviderAc515057]
GO
/****** Object:  ForeignKey [FKPupularCus865117]    Script Date: 05/06/2019 21:15:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPupularCus865117]') AND parent_object_id = OBJECT_ID(N'[dbo].[PupularCustomer]'))
ALTER TABLE [dbo].[PupularCustomer]  WITH CHECK ADD  CONSTRAINT [FKPupularCus865117] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKPupularCus865117]') AND parent_object_id = OBJECT_ID(N'[dbo].[PupularCustomer]'))
ALTER TABLE [dbo].[PupularCustomer] CHECK CONSTRAINT [FKPupularCus865117]
GO
/****** Object:  ForeignKey [FKQuantity959933]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKQuantity959933]') AND parent_object_id = OBJECT_ID(N'[dbo].[Quantity]'))
ALTER TABLE [dbo].[Quantity]  WITH CHECK ADD  CONSTRAINT [FKQuantity959933] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKQuantity959933]') AND parent_object_id = OBJECT_ID(N'[dbo].[Quantity]'))
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [FKQuantity959933]
GO
/****** Object:  ForeignKey [FKRating84118]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKRating84118]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FKRating84118] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKRating84118]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FKRating84118]
GO
/****** Object:  ForeignKey [FKSalary598792]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKSalary598792]') AND parent_object_id = OBJECT_ID(N'[dbo].[Salary]'))
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FKSalary598792] FOREIGN KEY([EmployeePersonId])
REFERENCES [dbo].[Employee] ([PersonId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKSalary598792]') AND parent_object_id = OBJECT_ID(N'[dbo].[Salary]'))
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FKSalary598792]
GO
/****** Object:  ForeignKey [FKScienceBoo67931]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKScienceBoo67931]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScienceBook]'))
ALTER TABLE [dbo].[ScienceBook]  WITH CHECK ADD  CONSTRAINT [FKScienceBoo67931] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKScienceBoo67931]') AND parent_object_id = OBJECT_ID(N'[dbo].[ScienceBook]'))
ALTER TABLE [dbo].[ScienceBook] CHECK CONSTRAINT [FKScienceBoo67931]
GO
/****** Object:  ForeignKey [FKShoe74274]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKShoe74274]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shoe]'))
ALTER TABLE [dbo].[Shoe]  WITH CHECK ADD  CONSTRAINT [FKShoe74274] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKShoe74274]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shoe]'))
ALTER TABLE [dbo].[Shoe] CHECK CONSTRAINT [FKShoe74274]
GO
/****** Object:  ForeignKey [FKSkillBook971620]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKSkillBook971620]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillBook]'))
ALTER TABLE [dbo].[SkillBook]  WITH CHECK ADD  CONSTRAINT [FKSkillBook971620] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKSkillBook971620]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillBook]'))
ALTER TABLE [dbo].[SkillBook] CHECK CONSTRAINT [FKSkillBook971620]
GO
/****** Object:  ForeignKey [FKStory432010]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKStory432010]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FKStory432010] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKStory432010]') AND parent_object_id = OBJECT_ID(N'[dbo].[Story]'))
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FKStory432010]
GO
/****** Object:  ForeignKey [FKStudyBook493645]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKStudyBook493645]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudyBook]'))
ALTER TABLE [dbo].[StudyBook]  WITH CHECK ADD  CONSTRAINT [FKStudyBook493645] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKStudyBook493645]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudyBook]'))
ALTER TABLE [dbo].[StudyBook] CHECK CONSTRAINT [FKStudyBook493645]
GO
/****** Object:  ForeignKey [FKTelevision935641]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKTelevision935641]') AND parent_object_id = OBJECT_ID(N'[dbo].[Television]'))
ALTER TABLE [dbo].[Television]  WITH CHECK ADD  CONSTRAINT [FKTelevision935641] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKTelevision935641]') AND parent_object_id = OBJECT_ID(N'[dbo].[Television]'))
ALTER TABLE [dbo].[Television] CHECK CONSTRAINT [FKTelevision935641]
GO
/****** Object:  ForeignKey [FKType_Produ595535]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKType_Produ595535]') AND parent_object_id = OBJECT_ID(N'[dbo].[Type_Product]'))
ALTER TABLE [dbo].[Type_Product]  WITH CHECK ADD  CONSTRAINT [FKType_Produ595535] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKType_Produ595535]') AND parent_object_id = OBJECT_ID(N'[dbo].[Type_Product]'))
ALTER TABLE [dbo].[Type_Product] CHECK CONSTRAINT [FKType_Produ595535]
GO
/****** Object:  ForeignKey [FKType_Produ932284]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKType_Produ932284]') AND parent_object_id = OBJECT_ID(N'[dbo].[Type_Product]'))
ALTER TABLE [dbo].[Type_Product]  WITH CHECK ADD  CONSTRAINT [FKType_Produ932284] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKType_Produ932284]') AND parent_object_id = OBJECT_ID(N'[dbo].[Type_Product]'))
ALTER TABLE [dbo].[Type_Product] CHECK CONSTRAINT [FKType_Produ932284]
GO
/****** Object:  ForeignKey [FKUniform922169]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKUniform922169]') AND parent_object_id = OBJECT_ID(N'[dbo].[Uniform]'))
ALTER TABLE [dbo].[Uniform]  WITH CHECK ADD  CONSTRAINT [FKUniform922169] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKUniform922169]') AND parent_object_id = OBJECT_ID(N'[dbo].[Uniform]'))
ALTER TABLE [dbo].[Uniform] CHECK CONSTRAINT [FKUniform922169]
GO
/****** Object:  ForeignKey [FKVegetarian647916]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKVegetarian647916]') AND parent_object_id = OBJECT_ID(N'[dbo].[VegetarianFood]'))
ALTER TABLE [dbo].[VegetarianFood]  WITH CHECK ADD  CONSTRAINT [FKVegetarian647916] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKVegetarian647916]') AND parent_object_id = OBJECT_ID(N'[dbo].[VegetarianFood]'))
ALTER TABLE [dbo].[VegetarianFood] CHECK CONSTRAINT [FKVegetarian647916]
GO
/****** Object:  ForeignKey [FKVipCustome733151]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKVipCustome733151]') AND parent_object_id = OBJECT_ID(N'[dbo].[VipCustomer]'))
ALTER TABLE [dbo].[VipCustomer]  WITH CHECK ADD  CONSTRAINT [FKVipCustome733151] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKVipCustome733151]') AND parent_object_id = OBJECT_ID(N'[dbo].[VipCustomer]'))
ALTER TABLE [dbo].[VipCustomer] CHECK CONSTRAINT [FKVipCustome733151]
GO
/****** Object:  ForeignKey [FKWatch299629]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWatch299629]') AND parent_object_id = OBJECT_ID(N'[dbo].[Watch]'))
ALTER TABLE [dbo].[Watch]  WITH CHECK ADD  CONSTRAINT [FKWatch299629] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWatch299629]') AND parent_object_id = OBJECT_ID(N'[dbo].[Watch]'))
ALTER TABLE [dbo].[Watch] CHECK CONSTRAINT [FKWatch299629]
GO
/****** Object:  ForeignKey [FKWine954179]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWine954179]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wine]'))
ALTER TABLE [dbo].[Wine]  WITH CHECK ADD  CONSTRAINT [FKWine954179] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWine954179]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wine]'))
ALTER TABLE [dbo].[Wine] CHECK CONSTRAINT [FKWine954179]
GO
/****** Object:  ForeignKey [FKWomenFashi142290]    Script Date: 05/06/2019 21:15:58 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWomenFashi142290]') AND parent_object_id = OBJECT_ID(N'[dbo].[WomenFashion]'))
ALTER TABLE [dbo].[WomenFashion]  WITH CHECK ADD  CONSTRAINT [FKWomenFashi142290] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKWomenFashi142290]') AND parent_object_id = OBJECT_ID(N'[dbo].[WomenFashion]'))
ALTER TABLE [dbo].[WomenFashion] CHECK CONSTRAINT [FKWomenFashi142290]
GO
