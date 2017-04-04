/****** Object:  Table [dbo].[company]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[company_name] [nvarchar](100) NULL,
	[email] [nvarchar](200) NULL,
	[Bank_Name] [nvarchar](50) NULL,
	[Bank_Branch] [nvarchar](50) NULL,
	[IFSC_No] [nvarchar](50) NULL,
	[TIN_No] [nvarchar](100) NULL,
	[PAN_No] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
	[Bank_Acc_Number] [bigint] NULL,
	[Paytym_Number] [bigint] NULL,
	[company_Id] [int] NOT NULL,
	[logo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Franchises]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Items]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Payment_Method_Types]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Purchase_Order]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Purchase_Order_Items]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Staff]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Staff_status]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Supply]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[TblJobPosition]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblJobPosition](
	[JobPositionId] [int] IDENTITY(1,1) NOT NULL,
	[JobPositionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblJobPosition] PRIMARY KEY CLUSTERED 
(
	[JobPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  Table [dbo].[Vendor]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendor](
	[Vendor_Id] [nchar](10) NOT NULL,
	[company_id] [int] NULL,
	[Contact_PersonFname] [nvarchar](50) NULL,
	[Contact_PersonLname] [nvarchar](50) NULL,
	[emailid] [nvarchar](50) NULL,
	[Adhar_Number] [nvarchar](50) NULL,
	[Job_position] [nvarchar](50) NULL,
	[Mobile_No] [bigint] NULL,
	[country] [nvarchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendor_address]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_address](
	[Addr_id] [nchar](10) NOT NULL,
	[bill_street] [nvarchar](200) NULL,
	[bill_city] [nvarchar](50) NULL,
	[bill_state] [nvarchar](50) NULL,
	[bill_postalcode] [nvarchar](50) NULL,
	[bill_country] [nvarchar](50) NULL,
	[ship_street] [nvarchar](200) NULL,
	[ship_city] [nvarchar](50) NULL,
	[ship_state] [nvarchar](50) NULL,
	[ship_postalcode] [nvarchar](50) NULL,
	[ship_country] [nvarchar](50) NULL,
	[company_Id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warehouse](
	[wh_id] [nchar](10) NOT NULL,
	[wh_name] [nvarchar](100) NULL,
	[wh_Shortname] [nvarchar](50) NULL,
	[Contact_person] [nvarchar](50) NULL,
	[Job_position] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [bigint] NULL,
	[Mobile] [bigint] NULL,
	[Note] [nvarchar](100) NULL,
	[bill_street] [nvarchar](200) NULL,
	[bill_city] [nvarchar](50) NULL,
	[bill_state] [nvarchar](50) NULL,
	[bill_postalcode] [nvarchar](50) NULL,
	[bill_country] [nvarchar](50) NULL,
	[ship_street] [nvarchar](200) NULL,
	[ship_city] [nvarchar](50) NULL,
	[ship_state] [nvarchar](50) NULL,
	[ship_postalcode] [nvarchar](50) NULL,
	[ship_country] [nvarchar](50) NULL,
 CONSTRAINT [PK__warehous__2183D5E216AC8ADB] PRIMARY KEY CLUSTERED 
(
	[wh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
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
/****** Object:  StoredProcedure [dbo].[checkcompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcompany](@Company_Name nvarchar(100))
AS
BEGIN
	select company_name from company where company_name=@Company_Name 
END

GO
/****** Object:  StoredProcedure [dbo].[companyProfilePic]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[companyProfilePic](@company_Id int,@logo varchar(max))
AS
BEGIN
	update company set logo=@logo where company_Id=@company_Id
END

GO
/****** Object:  StoredProcedure [dbo].[deleteRecord]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteRecord](@company_Id int)
AS
BEGIN
	
	delete from company where company_Id=@company_Id
	delete from Vendor where company_Id=@company_Id
	delete from Vendor_address where company_Id=@company_Id

	end

GO
/****** Object:  StoredProcedure [dbo].[deleteVendor]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteVendor](@Vendor_id nchar(10))
AS
BEGIN
	delete from Vendor where Vendor_Id=@Vendor_id
	
END

GO
/****** Object:  StoredProcedure [dbo].[getAllDetailsByCompany_Id]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getAllDetailsByCompany_Id](@company_Id int)
AS
BEGIN
declare @companycount int,@vendorcount int,@vendoraddresscount int
set @companycount = (select count(*) from company where company_Id=@company_Id)
set @vendorcount = (select count(*) from Vendor where company_id=@company_Id)
set @vendoraddresscount = (select count(*) from Vendor_address where company_Id=@company_Id)

if(@companycount > 0 and @vendorcount = 0 and @vendoraddresscount > 0)

select company.company_Id,company.company_name,company.email,company.Bank_Acc_Number,company.Bank_Branch,company.Bank_Name,company.IFSC_No,company.Note,company.logo,'' as Contact_PersonFname,'' as Contact_PersonLname,'' as emailid,'' as Job_position,0 as Mobile_No,'' as Adhar_Number,
''as Vendor_Id,'' as bill_city,'' as bill_country,'' as bill_street,'' as bill_state,'' as bill_postalcode,'' as ship_city,'' as ship_country,'' as ship_state,'' as ship_street,'' as ship_postalcode from company where company_Id=@company_Id

else if(@companycount > 0 and @vendorcount > 0 and @vendoraddresscount = 0)

select company.company_Id,company.company_name,company.email,company.Bank_Acc_Number,company.Bank_Branch,company.Bank_Name,company.IFSC_No,company.Note,company.logo,vendor.Contact_PersonFname,vendor.Contact_PersonLname,vendor.emailid,vendor.Job_position,vendor.Mobile_No,vendor.Adhar_Number,
''as Vendor_Id,'' as bill_city,'' as bill_country,'' as bill_street,'' as bill_state,'' as bill_postalcode,'' as ship_city,'' as ship_country,'' as ship_state,'' as ship_street,'' as ship_postalcode from company,vendor,vendor_address where company.company_Id=@company_Id and vendor.company_Id=@company_Id

else if(@companycount > 0 and @vendorcount > 0 and @vendoraddresscount > 0)

SELECT company.company_Id,company.company_name,company.email,company.Bank_Acc_Number,company.Bank_Branch,company.Bank_Name,company.IFSC_No,company.Note,company.logo,
	 Vendor.Contact_PersonFname,Vendor.Contact_PersonLname,Vendor.emailid,Vendor.Job_position,Vendor.Mobile_No,Vendor.Adhar_Number,Vendor.Vendor_Id,
	  Vendor_address.bill_city,Vendor_address.bill_country,Vendor_address.bill_street,Vendor_address.bill_state,Vendor_address.bill_postalcode,
	  Vendor_address.ship_city,Vendor_address.ship_country,Vendor_address.ship_state,Vendor_address.ship_street,Vendor_address.ship_postalcode FROM company,Vendor,Vendor_address where
	  company.company_Id=@company_Id and vendor.company_id=@company_Id and Vendor_address.company_Id=@company_Id
	   
END

GO
/****** Object:  StoredProcedure [dbo].[Getallwhdetailsbywhid]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Getallwhdetailsbywhid] @wh_id nchar(10)
as
begin

select wh_name,wh_Shortname,Contact_person,Job_position,Email,Phone,Mobile,
Note,bill_street,bill_city,bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_postalcode,ship_postalcode,ship_country from warehouse
 where wh_id=@wh_id
 end
GO
/****** Object:  StoredProcedure [dbo].[getcompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcompany]
as
begin
select company_Id,company_name,email,logo from company
end
GO
/****** Object:  StoredProcedure [dbo].[getContactByCompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getContactByCompany](@company_Id int)
AS
BEGIN

select Vendor_Id,Contact_PersonFname,Contact_PersonLname,emailid from Vendor where company_Id=@company_Id

END

GO
/****** Object:  StoredProcedure [dbo].[getContactBywarehouse]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[getContactBywarehouse](@wh_id nchar(10))
AS
BEGIN
select Contact_Person,Email,Mobile from warehouse where wh_id=@wh_id

END

GO
/****** Object:  StoredProcedure [dbo].[getFranchises]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getInvoice]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getItems]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getLastInsertedcompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getLastInsertedcompany](@company_Id int)
AS
BEGIN
	
	
	select company_name,email from company where company_Id=@company_Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[getLastInsertedwarehouse]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[getLastInsertedwarehouse](@wh_id nchar(10))
AS
BEGIN
	
	
	select wh_name,wh_Shortname from warehouse where wh_id=@wh_id
	
END

GO
/****** Object:  StoredProcedure [dbo].[getMaxCompanyid]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMaxCompanyid]
AS
BEGIN
	
    select max(company_Id) as company_id from company
	
END

GO
/****** Object:  StoredProcedure [dbo].[getMaxwhid]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[getMaxwhid]
AS
BEGIN
	
    select max(wh_id) as wh_id from warehouse
	
END

GO
/****** Object:  StoredProcedure [dbo].[getPayment]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getPayment_Method]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getStaff]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getSupply]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getuser]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getvendorcontact]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getvendorcontact](@Vendor_Id nchar(10))
AS
BEGIN
	select * from Vendor where Vendor_Id=@Vendor_Id
END

GO
/****** Object:  StoredProcedure [dbo].[getVendorId]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getVendorId]
AS
BEGIN
	
	SET NOCOUNT ON;
	select Max(vendor_Id) as vendor_Id from Vendor
END

GO
/****** Object:  StoredProcedure [dbo].[getwhcontactdtls]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getwhcontactdtls] @wh_id nchar(10)
as
begin

select Contact_person, Email,Phone,Mobile,Job_position from warehouse where wh_id=@wh_id

end

GO
/****** Object:  StoredProcedure [dbo].[insertCompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertCompany](@company_name nvarchar(100),@email nvarchar(200),@logo nvarchar(Max))
AS
BEGIN
	declare @company_Id int 
	declare @count int
	set @count=(select count(company_Id) from company)
	if(@count=0)
	set @company_Id=1000
	else
	set @company_Id=(select max(company_Id) from company)+1	   
	INSERT INTO company(company_Id,company_name,email,logo) VALUES(@company_Id,@company_name,@email,@logo)
	EXEC  insertVendor_address @company_Id,null,null,null,null,null,null,null,null,null,null
	
END





GO
/****** Object:  StoredProcedure [dbo].[insertFranchises]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertInvoice]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertInvoiceDetails]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertIteams]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertPayment]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertPayment_Method_Types]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertStaff]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertSupply]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertuser]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertvendor]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertvendor](@company_Id int,@Contact_PersonFname nvarchar(50),@Contact_PersonLname nvarchar(50),@Mobile_No bigint,
						@emailid nvarchar(50),@Adhar_Number nvarchar(50),@Job_position nvarchar(50),@image varchar(Max)) 

AS
BEGIN
	declare @Vendor_Id nchar(10)
	declare @count int
	set @count=(select count(Vendor_Id) from Vendor)
	if(@count=0)
  set @Vendor_Id=100
	else 
	 set @Vendor_Id=(select max(Vendor_Id) from Vendor)+1
	INSERT INTO Vendor(Vendor_Id,company_Id,Contact_PersonFname,Contact_PersonLname,Mobile_No,
                         emailid,Adhar_Number,Job_position,image)
     VALUES
           (@Vendor_Id,@company_Id,@Contact_PersonFname,@Contact_PersonLname,@Mobile_No,@emailid,@Adhar_Number,@Job_position,@image)
end

	

GO
/****** Object:  StoredProcedure [dbo].[insertVendor_address]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertVendor_address](@company_Id int,@bill_street nvarchar(200),@bill_city nvarchar(50),
@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),
@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),
@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN
declare @count int
	set @count= (select count(Addr_id) from Vendor_address)
	declare @addr_id nchar(10)
	if(@count=0)
  set @addr_id=1000
else
set @addr_id=(select max(Addr_id) from Vendor_address)+1
INSERT INTO Vendor_address
           (Addr_id,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country,company_Id)
     VALUES
           (@addr_id,@bill_street,@bill_city,
            @bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country,@company_Id)
end

GO
/****** Object:  StoredProcedure [dbo].[insertwarehouse]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertwarehouse](@wh_name nvarchar(100),@wh_Shortname nvarchar(50),@contact_person nvarchar(100),@Job_position nvarchar(50),@Phone bigint,@Mobile bigint,@Email nvarchar(50),
@Note nvarchar(100),@bill_street nvarchar(200),@bill_city nvarchar(50),
@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),
@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),
@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 

AS
BEGIN
	
	SET NOCOUNT ON;
	declare @wh_Id nchar(10)
	if not exists(select  wh_name from warehouse where wh_name=@wh_name )
	begin
	if(select count(wh_id) from warehouse)=0
  begin
  set  @wh_Id=100
	INSERT INTO warehouse(wh_id,wh_name,wh_Shortname,Contact_person,Job_position,Email,Phone,Mobile,Note,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country)
     VALUES
           (@wh_Id ,@wh_name,@wh_Shortname,@contact_person,@Job_position,@Email,@Phone,@Mobile,@Note,@bill_street,@bill_city,
            @bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country)
		   end

	else 
	begin
	 set @wh_Id=(select max(wh_Id) from warehouse)+1
	INSERT INTO warehouse(wh_id,wh_name,wh_Shortname,Contact_person,Job_position,Email,Phone,Mobile,Note,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country)
     VALUES
           (@wh_Id ,@wh_name,@wh_Shortname,@contact_person,@Job_position,@Email,@Phone,@Mobile,@Note,@bill_street,@bill_city,
            @bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country)
	end
end
else
begin
select 'Warehouse already exists'
end
	
END



GO
/****** Object:  StoredProcedure [dbo].[insertwarehouse1]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[insertwarehouse1](@wh_id nchar(10),@contact_person nvarchar(100),@Job_position nvarchar(50),@Phone bigint,@Mobile bigint,@Email nvarchar(50)) 

AS
BEGIN
	
	
	INSERT INTO warehouse(wh_id,Contact_person,Job_position,Email,Phone,Mobile)
     VALUES
           (@wh_Id,@contact_person,@Job_position,@Email,@Phone,@Mobile)
	end





GO
/****** Object:  StoredProcedure [dbo].[insertwarehousecontact]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[insertwarehousecontact](@wh_id nchar(10),@con_person nvarchar(50),@job_position nvarchar(50),@email nvarchar(100),@phone bigint,@mobile bigint) 

AS
BEGIN
	declare @con_id nchar(10)
	declare @count int
	set @count=(select count(con_id) from tblwarehousecontact)
	if(@count=0)
  set @con_id =100
	else 
	 set @con_id =(select max(@con_id ) from tblwarehousecontact )+1
	INSERT INTO tblwarehousecontact(con_id,wh_id,Contact_Person,Job_position,Email,Phone,Mobile)
     VALUES
           (@con_id,@wh_id,@con_person,@job_position,@email,@phone,@mobile)
end

	


GO
/****** Object:  StoredProcedure [dbo].[insertwh_address]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[insertwh_address](@wh_id nchar(10),@bill_street nvarchar(200),@bill_city nvarchar(50),
@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),
@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),
@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN

INSERT INTO warehouse
           (bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country)
     VALUES
           (@bill_street,@bill_city,
            @bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country) 

		
end

GO
/****** Object:  StoredProcedure [dbo].[insertwhdtls]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[insertwhdtls](@wh_name nvarchar(100),@Wh_sname nvarchar(50))
AS
BEGIN
	declare @wh_id nchar(10) 
	declare @count int
	set @count=(select count(wh_id) from warehouse)
	if(@count=0)
	set @wh_id=100
	else
	set @wh_id=(select max(wh_id) from warehouse)+1	   
	INSERT INTO warehouse(wh_id,wh_name,wh_Shortname) VALUES(@wh_id,@wh_name,@Wh_sname)
END





GO
/****** Object:  StoredProcedure [dbo].[sp_profileprogram]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_profileprogram]
as
begin

select (select count(*)from vendor) as v,
       (select count(*) from warehouse) as w,
	   (select count(*) from Items) as i 

end
GO
/****** Object:  StoredProcedure [dbo].[spdeletewhdtls]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spdeletewhdtls] @wh_ID nchar(10)
as
begin

delete from warehouse where wh_id=@wh_ID
end

GO
/****** Object:  StoredProcedure [dbo].[spgetwarehousecontact]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spgetwarehousecontact] @con_id nchar(10)
as
begin
select * from tblwarehousecontact where con_id=@con_id
end

GO
/****** Object:  StoredProcedure [dbo].[spGetwarehouseDtls]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetwarehouseDtls]
AS
BEGIN
	select * from warehouse
END

GO
/****** Object:  StoredProcedure [dbo].[spupdatewhcontact1]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spupdatewhcontact1] @wh_id nchar(10),@conperson nvarchar(50),@jobpositon nvarchar(50),@Email nvarchar(50),@Phone bigint,@Mobile bigint
as
begin
update TblwhContactPerson set Contact_Person=@conperson,Job_position=@jobpositon,Email=@Email,Phone=@Phone,Mobile=@Mobile where wh_id=@wh_id
end

GO
/****** Object:  StoredProcedure [dbo].[updateCompany]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateCompany](@company_Id int,@Bank_Acc_Number bigint,@Bank_Name nvarchar(50),@Bank_Branch nvarchar(50),@IFSC_No nvarchar(50))
AS
BEGIN
	UPDATE company  SET company_Id = @company_Id,
					Bank_Acc_Number = @Bank_Acc_Number,
					Bank_Name =@Bank_Name,
					Bank_Branch = @Bank_Branch,
					IFSC_No =@IFSC_No
					 WHERE company_Id =@company_Id
	 
END

GO
/****** Object:  StoredProcedure [dbo].[updatecompany1]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecompany1](@company_Id int,@company_name nvarchar(50),@Email nvarchar(100),@logo nvarchar(max))
AS
BEGIN
	update company SET  company_name=@company_name,Email=@Email,logo=@logo where company_Id = @company_Id 
END

GO
/****** Object:  StoredProcedure [dbo].[updateFranchises]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateInvoice]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateItems]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateNotes]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateNotes](@company_Id int,@Note nvarchar(max))
AS
BEGIN

	UPDATE company
   SET company_Id = @company_Id,
      Note=@Note
 WHERE company_Id =@company_Id
	
END

GO
/****** Object:  StoredProcedure [dbo].[updatePayment]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateStaff]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateSupply]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateuser]    Script Date: 04/04/2017 12:11:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatevendor]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatevendor](@Vendor_Id nchar(10),@Contact_PersonFname nvarchar(50),@Contact_PersonLname nvarchar(50),@Mobile_No bigint,
						@emailid nvarchar(50),@Adhar_Number nvarchar(50),@Job_position nvarchar(50),@image varchar(max))
	
AS
BEGIN
	update Vendor
	SET Contact_PersonFname = @Contact_PersonFname
      ,Contact_PersonLname = @Contact_PersonLname
      ,Mobile_No = @Mobile_No
      ,emailid =@emailid
      ,Adhar_Number = @Adhar_Number
	  ,Job_position=@Job_position
	  ,image=@image
 WHERE Vendor_Id =@Vendor_Id
END

GO
/****** Object:  StoredProcedure [dbo].[updateVendor_address]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateVendor_address](@company_Id int,@bill_street nvarchar(200),@bill_city nvarchar(50),@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN
UPDATE Vendor_address SET  bill_street = @bill_street,bill_city = @bill_city,bill_state = @bill_state,bill_postalcode = @bill_postalcode,bill_country = @bill_country,
      ship_street =@ship_street,ship_city = @ship_city,ship_state=@ship_state,ship_postalcode=@ship_postalcode,ship_country=@ship_country WHERE company_Id =@company_Id
end

GO
/****** Object:  StoredProcedure [dbo].[updatewarehouse]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updatewarehouse](@wh_id nchar(10),@wh_name nvarchar(50),@wh_sname nvarchar(50))
AS
BEGIN
	update warehouse SET  wh_name=@wh_name,wh_Shortname=@wh_sname where wh_id=@wh_id 
END

GO
/****** Object:  StoredProcedure [dbo].[updatewarehousecontact]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updatewarehousecontact](@con_id nchar(10),@con_person nvarchar(50),@job_position nvarchar(50),@email nvarchar(100),@phone bigint,@mobile bigint)
	
AS
BEGIN
	update tblwarehousecontact
	SET Contact_Person=@con_person,
	Job_Position=@job_position,
	Email=@email,
	phone=@phone,
	Mobile=@mobile
 WHERE con_id =@con_id
END


GO
/****** Object:  StoredProcedure [dbo].[updatewh_address]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updatewh_address](@wh_id nchar(10),@bill_street nvarchar(200),@bill_city nvarchar(50),
@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),
@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),
@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN
UPDATE warehouse
   SET bill_street = @bill_street,
      bill_city = @bill_city,
      bill_state = @bill_state,
      bill_postalcode = @bill_postalcode,
      bill_country = @bill_country,
      ship_street =@ship_street,
      ship_city = @ship_city,
	  ship_state=@ship_state,
	  ship_postalcode=@ship_postalcode,
	  ship_country=@ship_country
 WHERE wh_id =@wh_id
end

GO
/****** Object:  StoredProcedure [dbo].[updatewhcontact]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updatewhcontact](@wh_id nchar(10),@Contact_Person nvarchar(50),@Phone bigint,@Mobile_No bigint,
						@email nvarchar(50),@Job_position nvarchar(50))
	
AS
BEGIN
	update warehouse
	SET Contact_person=@Contact_Person,
	Phone=@Phone,
	Mobile=@Mobile_No,
	Email=@email,
	Job_position=@Job_position
	  
 WHERE wh_id=@wh_id
END

GO
/****** Object:  StoredProcedure [dbo].[updatewhnotes]    Script Date: 04/04/2017 12:11:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[updatewhnotes](@wh_id nchar(10),@Note nvarchar(max))
AS
BEGIN

	UPDATE warehouse
   SET wh_id = @wh_id,
      Note=@Note
 WHERE wh_id=@wh_id
	
END

GO
