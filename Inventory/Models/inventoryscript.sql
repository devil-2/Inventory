USE [master]
GO
/****** Object:  Database [Inventory]    Script Date: 17/02/2017 04:18:05 PM ******/
CREATE DATABASE [Inventory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventory', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Inventory.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inventory_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Inventory_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inventory] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventory] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventory] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventory] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventory] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventory] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventory] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventory] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventory] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventory] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inventory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventory] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventory] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventory] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inventory] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventory] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Inventory] SET  MULTI_USER 
GO
ALTER DATABASE [Inventory] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventory] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventory] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Inventory] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Inventory]
GO
/****** Object:  User [example]    Script Date: 17/02/2017 04:18:05 PM ******/
CREATE USER [example] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [example]
GO
/****** Object:  Table [dbo].[Franchises]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Franchises](
	[Franchise_Id] [nchar](10) NOT NULL,
	[Staff_Id] [nchar](10) NULL,
	[Franchise_Name] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Logo] [image] NULL,
	[Created_Date] [date] NULL,
	[Bank_Name] [nvarchar](50) NULL,
	[Accunt_Number] [nvarchar](50) NULL,
	[LandLine_Number] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Paytym_Number] [nvarchar](50) NULL,
	[Adhar_Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[Franchise_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_Number] [nchar](10) NOT NULL,
	[Amount] [money] NULL,
	[Staff_Id] [nchar](10) NULL,
	[Vendor_Id] [nchar](10) NULL,
	[Invoice_Date] [date] NULL,
	[Invoice_copy] [nvarchar](50) NULL,
	[Payment_Id] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_Innovoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Invoice_Number] [nchar](10) NULL,
	[SKU] [nchar](10) NULL,
	[Quantity] [nchar](10) NULL,
	[Price] [money] NULL,
	[Remarks] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[SKU] [nchar](10) NOT NULL,
	[Item_Name] [nvarchar](50) NULL,
	[Short_Description] [nvarchar](50) NULL,
	[Long_Description] [nvarchar](max) NULL,
	[Quantity] [nchar](10) NULL,
	[UnitOfMeasure_Id] [nchar](10) NULL,
	[Perishable] [int] NULL,
	[StockIn_Hand] [nvarchar](50) NULL,
	[Reoredr_Level] [nvarchar](50) NULL,
	[Item_Image] [image] NULL,
	[Cost_Price] [money] NULL,
	[Selling_Price] [money] NULL,
	[Bar_Code] [nvarchar](50) NULL,
	[MinimumBeforeOrder] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
	[Can_Be_Sold] [bit] NULL,
	[Can_Be_Purchased] [bit] NULL,
	[Is_Active] [bit] NULL,
 CONSTRAINT [PK_StockInHand] PRIMARY KEY CLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_Method] [nvarchar](50) NULL,
	[Payment_Amount] [money] NULL,
	[Description] [nvarchar](max) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Payment_Date] [date] NULL,
	[Payment_Id] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment_Method_Types]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Method_Types](
	[Payment_Method] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Method] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purchase_Order]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Order](
	[PO_No] [nchar](10) NOT NULL,
	[Staff_ID] [nchar](10) NULL,
	[Vendor_ID] [nchar](10) NULL,
	[PO_Date] [datetime] NULL,
	[NetAmt] [money] NULL,
	[TaxAmt] [money] NULL,
	[GrossAmt] [money] NULL,
	[DeliveryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PO_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purchase_Order_Items]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Order_Items](
	[PO_ID] [nchar](10) NULL,
	[SKU] [nchar](10) NULL,
	[OrderQty] [smallint] NULL,
	[UnitPrice] [money] NULL,
	[TotalAmt] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staff_Name] [nvarchar](50) NULL,
	[Mobile_No] [int] NULL,
	[Staff_Address] [nvarchar](max) NULL,
	[Staff_Id] [nchar](10) NOT NULL,
	[Status_ID] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff_status]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_status](
	[Status_ID] [int] NOT NULL,
	[Description] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[Franchise_Id] [nchar](10) NULL,
	[SKU] [nchar](10) NULL,
	[Quantity] [nchar](10) NULL,
	[Cost] [money] NULL,
	[SuppliedDate] [date] NULL,
	[Staff_Id] [nchar](10) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Supply_Id] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Supply_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasure](
	[UnitOfMeasure_Id] [nchar](10) NOT NULL,
	[UnitOfMeasure_Name] [nchar](10) NULL,
	[Description] [nvarchar](max) NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_TypeOfProducts] PRIMARY KEY CLUSTERED 
(
	[UnitOfMeasure_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[User_Type] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[User_Id] [varchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[User_FName] [nvarchar](50) NULL,
	[User_LName] [nvarchar](50) NULL,
	[Email_ID] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Company_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK__User__206D9170D43AA84A] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Vendor_Id] [nchar](10) NOT NULL,
	[Contact_Person1Fname] [nvarchar](50) NULL,
	[Mobile_No] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Bank_Acc_Number] [int] NULL,
	[Paytym_Number] [int] NULL,
	[Company_Name] [nvarchar](50) NULL,
	[Contact_Person1Lname] [nvarchar](50) NULL,
	[LandLine_Num] [int] NULL,
	[Bank_Name] [nvarchar](50) NULL,
	[Bank_Branch] [nvarchar](50) NULL,
	[Logo] [image] NULL,
	[Remarks] [nvarchar](100) NULL,
	[Contact_Person2Lname] [nvarchar](50) NULL,
	[Contact_Person2Fname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Adhar_Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor_address]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_address](
	[Addr_id] [nchar](10) NOT NULL,
	[vendor_id] [nchar](10) NULL,
	[Contract_person] [nvarchar](50) NULL,
	[Job_position] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Mobile] [int] NULL,
	[Note] [nvarchar](100) NULL,
	[Billing_Address] [nvarchar](max) NULL,
	[Shipping_Address] [nvarchar](max) NULL,
	[Other_Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Addr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse](
	[wh_id] [nchar](10) NOT NULL,
	[wh_name] [nvarchar](100) NULL,
	[wh_Shortname] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[wh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wh_address]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wh_address](
	[Addr_id] [nchar](10) NOT NULL,
	[wh_id] [nchar](10) NULL,
	[Contract_person] [nvarchar](50) NULL,
	[Job_position] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Mobile] [int] NULL,
	[Note] [nvarchar](100) NULL,
	[Billing_Address] [nvarchar](max) NULL,
	[Shipping_Address] [nvarchar](max) NULL,
	[Other_Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Addr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Franchises] ([Franchise_Id], [Staff_Id], [Franchise_Name], [Location], [Logo], [Created_Date], [Bank_Name], [Accunt_Number], [LandLine_Number], [Remarks], [Paytym_Number], [Adhar_Number]) VALUES (N'AN100     ', N'S17101    ', N'Bowenpally', N'Bowenpally', NULL, CAST(N'2017-01-20' AS Date), N'SBH', N'160056334576', N'576574363', N'nothing', N'546342654', N'2234578906754')
INSERT [dbo].[Franchises] ([Franchise_Id], [Staff_Id], [Franchise_Name], [Location], [Logo], [Created_Date], [Bank_Name], [Accunt_Number], [LandLine_Number], [Remarks], [Paytym_Number], [Adhar_Number]) VALUES (N'AN101     ', NULL, N'Shree impex', N'himayatnagar', NULL, CAST(N'2017-01-20' AS Date), N'Andhra bank', N'34524658970', N'74563453', N'good', N'984820919', N'27107234536')
INSERT [dbo].[Franchises] ([Franchise_Id], [Staff_Id], [Franchise_Name], [Location], [Logo], [Created_Date], [Bank_Name], [Accunt_Number], [LandLine_Number], [Remarks], [Paytym_Number], [Adhar_Number]) VALUES (N'AN102     ', N'S17100    ', NULL, N'HYd', NULL, CAST(N'2017-01-30' AS Date), N'Andhra bank', N'67986875764', N'89685645', N'ryryr', NULL, NULL)
INSERT [dbo].[Invoice] ([Invoice_Number], [Amount], [Staff_Id], [Vendor_Id], [Invoice_Date], [Invoice_copy], [Payment_Id], [Remarks]) VALUES (N'SRI\0117\1', 456.0000, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Invoice] ([Invoice_Number], [Amount], [Staff_Id], [Vendor_Id], [Invoice_Date], [Invoice_copy], [Payment_Id], [Remarks]) VALUES (N'SRI\0117\2', 456.0000, N'S17101    ', NULL, NULL, NULL, NULL, N'dfger')
INSERT [dbo].[Invoice] ([Invoice_Number], [Amount], [Staff_Id], [Vendor_Id], [Invoice_Date], [Invoice_copy], [Payment_Id], [Remarks]) VALUES (N'SRI\0117\3', 7645.0000, N'S17100    ', NULL, CAST(N'2017-01-23' AS Date), NULL, NULL, N'adjw')
INSERT [dbo].[InvoiceDetails] ([Invoice_Number], [SKU], [Quantity], [Price], [Remarks]) VALUES (N'SRI\0117\2', NULL, N'1         ', 2345.0000, NULL)
INSERT [dbo].[Items] ([SKU], [Item_Name], [Short_Description], [Long_Description], [Quantity], [UnitOfMeasure_Id], [Perishable], [StockIn_Hand], [Reoredr_Level], [Item_Image], [Cost_Price], [Selling_Price], [Bar_Code], [MinimumBeforeOrder], [Remarks], [Can_Be_Sold], [Can_Be_Purchased], [Is_Active]) VALUES (N'IT100     ', N'Tumeric powder', N'tumeric', N'fsdfs', N'2         ', NULL, 0, NULL, NULL, NULL, 150.0000, 145.0000, NULL, 1, N'fxsv', NULL, NULL, NULL)
INSERT [dbo].[Items] ([SKU], [Item_Name], [Short_Description], [Long_Description], [Quantity], [UnitOfMeasure_Id], [Perishable], [StockIn_Hand], [Reoredr_Level], [Item_Image], [Cost_Price], [Selling_Price], [Bar_Code], [MinimumBeforeOrder], [Remarks], [Can_Be_Sold], [Can_Be_Purchased], [Is_Active]) VALUES (N'IT101     ', N'eggs', N'eggs', NULL, N'12        ', NULL, 1, NULL, NULL, NULL, 4.3000, 4.0000, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Items] ([SKU], [Item_Name], [Short_Description], [Long_Description], [Quantity], [UnitOfMeasure_Id], [Perishable], [StockIn_Hand], [Reoredr_Level], [Item_Image], [Cost_Price], [Selling_Price], [Bar_Code], [MinimumBeforeOrder], [Remarks], [Can_Be_Sold], [Can_Be_Purchased], [Is_Active]) VALUES (N'IT102     ', N'mutton', N'goat', NULL, N'10        ', NULL, 1, NULL, NULL, NULL, 430.0000, 400.0000, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Payment] ([Payment_Method], [Payment_Amount], [Description], [Remarks], [Payment_Date], [Payment_Id]) VALUES (NULL, 1200.0000, N'dshf', N'hjdhjd', NULL, N'PY/17/100 ')
INSERT [dbo].[Payment] ([Payment_Method], [Payment_Amount], [Description], [Remarks], [Payment_Date], [Payment_Id]) VALUES (NULL, 1300.0000, N'maner', NULL, NULL, N'PY/17/101 ')
INSERT [dbo].[Payment] ([Payment_Method], [Payment_Amount], [Description], [Remarks], [Payment_Date], [Payment_Id]) VALUES (NULL, 9654.0000, N'dgdg', N'teet', CAST(N'2017-01-25' AS Date), N'PY/17/102 ')
INSERT [dbo].[Payment_Method_Types] ([Payment_Method], [Description]) VALUES (N'Cash on Delivery', N'after delivering goods payment will be done')
INSERT [dbo].[Payment_Method_Types] ([Payment_Method], [Description]) VALUES (N'Credit card', N'using any bank credit card')
INSERT [dbo].[Payment_Method_Types] ([Payment_Method], [Description]) VALUES (N'Debit card', N'using any bank Debit card')
INSERT [dbo].[Payment_Method_Types] ([Payment_Method], [Description]) VALUES (N'Net Banking', N'All banks')
INSERT [dbo].[Staff] ([Staff_Name], [Mobile_No], [Staff_Address], [Staff_Id], [Status_ID], [Remarks], [Email]) VALUES (N'Rajesh', 97678967, N'plot 10,chaithnya apartments', N'S17100    ', 1, N'aegdfrt', N'Rajesh@ymail.com')
INSERT [dbo].[Staff] ([Staff_Name], [Mobile_No], [Staff_Address], [Staff_Id], [Status_ID], [Remarks], [Email]) VALUES (N'Neelam', 88678967, N'Hno 21,chaithnya puri', N'S17101    ', 1, NULL, N'Neelam@gmail.com')
INSERT [dbo].[Staff] ([Staff_Name], [Mobile_No], [Staff_Address], [Staff_Id], [Status_ID], [Remarks], [Email]) VALUES (N'yaishnav', 98678945, N'Hno 2-4-6,vivekanadha nagar', N'S17102    ', 1, NULL, N'yaishnav@gmail.com')
INSERT [dbo].[Staff_status] ([Status_ID], [Description]) VALUES (1, N'Active              ')
INSERT [dbo].[Staff_status] ([Status_ID], [Description]) VALUES (2, N'InActive            ')
INSERT [dbo].[Supply] ([Franchise_Id], [SKU], [Quantity], [Cost], [SuppliedDate], [Staff_Id], [Remarks], [Supply_Id]) VALUES (N'AN100     ', N'IT101     ', N'10        ', 5464.0000, CAST(N'2017-01-27' AS Date), N'S17101    ', NULL, N'SUP/101   ')
INSERT [dbo].[Supply] ([Franchise_Id], [SKU], [Quantity], [Cost], [SuppliedDate], [Staff_Id], [Remarks], [Supply_Id]) VALUES (N'AN101     ', N'IT100     ', N'4         ', 457473.0000, CAST(N'2017-01-27' AS Date), N'S17100    ', N'fghdt', N'SUP/102   ')
INSERT [dbo].[Users] ([User_Type], [Description], [User_Id], [Remarks], [User_FName], [User_LName], [Email_ID], [Password], [Company_ID]) VALUES (N'1', N'dummy user', N'U17100', N'dummy user', N'sample_user', N'sample_user', N'abc@gmail.com', N'1234', N'1')
INSERT [dbo].[Vendor] ([Vendor_Id], [Contact_Person1Fname], [Mobile_No], [Address], [Bank_Acc_Number], [Paytym_Number], [Company_Name], [Contact_Person1Lname], [LandLine_Num], [Bank_Name], [Bank_Branch], [Logo], [Remarks], [Contact_Person2Lname], [Contact_Person2Fname], [Email], [Adhar_Number]) VALUES (N'100       ', N'sdfg', 5636, N'edrte', 3636, 3636, N'etre', N'ertet', 6346, N'fgdg', N'dfgd', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Vendor] ([Vendor_Id], [Contact_Person1Fname], [Mobile_No], [Address], [Bank_Acc_Number], [Paytym_Number], [Company_Name], [Contact_Person1Lname], [LandLine_Num], [Bank_Name], [Bank_Branch], [Logo], [Remarks], [Contact_Person2Lname], [Contact_Person2Fname], [Email], [Adhar_Number]) VALUES (N'101       ', N'fvbhfd', 54747, N'rtyr', 465546, 5467457, N'rtyr', N'rtyr', 5478654, N'fghf', NULL, NULL, NULL, NULL, NULL, N'ravi@gmail.com', NULL)
INSERT [dbo].[Vendor] ([Vendor_Id], [Contact_Person1Fname], [Mobile_No], [Address], [Bank_Acc_Number], [Paytym_Number], [Company_Name], [Contact_Person1Lname], [LandLine_Num], [Bank_Name], [Bank_Branch], [Logo], [Remarks], [Contact_Person2Lname], [Contact_Person2Fname], [Email], [Adhar_Number]) VALUES (N'102       ', N'syam', 9568744, N'sundar nagar', 465546, 5467457, N'keet', N'ram', 5478654, N'fghf', NULL, NULL, NULL, NULL, NULL, N'ravi123@gmail.com', NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SupplyingProducts]    Script Date: 17/02/2017 04:18:05 PM ******/
CREATE NONCLUSTERED INDEX [IX_SupplyingProducts] ON [dbo].[Supply]
(
	[Franchise_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendor] ([Vendor_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([Invoice_Number])
REFERENCES [dbo].[Invoice] ([Invoice_Number])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([UnitOfMeasure_Id])
REFERENCES [dbo].[UnitOfMeasure] ([UnitOfMeasure_Id])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([Payment_Method])
REFERENCES [dbo].[Payment_Method_Types] ([Payment_Method])
GO
ALTER TABLE [dbo].[Purchase_Order]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Purchase_Order]  WITH CHECK ADD FOREIGN KEY([Vendor_ID])
REFERENCES [dbo].[Vendor] ([Vendor_Id])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([PO_ID])
REFERENCES [dbo].[Purchase_Order] ([PO_No])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Staff_status] ([Status_ID])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Franchise_Id])
REFERENCES [dbo].[Franchises] ([Franchise_Id])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Vendor_address]  WITH CHECK ADD FOREIGN KEY([vendor_id])
REFERENCES [dbo].[Vendor] ([Vendor_Id])
GO
ALTER TABLE [dbo].[wh_address]  WITH CHECK ADD FOREIGN KEY([wh_id])
REFERENCES [dbo].[warehouse] ([wh_id])
GO
/****** Object:  StoredProcedure [dbo].[getFranchises]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[getFranchises](@Franchise_Id nchar(20))
	
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists (select Franchise_Id from Franchises where Franchise_Id=@Franchise_Id)
		begin
	SELECT Franchise_Id,LandLine_Number,Staff_Id,Franchise_Name,Location,Logo,
	Bank_Name,Accunt_Number,Remarks,Paytym_Number,Adhar_Number
  FROM Franchises where Franchise_Id=@Franchise_Id
  end
  else
  begin
  SELECT 'Franchises not available'
  end
  
END

GO
/****** Object:  StoredProcedure [dbo].[getInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getInvoice](@Invoice_Number nchar(10))
	
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Invoice_Number from Invoice where Invoice_Number=@Invoice_Number)
begin
	SELECT Invoice_Number,Amount,Staff_Id,Vendor_Id,Invoice_Date,Invoice_copy,Payment_Id,Remarks
    FROM Invoice where Invoice_Number=@Invoice_Number
 end
else
begin
select 'InVoice Not Exists'
end
END

GO
/****** Object:  StoredProcedure [dbo].[getItems]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getItems](@SKU nchar(10)) 
	
AS
BEGIN

	SET NOCOUNT ON;
	if exists(select SKU from items where SKU=@SKU)
	begin
	SELECT SKU,Item_Name,Short_Description,Long_Description,Quantity,UnitOfMeasure_Id,Perishable,StockIn_Hand
			,Reoredr_Level,Item_Image,Cost_Price,Selling_Price,Bar_Code,MinimumBeforeOrder
				FROM Items where SKU=@SKU
	end

	else
	begin
	select 'Item does not exoists'
	end
END

GO
/****** Object:  StoredProcedure [dbo].[getPayment]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getPayment](@Payment_Id nchar(10))
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Payment_Id from Payment where Payment_Id=@Payment_Id)
	begin
	SELECT Payment_Method,Payment_Amount,Description,Remarks,Payment_Date,Payment_Id
  FROM Payment where Payment_Id=@Payment_Id
  end
  else
  begin
  select 'Payment _Id doesnot exists'

  end
END

GO
/****** Object:  StoredProcedure [dbo].[getPayment_Method]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getPayment_Method](@Payment_Method nvarchar(50)) 
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Payment_Method from Payment_Method_Types where Payment_Method=@Payment_Method)
	begin
	SELECT Payment_Method,Description FROM Payment_Method_Types where Payment_Method=@Payment_Method
	end
	else
	begin
	select 'Payment method does not exists'
	end
END

GO
/****** Object:  StoredProcedure [dbo].[getStaff]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getStaff](@Staff_Id nchar(10))
	
AS
BEGIN
	SET NOCOUNT ON;
	if Exists(select Staff_Id from Staff where Staff_Id=@Staff_Id)
	begin
	SELECT Staff_Name,Mobile_No,Staff_Address,Staff_Id,Status_ID,Remarks,Email
  FROM Staff where Staff_Id=@Staff_Id
  end
  else
  begin
   select 'Staff Does not exists'

  end
	 
END

GO
/****** Object:  StoredProcedure [dbo].[getSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getSupply](@Supply_Id nchar(10))
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Supply_ID from Supply where Supply_Id=@Supply_Id)
	begin
	SELECT Franchise_Id,SKU,Quantity,Cost,SuppliedDate,Staff_Id,Remarks FROM Supply where Supply_Id=@Supply_Id
	end
	else
	begin
	select 'Supply doesnot exists'
	end
END

GO
/****** Object:  StoredProcedure [dbo].[getuser]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getuser](@email_id varchar(200),@password varchar(50))
AS
BEGIN
SET NOCOUNT ON;
--if Exists(select user_Id from users where email_Id=@email_id and password=@password)
--begin
SELECT User_Type,Description,user_Id,Remarks,User_FName,User_LName,Company_ID
FROM users where email_Id=@email_id and password=@password
--end
--else
--begin
--select 'User Does not exists'
--end

END
GO
/****** Object:  StoredProcedure [dbo].[insertFranchises]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertFranchises](@Franchise_Name nvarchar(50),@LandLine_Number int,@Staff_Id nchar(10),@Location nvarchar(50),@Logo image,
@Bank_Name nvarchar(50),@Accunt_Number nvarchar(50),@Remarks nvarchar(100),@Paytym_Number nvarchar(50),@Adhar_Number nvarchar(50)) 
	
AS
declare @Franchise_Id nchar(10)
declare @Created_Date date
set @Created_Date=GETDATE()
if (select count(Franchise_Id) from Franchises)=0
begin
set @Franchise_Id='AN'+'100'
BEGIN
	INSERT INTO Franchises(Franchise_Id,Franchise_Name,LandLine_Number,Staff_Id,Location,Logo,Created_Date,Bank_Name,Accunt_Number,Remarks,Paytym_Number,Adhar_Number)
     VALUES (@Franchise_Id,@Franchise_Name ,@LandLine_Number ,@Staff_Id, @Location, @Logo,@Created_Date,@Bank_Name,@Accunt_Number,@Remarks,@Paytym_Number,@Adhar_Number)
END
end
else
begin
set @Franchise_Id= 'AN'+CAST((( SELECT CAST((SUBSTRING( MAX (Franchise_Id),3,5)) as int)FROM Franchises where Franchise_Id like '%') + 1)as varchar)
print @Franchise_Id
INSERT INTO Franchises(Franchise_Id,Franchise_Name,LandLine_Number,Staff_Id,Location,Logo,Created_Date,Bank_Name,Accunt_Number,Remarks,Paytym_Number,Adhar_Number)
     VALUES (@Franchise_Id,@Franchise_Name ,@LandLine_Number,@Staff_Id , @Location, @Logo,@Created_Date,@Bank_Name,@Accunt_Number,@Remarks,@Paytym_Number,@Adhar_Number)
end

GO
/****** Object:  StoredProcedure [dbo].[insertInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertInvoice](@Payment_Id int,@Amount money,@Staff_Id nchar(10),@Vendor_Id nchar(10),
@Invoice_copy nvarchar(50),@Remarks nvarchar(100))
	
AS
declare @Invoice_Number nchar(10)
DECLARE @Invoice_Date date
set @Invoice_Date=GETDATE()
if(select count(Invoice_Number) from Invoice)=0
begin
set @Invoice_Number=('SRI\'+ RIGHT('00' + CONVERT(NVARCHAR(2), DATEPART(MONTH, GETDATE())), 2)
+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'\1')
	SET NOCOUNT ON;
	INSERT INTO Invoice(Invoice_Number,Payment_Id,Amount,Staff_Id,Vendor_Id,Invoice_Date,Invoice_copy,Remarks)
    VALUES(@Invoice_Number,@Payment_Id,@Amount,@Staff_Id,@Vendor_Id,@Invoice_Date,@Invoice_copy,@Remarks)
END
 
else
begin
 set @Invoice_Number=('SRI\'+ RIGHT('00' + CONVERT(NVARCHAR(2), DATEPART(MONTH, GETDATE())), 2)
+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'\'
+cast(((select cast((SUBSTRING(MAX(Invoice_Number),10,11))as int)+1 FROM Invoice where Invoice_Number like '%'))as varchar))
print @Invoice_Number
	SET NOCOUNT ON;
	INSERT INTO Invoice(Invoice_Number,Payment_Id,Amount,Staff_Id,Vendor_Id,Invoice_Date,Invoice_copy,Remarks)
    VALUES(@Invoice_Number,@Payment_Id,@Amount,@Staff_Id,@Vendor_Id,@Invoice_Date,@Invoice_copy,@Remarks)

end

GO
/****** Object:  StoredProcedure [dbo].[insertInvoiceDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertInvoiceDetails](@Invoice_Number nchar(10),@SKU nchar(10),@Quantity nchar(10),@Price money) 
	
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO InvoiceDetails(Invoice_Number,SKU,Quantity,Price)
     VALUES (@Invoice_Number,@SKU,@Quantity,@Price)
	 
END

GO
/****** Object:  StoredProcedure [dbo].[insertIteams]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertIteams](@Item_Name nvarchar(50),@Short_Description nvarchar(50),@Long_Description nvarchar(max),
							@Quantity nchar(10),@UnitOfMeasure_Id nchar(10),@Perishable int,@StockIn_Hand nvarchar(50),
							@Reoredr_Level nvarchar(50),@Item_Image image,@Cost_Price money,@Selling_Price money,@Bar_Code nvarchar(50),
							@MinimumBeforeOrder int,@Remarks nvarchar(100),@Can_Be_Sold int,@Can_Be_Purchased int,@Is_Active int)
AS
BEGIN
	
	SET NOCOUNT ON;
	declare @SKU nchar(10)
	if (select count(SKU) from items)=0
	begin
	set @SKU=('IT'+'100')
	INSERT INTO Items(SKU,Item_Name,Short_Description,Long_Description,Quantity,UnitOfMeasure_Id,Perishable
           ,StockIn_Hand,Reoredr_Level,Item_Image,Cost_Price,Selling_Price,Bar_Code,MinimumBeforeOrder,Remarks,Can_Be_Sold,Can_Be_Purchased,Is_Active)
     VALUES(@SKU,@Item_Name,@Short_Description,@Long_Description,@Quantity,@UnitOfMeasure_Id,@Perishable,@StockIn_Hand,@Reoredr_Level
			,@Item_Image,@Cost_Price,@Selling_Price,@Bar_Code,@MinimumBeforeOrder,@Remarks,@Can_Be_Sold,@Can_Be_Purchased,@Is_Active)
end

else
begin
set @SKU=('IT'+CAST((( SELECT CAST((SUBSTRING( MAX (SKU),3,5)) as int)FROM items where SKU like '%')+'1')as varchar))
print @SKU
	INSERT INTO Items(SKU,Item_Name,Short_Description,Long_Description,Quantity,UnitOfMeasure_Id,Perishable
           ,StockIn_Hand,Reoredr_Level,Item_Image,Cost_Price,Selling_Price,Bar_Code,MinimumBeforeOrder,Remarks,Can_Be_Sold,Can_Be_Purchased,Is_Active)
     VALUES(@SKU,@Item_Name,@Short_Description,@Long_Description,@Quantity,@UnitOfMeasure_Id,@Perishable,@StockIn_Hand,@Reoredr_Level
			,@Item_Image,@Cost_Price,@Selling_Price,@Bar_Code,@MinimumBeforeOrder,@Remarks,@Can_Be_Sold,@Can_Be_Purchased,@Is_Active)
end

END

GO
/****** Object:  StoredProcedure [dbo].[insertPayment]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertPayment](@Payment_Method nvarchar(50),@Payment_Amount money,@Description nvarchar(max),
					@Remarks nvarchar(100))
AS
BEGIN
	declare @Payment_Id nchar(10)
	declare @Payment_Date date
	set @Payment_Date=GETDATE()
	SET NOCOUNT ON;
	if(select count(Payment_Id) from Payment)=0
	begin 
	set @Payment_Id=('PY/'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'/100')
	INSERT INTO Payment(Payment_Id,Payment_Method,Payment_Amount,Description,Remarks,Payment_Date)
     VALUES (@Payment_Id,@Payment_Method,@Payment_Amount,@Description,@Remarks,@Payment_Date)
	 end
	 else
	 begin

	 set @Payment_Id=('PY/'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'/'
		+cast(((select cast((SUBSTRING(MAX(Payment_Id),7,9))as int)+1 FROM Payment where Payment_Id like '%'))as varchar))
	 INSERT INTO Payment(Payment_Id,Payment_Method,Payment_Amount,Description,Remarks,Payment_Date)
     VALUES (@Payment_Id,@Payment_Method,@Payment_Amount,@Description,@Remarks,@Payment_Date)
	 end
END

GO
/****** Object:  StoredProcedure [dbo].[insertPayment_Method_Types]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertPayment_Method_Types](@Payment_Method nvarchar(50),@Description nvarchar(max))
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO Payment_Method_Types(Payment_Method,Description)     
    VALUES (@Payment_Method,@Description)
END

GO
/****** Object:  StoredProcedure [dbo].[insertStaff]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertStaff](@Staff_Name nvarchar(50),@Mobile_No int,@Staff_Address nvarchar(max),
								@Status_ID int,@Remarks nvarchar(100),@Email nvarchar(100))
AS
BEGIN
declare @Staff_Id nchar(10)

	
	SET NOCOUNT ON;

	if(select count(Staff_Id) from Staff)=0
	begin
	set @Staff_Id=('S'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'100')
    print @Staff_Id
	INSERT INTO Staff(Staff_Name,Mobile_No,Staff_Address,Staff_Id,Status_ID,Remarks,Email)
    VALUES(@Staff_Name,@Mobile_No,@Staff_Address,@Staff_Id,@Status_ID,@Remarks,@Email)
	end

	else
	begin
	set @Staff_Id=('S'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+cast(((select cast((SUBSTRING(MAX(Staff_Id),4,6))as int)+1 FROM Staff where Staff_Id like '%'))as varchar))
    print @Staff_Id
	INSERT INTO Staff(Staff_Name,Mobile_No,Staff_Address,Staff_Id,Status_ID,Remarks,Email)
    VALUES(@Staff_Name,@Mobile_No,@Staff_Address,@Staff_Id,@Status_ID,@Remarks,@Email)
	end

END

GO
/****** Object:  StoredProcedure [dbo].[insertSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertSupply](@Franchise_Id nchar(10),@SKU nchar(10),@Quantity nchar(10),@Cost money
								,@Staff_Id nchar(10),@Remarks nvarchar(100))
AS
BEGIN
	declare @Supply_Id nchar(10)
	declare @SuppliedDate date
	set @SuppliedDate=GETDATE()
	SET NOCOUNT ON;
	if (select count(Supply_Id) from Supply)=0
	begin

set @Supply_Id=('SUP/'+'101')
	INSERT INTO Supply(Supply_Id,Franchise_Id,SKU,Quantity,Cost,SuppliedDate,Staff_Id,Remarks)
VALUES(@Supply_Id,@Franchise_Id,@SKU,@Quantity,@Cost,@SuppliedDate,@Staff_Id,@Remarks)
   end

   else
   begin
   set @Supply_Id='SUP/'+CAST((( SELECT CAST((SUBSTRING( MAX (Supply_Id),5,8)) as int)FROM Supply where Supply_Id like '%') + 1)as varchar)
   INSERT INTO Supply(Supply_Id,Franchise_Id,SKU,Quantity,Cost,SuppliedDate,Staff_Id,Remarks)
VALUES(@Supply_Id,@Franchise_Id,@SKU,@Quantity,@Cost,@SuppliedDate,@Staff_Id,@Remarks)
   end
END

GO
/****** Object:  StoredProcedure [dbo].[insertuser]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertuser](@User_Type nvarchar(50),@Description nvarchar(50),@Remarks  nvarchar(100),
@User_FName nvarchar(50),@User_LName nvarchar(50),@Email_ID varchar(200),@Password varchar(50),@Company_ID varchar(50))
AS
BEGIN
declare @user_Id varchar(50)

SET NOCOUNT ON;

if(select count(user_Id) from users)=0
begin
set @user_Id=('U'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+'100')
--print @Staff_Id
--INSERT INTO users(User_Type,Description,User_Id,Remarks,User_FName,User_LName,Email_ID,Password,Company_ID)
---VALUES(@User_Type,@Description,@User_Id,@Remarks,@User_FName,@User_LName,@Email_ID,@Password,@Company_ID)
end
else
begin
set @user_Id=('U'+(select substring(CAST(DATEPART(yy,GETDATE()) as varchar(10)),3,4))+cast(((select cast((SUBSTRING(MAX(user_id),4,6))as int)+1 FROM users where user_Id like '%'))as varchar))
--print @Staff_Id
--INSERT INTO users(User_Type,Description,User_Id,Remarks,User_FName,User_LName,Email_ID,Password,Company_ID)
--VALUES(@User_Type,@Description,@User_Id,@Remarks,@User_FName,@User_LName,@Email_ID,@Password,@Company_ID)
end
INSERT INTO users(User_Type,Description,User_Id,Remarks,User_FName,User_LName,Email_ID,Password,Company_ID)
VALUES(@User_Type,@Description,@User_Id,@Remarks,@User_FName,@User_LName,@Email_ID,@Password,@Company_ID)
END


GO
/****** Object:  StoredProcedure [dbo].[insertvendor]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertvendor](@Contact_Person1Fname nvarchar(50),@Mobile_No int,@Address nvarchar(max),@Bank_Acc_Number int,
@Paytym_Number int,@Company_Name nvarchar(50),@Contact_Person1Lname nvarchar(50),@LandLine_Num int,@Bank_Name nvarchar(50),@Bank_Branch
 nvarchar(50),@Logo image,@Remarks nvarchar(100),@Contact_Person2Lname nvarchar(50),@Contact_Person2Fname nvarchar(50),@Email nvarchar(50),
 @Adhar_Number nvarchar(50)) 

AS
BEGIN
	
	SET NOCOUNT ON;
	declare @Vendor_Id nchar(10)
	if not exists(select Email from vendor where Email=@Email)
	begin
	if(select count(Vendor_Id) from Vendor)=0
  begin
  set @Vendor_Id=100
	INSERT INTO Vendor(Vendor_Id,Contact_Person1Fname,Mobile_No,Address,Bank_Acc_Number,Paytym_Number,Company_Name
           ,Contact_Person1Lname,LandLine_Num,Bank_Name,Bank_Branch,Logo,Remarks,Contact_Person2Lname,Contact_Person2Fname
           ,Email,Adhar_Number)
     VALUES
           (@Vendor_Id,@Contact_Person1Fname,@Mobile_No,@Address,@Bank_Acc_Number,@Paytym_Number,@Company_Name,@Contact_Person1Lname,
		   @LandLine_Num,@Bank_Name,@Bank_Branch,@Logo,@Remarks,@Contact_Person2Lname,@Contact_Person2Fname,@Email,@Adhar_Number)
		   end

	else 
	begin
	 set @Vendor_Id=(select max(Vendor_Id) from Vendor)+1
	INSERT INTO Vendor(Vendor_Id,Contact_Person1Fname,Mobile_No,Address,Bank_Acc_Number,Paytym_Number,Company_Name
           ,Contact_Person1Lname,LandLine_Num,Bank_Name,Bank_Branch,Logo,Remarks,Contact_Person2Lname,Contact_Person2Fname
           ,Email,Adhar_Number)
     VALUES
           (@Vendor_Id,@Contact_Person1Fname,@Mobile_No,@Address,@Bank_Acc_Number,@Paytym_Number,@Company_Name,@Contact_Person1Lname,
		   @LandLine_Num,@Bank_Name,@Bank_Branch,@Logo,@Remarks,@Contact_Person2Lname,@Contact_Person2Fname,@Email,@Adhar_Number)
	end
end
else
begin
select 'Vendor alredy exists'
end
END

GO
/****** Object:  StoredProcedure [dbo].[sproc_GetFranchiseDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetFranchiseDetails]

(
	@Franchise_Id varchar(10)
)

AS
SELECT * FROM [Franchises]

WHERE
Franchise_Id = @Franchise_Id


/*DROP PROC dbo.sproc_GetFranchiseDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetFranchises]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetFranchises]
AS
SELECT * FROM [Franchises]

/*DROP PROC dbo.sproc_GetFranchises*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoice]
AS
SELECT * FROM [Invoice]

/*DROP PROC dbo.sproc_GetInvoice*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetInvoiceDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetInvoiceDetails]
AS
SELECT * FROM [InvoiceDetails]

/*DROP PROC dbo.sproc_GetInvoiceDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetItemDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetItemDetails]

(
	@SKU varchar(10)
)

AS
SELECT * FROM [Items]

WHERE
SKU = @SKU


/*DROP PROC dbo.sproc_GetItemDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetItems]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetItems]
AS
SELECT * FROM [Items]

/*DROP PROC dbo.sproc_GetItems*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPayment]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPayment]
AS
SELECT * FROM [Payment]

/*DROP PROC dbo.sproc_GetPayment*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPayment_Method_TypeDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPayment_Method_TypeDetails]

(
	@Payment_Method varchar(50)
)

AS
SELECT * FROM [Payment_Method_Types]

WHERE
Payment_Method = @Payment_Method


/*DROP PROC dbo.sproc_GetPayment_Method_TypeDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPayment_Method_Types]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPayment_Method_Types]
AS
SELECT * FROM [Payment_Method_Types]

/*DROP PROC dbo.sproc_GetPayment_Method_Types*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPaymentDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPaymentDetails]

(
	@Payment_Id varchar(10)
)

AS
SELECT * FROM [Payment]

WHERE
Payment_Id = @Payment_Id


/*DROP PROC dbo.sproc_GetPaymentDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPurchase_Order]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPurchase_Order]
AS
SELECT * FROM [Purchase_Order]

/*DROP PROC dbo.sproc_GetPurchase_Order*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPurchase_Order_Items]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPurchase_Order_Items]
AS
SELECT * FROM [Purchase_Order_Items]

/*DROP PROC dbo.sproc_GetPurchase_Order_Items*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetPurchase_OrderDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetPurchase_OrderDetails]

(
	@PO_No varchar(10)
)

AS
SELECT * FROM [Purchase_Order]

WHERE
PO_No = @PO_No


/*DROP PROC dbo.sproc_GetPurchase_OrderDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetStaff]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetStaff]
AS
SELECT * FROM [Staff]

/*DROP PROC dbo.sproc_GetStaff*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetStaff_statuDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetStaff_statuDetails]

(
	@Status_ID int
)

AS
SELECT * FROM [Staff_status]

WHERE
Status_ID = @Status_ID


/*DROP PROC dbo.sproc_GetStaff_statuDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetStaff_status]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetStaff_status]
AS
SELECT * FROM [Staff_status]

/*DROP PROC dbo.sproc_GetStaff_status*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetStaffDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetStaffDetails]

(
	@Staff_Id varchar(10)
)

AS
SELECT * FROM [Staff]

WHERE
Staff_Id = @Staff_Id


/*DROP PROC dbo.sproc_GetStaffDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetSupply]
AS
SELECT * FROM [Supply]

/*DROP PROC dbo.sproc_GetSupply*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetSupplyDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetSupplyDetails]

(
	@Supply_Id varchar(10)
)

AS
SELECT * FROM [Supply]

WHERE
Supply_Id = @Supply_Id


/*DROP PROC dbo.sproc_GetSupplyDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetsysdiagramDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetsysdiagramDetails]

(
	@diagram_id int
)

AS
SELECT * FROM [sysdiagrams]

WHERE
diagram_id = @diagram_id


/*DROP PROC dbo.sproc_GetsysdiagramDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_Getsysdiagrams]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_Getsysdiagrams]
AS
SELECT * FROM [sysdiagrams]

/*DROP PROC dbo.sproc_Getsysdiagrams*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetUnitOfMeasure]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetUnitOfMeasure]
AS
SELECT * FROM [UnitOfMeasure]

/*DROP PROC dbo.sproc_GetUnitOfMeasure*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetUnitOfMeasureDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetUnitOfMeasureDetails]

(
	@UnitOfMeasure_Id varchar(10)
)

AS
SELECT * FROM [UnitOfMeasure]

WHERE
UnitOfMeasure_Id = @UnitOfMeasure_Id


/*DROP PROC dbo.sproc_GetUnitOfMeasureDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetUserDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetUserDetails]

(
	@User_Id int
)

AS
SELECT * FROM [Users]

WHERE
User_Id = @User_Id


/*DROP PROC dbo.sproc_GetUserDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetUsers]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetUsers]
AS
SELECT * FROM [Users]

/*DROP PROC dbo.sproc_GetUsers*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetVendor]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetVendor]
AS
SELECT * FROM [Vendor]

/*DROP PROC dbo.sproc_GetVendor*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_GetVendorDetails]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_GetVendorDetails]

(
	@Vendor_Id varchar(10)
)

AS
SELECT * FROM [Vendor]

WHERE
Vendor_Id = @Vendor_Id


/*DROP PROC dbo.sproc_GetVendorDetails*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertInvoice]
(
	@Invoice_Number varchar(10),
	@Amount money,
	@Staff_Id varchar(10),
	@Vendor_Id varchar(10),
	@Invoice_Date datetime,
	@Invoice_copy varchar(50),
	@Payment_Id int,
	@Remarks varchar(100)
)

AS
INSERT INTO [Invoice]
( 
	Invoice_Number,
	Amount,
	Staff_Id,
	Vendor_Id,
	Invoice_Date,
	Invoice_copy,
	Payment_Id,
	Remarks

)
VALUES 
(
	@Invoice_Number,
	@Amount,
	@Staff_Id,
	@Vendor_Id,
	@Invoice_Date,
	@Invoice_copy,
	@Payment_Id,
	@Remarks
)
/*DROP PROC dbo.sproc_InsertInvoice*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertInvoiceDetail]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertInvoiceDetail]
(
	@Invoice_Number varchar(10),
	@SKU varchar(10),
	@Quantity varchar(10),
	@Price money,
	@Remarks varchar(100)
)

AS
INSERT INTO [InvoiceDetails]
( 
	Invoice_Number,
	SKU,
	Quantity,
	Price,
	Remarks

)
VALUES 
(
	@Invoice_Number,
	@SKU,
	@Quantity,
	@Price,
	@Remarks
)
/*DROP PROC dbo.sproc_InsertInvoiceDetail*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertPurchase_Order]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertPurchase_Order]
(
	@PO_No varchar(10),
	@Staff_ID varchar(10),
	@Vendor_ID varchar(10),
	@PO_Date datetime,
	@NetAmt money,
	@TaxAmt money,
	@GrossAmt money,
	@DeliveryDate datetime
)

AS
INSERT INTO [Purchase_Order]
( 
	PO_No,
	Staff_ID,
	Vendor_ID,
	PO_Date,
	NetAmt,
	TaxAmt,
	GrossAmt,
	DeliveryDate

)
VALUES 
(
	@PO_No,
	@Staff_ID,
	@Vendor_ID,
	@PO_Date,
	@NetAmt,
	@TaxAmt,
	@GrossAmt,
	@DeliveryDate
)
/*DROP PROC dbo.sproc_InsertPurchase_Order*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertPurchase_Order_Item]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertPurchase_Order_Item]
(
	@PO_ID varchar(10),
	@SKU varchar(10),
	@OrderQty smallint,
	@UnitPrice money,
	@TotalAmt money
)

AS
INSERT INTO [Purchase_Order_Items]
( 
	PO_ID,
	SKU,
	OrderQty,
	UnitPrice,
	TotalAmt

)
VALUES 
(
	@PO_ID,
	@SKU,
	@OrderQty,
	@UnitPrice,
	@TotalAmt
)
/*DROP PROC dbo.sproc_InsertPurchase_Order_Item*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertStaff_statu]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertStaff_statu]
(
	@Status_ID int,
	@Description varchar(20)
)

AS
INSERT INTO [Staff_status]
( 
	Status_ID,
	Description

)
VALUES 
(
	@Status_ID,
	@Description
)
/*DROP PROC dbo.sproc_InsertStaff_statu*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertSupply]
(
	@Franchise_Id varchar(10),
	@SKU varchar(10),
	@Quantity varchar(10),
	@Cost money,
	@SuppliedDate datetime,
	@Staff_Id varchar(10),
	@Remarks varchar(100),
	@Supply_Id varchar(10)
)

AS
INSERT INTO [Supply]
( 
	Franchise_Id,
	SKU,
	Quantity,
	Cost,
	SuppliedDate,
	Staff_Id,
	Remarks,
	Supply_Id

)
VALUES 
(
	@Franchise_Id,
	@SKU,
	@Quantity,
	@Cost,
	@SuppliedDate,
	@Staff_Id,
	@Remarks,
	@Supply_Id
)
/*DROP PROC dbo.sproc_InsertSupply*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_InsertUser]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_InsertUser]
(
	@User_Name varchar(50),
	@User_Type varchar(50),
	@Description varchar(50),
	@User_Id int,
	@Remarks varchar(100),
	@User_FName varchar(50),
	@User_LName varchar(50)
)

AS
INSERT INTO [Users]
( 
	User_Name,
	User_Type,
	Description,
	User_Id,
	Remarks,
	User_FName,
	User_LName

)
VALUES 
(
	@User_Name,
	@User_Type,
	@Description,
	@User_Id,
	@Remarks,
	@User_FName,
	@User_LName
)
/*DROP PROC dbo.sproc_InsertUser*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateInvoice]
(
	@Invoice_Number varchar(10),
	@Amount money,
	@Staff_Id varchar(10),
	@Vendor_Id varchar(10),
	@Invoice_Date datetime,
	@Invoice_copy varchar(50),
	@Payment_Id int,
	@Remarks varchar(100)
)

AS
UPDATE [Invoice] 
SET 
Invoice_Number = @Invoice_Number,
Amount = @Amount,
Staff_Id = @Staff_Id,
Vendor_Id = @Vendor_Id,
Invoice_Date = @Invoice_Date,
Invoice_copy = @Invoice_copy,
Payment_Id = @Payment_Id,
Remarks = @Remarks

WHERE
Invoice_Number = @Invoice_Number


/*DROP PROC dbo.sproc_UpdateInvoice*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateInvoiceDetail]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateInvoiceDetail]
(
	@Invoice_Number varchar(10),
	@SKU varchar(10),
	@Quantity varchar(10),
	@Price money,
	@Remarks varchar(100)
)

AS
UPDATE [InvoiceDetails] 
SET 
Invoice_Number = @Invoice_Number,
SKU = @SKU,
Quantity = @Quantity,
Price = @Price,
Remarks = @Remarks

/*DROP PROC dbo.sproc_UpdateInvoiceDetail*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdatePurchase_Order]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdatePurchase_Order]
(
	@PO_No varchar(10),
	@Staff_ID varchar(10),
	@Vendor_ID varchar(10),
	@PO_Date datetime,
	@NetAmt money,
	@TaxAmt money,
	@GrossAmt money,
	@DeliveryDate datetime
)

AS
UPDATE [Purchase_Order] 
SET 
PO_No = @PO_No,
Staff_ID = @Staff_ID,
Vendor_ID = @Vendor_ID,
PO_Date = @PO_Date,
NetAmt = @NetAmt,
TaxAmt = @TaxAmt,
GrossAmt = @GrossAmt,
DeliveryDate = @DeliveryDate

WHERE
PO_No = @PO_No


/*DROP PROC dbo.sproc_UpdatePurchase_Order*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdatePurchase_Order_Item]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdatePurchase_Order_Item]
(
	@PO_ID varchar(10),
	@SKU varchar(10),
	@OrderQty smallint,
	@UnitPrice money,
	@TotalAmt money
)

AS
UPDATE [Purchase_Order_Items] 
SET 
PO_ID = @PO_ID,
SKU = @SKU,
OrderQty = @OrderQty,
UnitPrice = @UnitPrice,
TotalAmt = @TotalAmt

/*DROP PROC dbo.sproc_UpdatePurchase_Order_Item*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateStaff_statu]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateStaff_statu]
(
	@Status_ID int,
	@Description varchar(20)
)

AS
UPDATE [Staff_status] 
SET 
Status_ID = @Status_ID,
Description = @Description

WHERE
Status_ID = @Status_ID


/*DROP PROC dbo.sproc_UpdateStaff_statu*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateSupply]
(
	@Franchise_Id varchar(10),
	@SKU varchar(10),
	@Quantity varchar(10),
	@Cost money,
	@SuppliedDate datetime,
	@Staff_Id varchar(10),
	@Remarks varchar(100),
	@Supply_Id varchar(10)
)

AS
UPDATE [Supply] 
SET 
Franchise_Id = @Franchise_Id,
SKU = @SKU,
Quantity = @Quantity,
Cost = @Cost,
SuppliedDate = @SuppliedDate,
Staff_Id = @Staff_Id,
Remarks = @Remarks,
Supply_Id = @Supply_Id

WHERE
Supply_Id = @Supply_Id


/*DROP PROC dbo.sproc_UpdateSupply*/
GO
/****** Object:  StoredProcedure [dbo].[sproc_UpdateUser]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sproc_UpdateUser]
(
	
	@User_Type varchar(50),
	@Description varchar(50),
	@User_Id int,
	@Remarks varchar(100),
	@User_FName varchar(50),
	@User_LName varchar(50)
)

AS
UPDATE [Users] 
SET 

User_Type = @User_Type,
Description = @Description,
User_Id = @User_Id,
Remarks = @Remarks,
User_FName = @User_FName,
User_LName = @User_LName

WHERE
User_Id = @User_Id


/*DROP PROC dbo.sproc_UpdateUser*/
GO
/****** Object:  StoredProcedure [dbo].[updateFranchises]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateFranchises](@Franchise_Id nchar(20),@Franchise_Name nvarchar(50),@LandLine_Number int,@Staff_Id nchar(10),@Location nvarchar(50),@Logo image,
@Bank_Name nvarchar(50),@Accunt_Number nvarchar(50),@Remarks nvarchar(100),@Paytym_Number nvarchar(50),@Adhar_Number nvarchar(50))

AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Franchise_Id from Franchises where Franchise_Id=@Franchise_Id)
	begin
	UPDATE Franchises SET 
	                      LandLine_Number =ISNULL(@LandLine_Number,LandLine_Number) ,
						  Staff_Id =ISNULL(@Staff_Id,Staff_Id) ,
						  Franchise_Name =ISNULL(@Franchise_Name,Franchise_Name) ,
						   Location =ISNULL(@Location,Location) ,
						  Logo =ISNULL(@Logo,Logo),
						  Bank_Name=ISNULL(@Bank_Name,Bank_Name),
						  Accunt_Number=ISNULL(@Accunt_Number,Accunt_Number),
						  Remarks=ISNULL(@Remarks,Remarks),
						  Paytym_Number=ISNULL(@Paytym_Number,Paytym_Number),
						  Adhar_Number=ISNULL(@Adhar_Number,Adhar_Number)
 WHERE Franchise_Id=@Franchise_Id

	end
END

GO
/****** Object:  StoredProcedure [dbo].[updateInvoice]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateInvoice](@Invoice_Number nchar(10),@Amount money,@Staff_Id nchar(10),@Vendor_Id nchar(10),@Invoice_Date date,@Invoice_copy nvarchar(50),
								@Payment_Id int,@Remarks nvarchar(100))
	
AS
BEGIN
	
	SET NOCOUNT ON;
	IF EXISTS(select Invoice_Number from Invoice where Invoice_Number=@Invoice_Number)
	begin
	UPDATE Invoice
   SET Invoice_Number = ISNULL(@Invoice_Number,Invoice_Number)
      ,Amount = ISNULL(@Amount,Amount)
      ,Staff_Id = ISNULL(@Staff_Id,Staff_Id)
      ,Vendor_Id = ISNULL(@Vendor_Id,Vendor_Id)
      ,Invoice_Date = ISNULL(@Invoice_Date,Invoice_Date)
      ,Invoice_copy =ISNULL(@Invoice_copy,Invoice_copy)
      ,Payment_Id = ISNULL(@Payment_Id,Payment_Id)
	  ,Remarks=ISNULL(@Remarks,Remarks)
 WHERE Invoice_Number =@Invoice_Number
	end
	else 
	begin
	select 'Invoice not exists'
	end

  
END

GO
/****** Object:  StoredProcedure [dbo].[updateItems]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* to update the items*/
CREATE PROCEDURE [dbo].[updateItems](@SKU nchar(10),@Item_Name nvarchar(50),@Short_Description nvarchar(50),@Long_Description nvarchar(max),
							@Quantity nchar(10),@UnitOfMeasure_Id nchar(10),@Perishable int,@StockIn_Hand nvarchar(50),
							@Reoredr_Level nvarchar(50),@Item_Image image,@Cost_Price money,@Selling_Price money,@Bar_Code nvarchar(50),
							@MinimumBeforeOrder int,@Remarks nvarchar(100))
AS 
BEGIN
	
	SET NOCOUNT ON;
	if exists(select SKU from items where SKU=@SKU)
	begin
	UPDATE Items
   SET Item_Name=  ISNULL(@Item_Name,Item_Name)
      ,Short_Description = ISNULL(@Short_Description,Short_Description)
      ,Long_Description = ISNULL(@Long_Description ,Long_Description)
      ,Quantity = ISNULL(@Quantity ,Quantity)
      ,UnitOfMeasure_Id = ISNULL(@UnitOfMeasure_Id,UnitOfMeasure_Id)
      ,Perishable = ISNULL(@Perishable ,Perishable)
      ,StockIn_Hand =ISNULL(@StockIn_Hand ,StockIn_Hand) 
      ,Reoredr_Level =ISNULL(@Reoredr_Level ,Reoredr_Level) 
      ,Item_Image = ISNULL(@Item_Image ,Item_Image)
      ,Cost_Price = ISNULL(@Cost_Price ,Cost_Price)
      ,Selling_Price= ISNULL(@Selling_Price,Selling_Price)
      ,Bar_Code = ISNULL(@Bar_Code ,Bar_Code)
      ,MinimumBeforeOrder =ISNULL(@MinimumBeforeOrder ,MinimumBeforeOrder) 		
		,Remarks=ISNULL(@Remarks,Remarks) 
		
 WHERE  SKU=@SKU
 end
 else
 begin
 select 'Item Doesnot exists'
 end
END

GO
/****** Object:  StoredProcedure [dbo].[updatePayment]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatePayment](@Payment_Id nchar(10),@Payment_Method nvarchar(50),@Payment_Amount money,
@Description nvarchar(max),@Remarks nvarchar(100),@Payment_Date date)
AS
BEGIN
	
	SET NOCOUNT ON;

	if exists(select Payment_Id from Payment where Payment_Id=@Payment_Id)
	begin
	UPDATE Payment
   SET Payment_Method = ISNULL (@Payment_Method,Payment_Method)
      ,Payment_Amount =ISNULL (@Payment_Amount,Payment_Amount)
      ,Description =ISNULL (@Description,Description)
      ,Remarks =ISNULL (@Remarks,Remarks)
      ,Payment_Date =ISNULL (@Payment_Date,Payment_Date)
      
 WHERE Payment_Id=@Payment_Id
 end
 else
 begin
 select 'Payment Id doesnot exists'
 end

END

GO
/****** Object:  StoredProcedure [dbo].[updateStaff]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateStaff](@Staff_Id nchar(10),@Staff_Name nvarchar(50),@Mobile_No int,@Staff_Address nvarchar(max),
							@Status_ID int,@Remarks nvarchar(100),@Email nvarchar(100)) 
	
AS
BEGIN
	
	SET NOCOUNT ON;
	if exists(select Staff_Id from Staff where Staff_Id=@Staff_Id)
	begin
	UPDATE Staff SET Staff_Name = ISNULL(@Staff_Name,Staff_Name)
					,Mobile_No = ISNULL(@Mobile_No,Mobile_No)
					,Staff_Address = ISNULL(@Staff_Address,Staff_Address)
					 ,Staff_Id = ISNULL(@Staff_Id,Staff_Id)
					,Status_ID = ISNULL(@Status_ID,Status_ID)
					,Remarks = ISNULL(@Remarks,Remarks)
					,Email =ISNULL(@Email,Email)
 WHERE Staff_Id=@Staff_Id
 end

END

GO
/****** Object:  StoredProcedure [dbo].[updateSupply]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateSupply](@Supply_Id nchar(10),@Franchise_Id nchar(10),@SKU nchar(10),@Quantity nchar(10),@Cost money,@SuppliedDate date
								,@Staff_Id nchar(10),@Remarks nvarchar(100))
AS
BEGIN
	SET NOCOUNT ON;
	declare @streo nchar(10)
	declare @wert nchar(10)
	declare @wsaw nvarchar(10)
   UPDATE Supply

   SET Franchise_Id=ISNULL(@Franchise_Id,Franchise_Id)
      ,SKU = ISNULL(@SKU,SKU)
      ,Quantity = ISNULL(@Quantity,Quantity)
      ,Cost =ISNULL(@Cost,Cost)
      ,SuppliedDate = ISNULL(@SuppliedDate,SuppliedDate)
      ,Staff_Id =ISNULL(@Staff_Id,Staff_Id)
      ,Remarks =ISNULL(@Remarks,Remarks)
 WHERE Supply_Id=@Supply_Id
END

GO
/****** Object:  StoredProcedure [dbo].[updateuser]    Script Date: 17/02/2017 04:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateuser](@User_Type nvarchar(50),@Description nvarchar(50),@user_Id varchar(50),@Remarks  nvarchar(100),
@User_FName nvarchar(50),@User_LName nvarchar(50),@Email_ID varchar(200),@Password varchar(50),@Company_ID varchar(50)) 

AS
BEGIN

SET NOCOUNT ON;
if exists(select user_Id from users where user_id=@user_Id)
begin
UPDATE users SET User_Type = ISNULL(@User_Type,User_Type)
,Description = ISNULL(@Description,Description)
,Remarks = ISNULL(@Remarks,Remarks)
,User_FName = ISNULL(@User_FName,User_FName)
,User_LName = ISNULL(@User_LName,User_LName)
,Email_ID =ISNULL(@Email_ID,Email_ID)
,Password=ISNULL(@Password,Password)
,Company_ID=ISNULL(@Company_ID,Company_ID)
WHERE user_id=@user_id
end

END


GO
USE [master]
GO
ALTER DATABASE [Inventory] SET  READ_WRITE 
GO
