/****** Object:  Table [dbo].[add_cart]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[add_cart](
	[product_name] [nvarchar](50) NULL,
	[cost_price] [nvarchar](50) NULL,
	[product_images] [nvarchar](max) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Measurement] [nvarchar](50) NULL,
	[total_price] [nvarchar](50) NULL,
	[customer_id] [nvarchar](50) NULL,
	[cart_id] [int] IDENTITY(100,1) NOT NULL,
	[product_id] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Availwhjobpositions]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Availwhjobpositions](
	[jp_id] [nchar](10) NOT NULL,
	[wh_id] [nchar](10) NULL,
	[job_position] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brands]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [int] NULL,
	[Brand_id] [varchar](50) NULL,
	[Brand] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[ID] [int] NULL,
	[category_id] [varchar](50) NULL,
	[category] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[color]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[color](
	[ID] [int] NULL,
	[color_id] [varchar](50) NULL,
	[color] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company]    Script Date: 23/08/2017 01:22:36 PM ******/
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
	[Paytym_Number] [bigint] NULL,
	[company_Id] [int] NOT NULL,
	[logo] [varchar](max) NULL,
	[Bank_Acc_Number] [nvarchar](50) NULL,
	[created_date] [datetime] NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cus_Job_position]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cus_Job_position](
	[cus_Job_PositionId] [int] NOT NULL,
	[cus_company_Id] [int] NULL,
	[cus_Job_position] [nchar](10) NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cus_Job_PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_Id] [nchar](10) NOT NULL,
	[Customer_contact_Fname] [nvarchar](50) NULL,
	[Customer_contact_Lname] [nvarchar](50) NULL,
	[Email_Id] [nvarchar](50) NULL,
	[Adhar_Number] [nvarchar](50) NULL,
	[cus_Job_position] [nvarchar](50) NULL,
	[cus_company_id] [int] NULL,
	[country] [nvarchar](50) NULL,
	[image] [varchar](max) NULL,
	[Mobile_No] [nvarchar](50) NULL,
	[created_date] [datetime] NULL,
	[status] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_address]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_address](
	[cusAddr_id] [nchar](10) NOT NULL,
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
	[cus_company_Id] [int] NULL,
	[status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Company](
	[cus_company_Id] [int] NOT NULL,
	[cus_company_name] [nvarchar](100) NULL,
	[cus_email] [nvarchar](200) NULL,
	[cus_Note] [nvarchar](max) NULL,
	[cus_logo] [varchar](max) NULL,
	[created_date] [datetime] NULL,
	[status] [nvarchar](50) NULL,
	[tax_reg_no] [nvarchar](50) NULL,
	[pan_no] [nvarchar](50) NULL,
	[tds_apply] [int] NULL,
	[tax_exemption] [int] NULL,
	[tax_files] [nvarchar](max) NULL,
	[new_POs] [nvarchar](50) NULL,
	[total_POs] [nvarchar](50) NULL,
	[due] [nvarchar](50) NULL,
	[overdue] [nvarchar](50) NULL,
	[Adhar_Number] [nvarchar](50) NULL,
	[GSTIN_Number] [nvarchar](50) NULL,
	[payment_due_date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cus_company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Franchises]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[generate_DeliveryNote]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generate_DeliveryNote](
	[Delivernote_no] [nvarchar](50) NULL,
	[vendor_name] [nvarchar](50) NULL,
	[customer_id] [nvarchar](50) NULL,
	[created_date] [nvarchar](50) NULL,
	[grand_total] [nvarchar](50) NULL,
	[comment] [nvarchar](max) NULL,
	[sub_total] [nvarchar](50) NULL,
	[vat] [nvarchar](50) NULL,
	[discount] [nvarchar](50) NULL,
	[Prchaseorder_no] [nvarchar](50) NULL,
	[deliverynote_status] [nvarchar](50) NULL,
	[id] [int] IDENTITY(101,1) NOT NULL,
	[product_id] [nvarchar](50) NULL,
	[product_name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[po_quantity] [nvarchar](50) NULL,
	[deliver_quantity] [nvarchar](50) NULL,
	[cost_price] [nvarchar](50) NULL,
	[total_price] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[generate_Invoice]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generate_Invoice](
	[id] [int] IDENTITY(101,1) NOT NULL,
	[Invoice_no] [nvarchar](50) NULL,
	[vendor_name] [nvarchar](50) NULL,
	[customer_id] [nvarchar](50) NULL,
	[company_name] [nvarchar](50) NULL,
	[grand_total] [nvarchar](50) NULL,
	[payment_terms] [nvarchar](50) NULL,
	[comment] [nvarchar](max) NULL,
	[sub_total] [nvarchar](50) NULL,
	[vat] [nvarchar](50) NULL,
	[discount] [nvarchar](50) NULL,
	[Prchaseorder_no] [nvarchar](50) NULL,
	[created_date] [nvarchar](50) NULL,
	[payment_date] [nvarchar](50) NULL,
	[invoice_status] [nvarchar](50) NULL,
	[cgst_rate] [nvarchar](50) NULL,
	[cgst_amount] [nvarchar](50) NULL,
	[sgst_rate] [nvarchar](50) NULL,
	[sgst_amount] [nvarchar](50) NULL,
	[igst_rate] [nvarchar](50) NULL,
	[igst_amount] [nvarchar](50) NULL,
	[product_id] [nvarchar](50) NULL,
	[product_name] [nvarchar](50) NULL,
	[cost_price] [nvarchar](50) NULL,
	[po_quantity] [nvarchar](50) NULL,
	[total_price] [nvarchar](50) NULL,
	[open_amount] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK__generate__3213E83FA7D986F0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[generate_po]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[generate_po](
	[customer_id] [nvarchar](50) NULL,
	[company_name] [nvarchar](50) NULL,
	[Prchaseorder_no] [nvarchar](50) NOT NULL,
	[shipping_terms] [nvarchar](max) NULL,
	[product_name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[quantity] [nvarchar](50) NOT NULL,
	[cost_price] [nvarchar](50) NULL,
	[remarks] [nvarchar](max) NULL,
	[sub_total] [nvarchar](50) NULL,
	[vat] [bigint] NULL,
	[discount] [bigint] NULL,
	[grand_total] [nvarchar](50) NULL,
	[total_price] [nvarchar](50) NULL,
	[created_date] [nvarchar](50) NULL,
	[shipping_date] [nvarchar](50) NULL,
	[product_id] [nvarchar](50) NULL,
	[invoice_status] [nchar](10) NULL,
	[deliverynote_status] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[item_shape]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item_shape](
	[ID] [int] NULL,
	[itemshape_id] [varchar](50) NULL,
	[itemshape] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[Job_position]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_position](
	[Job_PositionId] [int] NOT NULL,
	[company_Id] [int] NULL,
	[Job_position] [nchar](10) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Job_position] PRIMARY KEY CLUSTERED 
(
	[Job_PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Models]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Models](
	[ID] [int] NULL,
	[Model_id] [varchar](50) NULL,
	[Brand_id] [varchar](50) NULL,
	[Model] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[cheque_date] [nvarchar](50) NULL,
	[cheque_bankname] [nvarchar](50) NULL,
	[cheque_num] [nvarchar](50) NULL,
	[creditORdebitcard_date] [nvarchar](50) NULL,
	[card_holder_name] [nvarchar](50) NULL,
	[card_last4digits] [nvarchar](50) NULL,
	[bank_taransfer_date] [nvarchar](50) NULL,
	[bank_transfer_name] [nvarchar](50) NULL,
	[bank_transaction_id] [nvarchar](50) NULL,
	[cash_date] [nvarchar](50) NULL,
	[cash_card_holdername] [nvarchar](50) NULL,
	[wallet_date] [nvarchar](50) NULL,
	[wallet_number] [nvarchar](50) NULL,
	[invoiced_amount] [nvarchar](50) NULL,
	[received_amount] [nvarchar](50) NULL,
	[opening_balance] [nvarchar](50) NULL,
	[current_balance] [nvarchar](50) NULL,
	[Payment_Id] [int] IDENTITY(1001,1) NOT NULL,
	[bank_transfer_IFSCcode] [nvarchar](50) NULL,
	[bank_transfer_branchname] [nvarchar](50) NULL,
	[Customer_comapnyId] [nvarchar](50) NULL,
	[Customer_company_name] [nvarchar](50) NULL,
	[payments_date] [nvarchar](50) NULL,
	[remarks] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[product_id] [varchar](50) NULL,
	[product_name] [varchar](50) NULL,
	[Batch_number] [varchar](max) NULL,
	[brand] [varchar](100) NULL,
	[model] [varchar](100) NULL,
	[category] [varchar](50) NULL,
	[sub_category] [varchar](50) NULL,
	[cost_price] [varchar](50) NULL,
	[selling_price] [varchar](50) NULL,
	[tax] [varchar](50) NULL,
	[discount] [varchar](50) NULL,
	[shipping_price] [varchar](50) NULL,
	[total_price] [varchar](50) NULL,
	[Measurement] [varchar](50) NULL,
	[weight] [varchar](50) NULL,
	[size] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[item_shape] [varchar](50) NULL,
	[product_consumable] [varchar](50) NULL,
	[product_type] [varchar](50) NULL,
	[product_perishability] [varchar](50) NULL,
	[product_expirydate] [varchar](50) NULL,
	[product_description] [varchar](max) NULL,
	[product_tags] [varchar](max) NULL,
	[product_images] [varchar](max) NULL,
	[created_date] [varchar](200) NULL,
	[status] [varchar](200) NULL,
	[SGST] [varchar](50) NULL,
	[CGST] [varchar](50) NULL,
	[IGST] [varchar](50) NULL,
	[HSNCode] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product_log]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product_log](
	[id] [int] NOT NULL,
	[mainproduct_id] [int] NOT NULL,
	[product_id] [varchar](50) NULL,
	[product_name] [varchar](50) NULL,
	[Batch_number] [varchar](max) NULL,
	[brand] [varchar](100) NULL,
	[model] [varchar](100) NULL,
	[category] [varchar](50) NULL,
	[sub_category] [varchar](50) NULL,
	[cost_price] [varchar](50) NULL,
	[selling_price] [varchar](50) NULL,
	[tax] [varchar](50) NULL,
	[discount] [varchar](50) NULL,
	[shipping_price] [varchar](50) NULL,
	[total_price] [varchar](50) NULL,
	[Measurement] [varchar](50) NULL,
	[weight] [varchar](50) NULL,
	[size] [varchar](50) NULL,
	[color] [varchar](50) NULL,
	[item_shape] [varchar](50) NULL,
	[product_consumable] [varchar](50) NULL,
	[product_type] [varchar](50) NULL,
	[product_perishability] [varchar](50) NULL,
	[product_expirydate] [varchar](50) NULL,
	[product_description] [varchar](max) NULL,
	[product_tags] [varchar](max) NULL,
	[product_images] [varchar](max) NULL,
	[created_date] [varchar](200) NULL,
	[updated_date] [varchar](200) NULL,
	[status] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase_Order]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[Purchase_Order_Items]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[quantity_in_hand]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quantity_in_hand](
	[id] [int] NOT NULL,
	[product_id] [varchar](50) NULL,
	[area] [varchar](100) NULL,
	[Qty] [int] NULL,
	[Reorder_level] [varchar](100) NULL,
	[Total] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[quantity_in_hand_log]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quantity_in_hand_log](
	[id] [int] NOT NULL,
	[quantity_in_hand_id] [int] NOT NULL,
	[product_id] [varchar](50) NULL,
	[area] [varchar](100) NULL,
	[Qty] [varchar](100) NULL,
	[Reorder_level] [varchar](100) NULL,
	[Total] [varchar](100) NULL,
	[stock_updated_date] [varchar](200) NULL,
	[vendor_id] [varchar](100) NULL,
	[vendor] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[size]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[size](
	[ID] [int] NULL,
	[size_id] [varchar](50) NULL,
	[size] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[Staff_status]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[subcategory]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subcategory](
	[ID] [int] NULL,
	[subcategory_id] [varchar](50) NULL,
	[category_id] [varchar](50) NULL,
	[sub_category] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[tblwhcontactdtls]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblwhcontactdtls](
	[con_id] [nchar](10) NOT NULL,
	[wh_id] [nchar](10) NULL,
	[contact_person] [nvarchar](50) NULL,
	[job_position] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  Table [dbo].[Vendor]    Script Date: 23/08/2017 01:22:36 PM ******/
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
	[country] [nvarchar](50) NULL,
	[image] [varchar](max) NULL,
	[Mobile_No] [nvarchar](50) NULL,
	[created_date] [datetime] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendor_address]    Script Date: 23/08/2017 01:22:36 PM ******/
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
	[company_Id] [int] NULL,
	[status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[warehouse]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[Wh_Image] [varchar](max) NULL,
	[galimage1] [varchar](max) NULL,
	[galimage2] [varchar](max) NULL,
	[galimage3] [varchar](max) NULL,
	[galimage4] [varchar](max) NULL,
 CONSTRAINT [PK__warehous__2183D5E216AC8ADB] PRIMARY KEY CLUSTERED 
(
	[wh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[weight]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[weight](
	[ID] [int] NULL,
	[weight_id] [varchar](50) NULL,
	[weight] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Franchises]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendor] ([Vendor_Id])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([Invoice_Number])
REFERENCES [dbo].[Invoice] ([Invoice_Number])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([Invoice_Number])
REFERENCES [dbo].[Invoice] ([Invoice_Number])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([Invoice_Number])
REFERENCES [dbo].[Invoice] ([Invoice_Number])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([Invoice_Number])
REFERENCES [dbo].[Invoice] ([Invoice_Number])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([UnitOfMeasure_Id])
REFERENCES [dbo].[UnitOfMeasure] ([UnitOfMeasure_Id])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([UnitOfMeasure_Id])
REFERENCES [dbo].[UnitOfMeasure] ([UnitOfMeasure_Id])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([UnitOfMeasure_Id])
REFERENCES [dbo].[UnitOfMeasure] ([UnitOfMeasure_Id])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([UnitOfMeasure_Id])
REFERENCES [dbo].[UnitOfMeasure] ([UnitOfMeasure_Id])
GO
ALTER TABLE [dbo].[Job_position]  WITH CHECK ADD FOREIGN KEY([company_Id])
REFERENCES [dbo].[company] ([company_Id])
GO
ALTER TABLE [dbo].[Purchase_Order]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Purchase_Order]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Purchase_Order]  WITH CHECK ADD FOREIGN KEY([Staff_ID])
REFERENCES [dbo].[Staff] ([Staff_Id])
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
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([PO_ID])
REFERENCES [dbo].[Purchase_Order] ([PO_No])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([PO_ID])
REFERENCES [dbo].[Purchase_Order] ([PO_No])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([PO_ID])
REFERENCES [dbo].[Purchase_Order] ([PO_No])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Purchase_Order_Items]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Staff_status] ([Status_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Staff_status] ([Status_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Staff_status] ([Status_ID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Staff_status] ([Status_ID])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Franchise_Id])
REFERENCES [dbo].[Franchises] ([Franchise_Id])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Franchise_Id])
REFERENCES [dbo].[Franchises] ([Franchise_Id])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Franchise_Id])
REFERENCES [dbo].[Franchises] ([Franchise_Id])
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
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([SKU])
REFERENCES [dbo].[Items] ([SKU])
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
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Staff_Id])
GO
/****** Object:  StoredProcedure [dbo].[AddQuantityInHand]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddQuantityInHand](@product_id varchar(100),@area varchar(100),@Qty varchar(100),@Reorder varchar(100),@Total varchar(100))
as begin
declare @count int,@id int
set @count = (select count(*) from quantity_in_hand)
if(@count = 0)
set @id=1
else
set @id =(select MAX(id) from quantity_in_hand)+1
insert into quantity_in_hand(id,product_id,area,Qty,Reorder_level,Total) values(@id,@product_id,@area,@Qty,@Reorder,@Total)
end


GO
/****** Object:  StoredProcedure [dbo].[addtocart]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[addtocart](@customer_id nvarchar(50),@product_id nvarchar(50),@product_name nvarchar(50),@cost_price nvarchar(50),@Quantity nvarchar(50),@Measurement nvarchar(50),@total_price nvarchar(50),@product_images nvarchar(50))
AS
BEGIN
	INSERT INTO add_cart(customer_id,product_id,product_name,cost_price,Quantity,Measurement,total_price,product_images)
     VALUES(@customer_id,@product_id,@product_name,@cost_price,@Quantity,@Measurement,@total_price,@product_images)

END



GO
/****** Object:  StoredProcedure [dbo].[addtocartbycustomerid]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[addtocartbycustomerid](@customer_id nvarchar(50))
AS
BEGIN
	--select * from add_cart where customer_id=@customer_id
	select *,(select top 1 Total from quantity_in_hand where product_id=add_cart.product_id) as warehouseqty from add_cart where customer_id=@customer_id
END





GO
/****** Object:  StoredProcedure [dbo].[availableInvoicedPos]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[availableInvoicedPos](@customer_id nvarchar(50)) 
AS
BEGIN
	CREATE TABLE #TempTable(
ID int primary key not null identity(1,1),
customer_id nvarchar(50),company_name nvarchar(50),Invoice_no nvarchar(50),payment_date nvarchar(50),total_price nvarchar(50),created_date nvarchar(50),totalQty int,invoice_status nvarchar(50),open_amount nvarchar(50))

INSERT INTO #TempTable (customer_id,company_name,Invoice_no,payment_date,created_date,invoice_status,open_amount) 
SELECT distinct customer_id,company_name,Invoice_no,payment_date,created_date,invoice_status,open_amount
FROM generate_Invoice where customer_id=@customer_id and invoice_status=1

declare @totalQty nchar(10)
declare @totalprice float
DECLARE @x  INT
SET @x = 1
declare @num int
set @num=(select count(distinct Invoice_no) from generate_Invoice where customer_id=@customer_id and invoice_status=1)
while @x <= @num
begin
declare @tempcode char(10)
set @tempcode= (select Invoice_no from #temptable where ID=@x)

BEGIN
 set @totalQty=(select sum(cast(po_quantity as int))as totalqty from generate_Invoice where Invoice_no=@tempcode)
 set @totalprice=(select sum(cast(total_price as int))as totalprice from generate_Invoice where Invoice_no=@tempcode)
 print @tempcode
update #temptable set totalQty=@totalQty,total_price=@totalprice where Invoice_no=@tempcode
SET  @x = @x + 1 
END
end
select distinct customer_id,company_name,Invoice_no,payment_date,total_price,created_date,totalQty,invoice_status,open_amount  from  #temptable where customer_id=@customer_id order by payment_date asc

END


GO
/****** Object:  StoredProcedure [dbo].[availableInvoices]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[availableInvoices](@customer_id nvarchar(50))
AS
BEGIN
	select distinct Invoice_no,company_name,grand_total,payment_date,created_date from generate_Invoice where customer_id=@customer_id
END


--select distinct Invoice_no,company_name,Prchaseorder_no,grand_total,payment_date from generate_Invoice where customer_id=1001 //,Prchaseorder_no removed frm qury


GO
/****** Object:  StoredProcedure [dbo].[availablePosforDeliv]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[availablePosforDeliv](@customer_id nvarchar(50))
AS
BEGIN
	CREATE TABLE #TempTable(
ID int primary key not null identity(1,1),
customer_id nvarchar(50),company_name nvarchar(50),Prchaseorder_no nvarchar(50),total_price nvarchar(50),created_date nvarchar(50),totalQty int,deliverynote_status nvarchar(50))

INSERT INTO #TempTable (customer_id,company_name,Prchaseorder_no,created_date,deliverynote_status) 
SELECT distinct customer_id,company_name,Prchaseorder_no,created_date,deliverynote_status
FROM generate_po where customer_id=@customer_id and deliverynote_status=0

declare @totalQty nchar(10)
declare @totalprice float
DECLARE @x  INT
SET @x = 1
declare @num int
set @num=(select count(distinct Prchaseorder_no) from generate_po where customer_id=@customer_id and deliverynote_status=0)
while @x <= @num
begin
declare @tempcode char(10)
set @tempcode= (select Prchaseorder_no from #temptable where ID=@x)

BEGIN
 set @totalQty=(select sum(cast(quantity as int))as totalqty from generate_po where Prchaseorder_no=@tempcode and deliverynote_status=0)
 set @totalprice=(select sum(cast(total_price as float))as totalprice from generate_po where Prchaseorder_no=@tempcode and deliverynote_status=0)
 print @tempcode
update #temptable set totalQty=@totalQty,total_price=@totalprice where Prchaseorder_no=@tempcode
SET  @x = @x + 1 
END
end
select distinct customer_id,company_name,Prchaseorder_no,total_price,created_date,totalQty,deliverynote_status  from  #temptable where customer_id=@customer_id

END




GO
/****** Object:  StoredProcedure [dbo].[availablePosforInvoice]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[availablePosforInvoice](@customer_id nvarchar(50)) 
AS
BEGIN
	CREATE TABLE #TempTable(
ID int primary key not null identity(1,1),
customer_id nvarchar(50),company_name nvarchar(50),Prchaseorder_no nvarchar(50),total_price nvarchar(50),created_date nvarchar(50),totalQty int,invoice_status nvarchar(50))

INSERT INTO #TempTable (customer_id,company_name,Prchaseorder_no,created_date,invoice_status) 
SELECT distinct customer_id,company_name,Prchaseorder_no,created_date,invoice_status
FROM generate_po where customer_id=@customer_id and invoice_status=0

declare @totalQty nchar(10)
declare @totalprice float
DECLARE @x  INT
SET @x = 1
declare @num int
set @num=(select count(distinct Prchaseorder_no) from generate_po where customer_id=@customer_id and invoice_status=0)
while @x <= @num
begin
declare @tempcode char(10)
set @tempcode= (select Prchaseorder_no from #temptable where ID=@x)

BEGIN
 set @totalQty=(select sum(cast(quantity as int))as totalqty from generate_po where Prchaseorder_no=@tempcode and invoice_status=0)
 set @totalprice=(select sum(cast(total_price as float))as totalprice from generate_po where Prchaseorder_no=@tempcode and invoice_status=0)
 print @tempcode
update #temptable set totalQty=@totalQty,total_price=@totalprice where Prchaseorder_no=@tempcode
SET  @x = @x + 1 
END
end
select distinct customer_id,company_name,Prchaseorder_no,total_price,created_date,totalQty,invoice_status  from  #temptable where customer_id=@customer_id

END



GO
/****** Object:  StoredProcedure [dbo].[basedoncustomeridcartdata]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[basedoncustomeridcartdata](@customer_id nvarchar(50))
AS
BEGIN
	select * from add_cart where customer_id=@customer_id
END



GO
/****** Object:  StoredProcedure [dbo].[basedoncustomeridpodata]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[basedoncustomeridpodata](@Prchaseorder_no nvarchar(50))
AS
BEGIN
	select distinct  Prchaseorder_no,shipping_terms,remarks,sub_total,grand_total,created_date,shipping_date from generate_po where Prchaseorder_no=@Prchaseorder_no
END




GO
/****** Object:  StoredProcedure [dbo].[catandsubcat]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[catandsubcat]
 as begin
select c.category,s.sub_category ,--subcat=STUFF((SELECT DISTINCT ', ' + sub_category FROM subcategory t2 WHERE t2.category_id = c.category_id FOR XML PATH('')),1,1,''),
(select COUNT(*) FROM (Select  distinct product_name,brand, STUFF((SELECT ',' + (Measurement +weight+' - '+'₹'+total_price+'@'+product_id) FROM product
WHERE (product_name=Result.product_name and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST
From product AS Result  WHERE sub_category=s.sub_category and product_name!='' and total_price!='' and  Measurement!='' and weight!='')qty) as availableqty
 from category c join subcategory s on c.category_id=s.category_id 
 end



--  select distinct c.category, (STUFF(( SELECT ', ' + s.sub_category from category c join subcategory s on c.category_id=s.category_id where c.category='MEAT' FOR XML PATH('') ), 1, 2, '') ) AS subcat,
-- (SELECT (STUFF(( SELECT ','+ cast((select COUNT(*) FROM (Select  distinct product_name,brand, STUFF((SELECT ',' + (Measurement +weight+' - '+'₹'+total_price+'@'+product_id) 
-- FROM product WHERE (product_name = Result.product_name and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST
--From product as Result )a1)as varchar(50)) from category c join subcategory s on c.category_id=s.category_id where c.category='MEAT' FOR XML PATH('') ), 1, 1, '') )) as availableqty
-- from category c join subcategory s on c.category_id=s.category_id where c.category='MEAT'


GO
/****** Object:  StoredProcedure [dbo].[checkcartdata]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkcartdata](@product_id nvarchar(50),@cid nvarchar(50))
AS
BEGIN
	--select * from add_cart where product_name=@product_name and Measurement=@Measurement and customer_id=@cid
	select * from add_cart where product_id=@product_id and customer_id=@cid
END



GO
/****** Object:  StoredProcedure [dbo].[checkcompany]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[checkCustomer_Company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[checkCustomer_Company](@cus_company_name nvarchar(100))
AS
BEGIN
	select cus_company_name from Customer_Company where cus_company_name=@cus_company_name 
END


GO
/****** Object:  StoredProcedure [dbo].[checkDeliverynotenum]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkDeliverynotenum](@Delivernote_no nvarchar(50))
AS
BEGIN
	select * from generate_DeliveryNote where Delivernote_no=@Delivernote_no
END



GO
/****** Object:  StoredProcedure [dbo].[checkforcustomerinPayments]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkforcustomerinPayments](@customer_id nvarchar(50))
AS
BEGIN
	select * from Payments where Customer_comapnyId=@customer_id
END



GO
/****** Object:  StoredProcedure [dbo].[checkInvoicenum]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkInvoicenum](@Invoice_no nvarchar(50))
AS
BEGIN
select * from generate_Invoice where Invoice_no=@Invoice_no
END


--select * from generate_Invoice where Invoice_no=5685858

GO
/****** Object:  StoredProcedure [dbo].[checkponum]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[checkponum](@Prchaseorder_no nvarchar(50))
AS
BEGIN
	select * from generate_po where Prchaseorder_no=@Prchaseorder_no
END



GO
/****** Object:  StoredProcedure [dbo].[companyProfilePic]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[cus_CompanyProfilePic]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[cus_CompanyProfilePic](@cus_company_Id int,@cus_logo varchar(max))
AS
BEGIN
	update Customer_Company set cus_logo=@cus_logo where cus_company_Id=@cus_company_Id
END


GO
/****** Object:  StoredProcedure [dbo].[customerforPO]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[customerforPO](@cus_id nchar(10))
AS
BEGIN
	SELECT Customer_Company.cus_company_name, Customer_Company.cus_email, Customer_Company.cus_logo,Customer_address.bill_street, Customer_address.bill_city, Customer_address.bill_state, 
           Customer_address.bill_postalcode,Customer_address.ship_street, Customer_address.bill_country, Customer_address.ship_city, Customer_address.ship_state, Customer_address.ship_postalcode, 
           Customer_address.ship_country
FROM Customer_address INNER JOIN Customer_Company ON  Customer_Company.cus_company_Id= Customer_address.cus_company_Id  where Customer_Company.cus_company_Id=@cus_id
END



GO
/****** Object:  StoredProcedure [dbo].[deletecontactperson]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletecontactperson] @con_id nchar(10)
as
begin
delete from tblwhcontactdtls where con_id=@con_id
end



GO
/****** Object:  StoredProcedure [dbo].[deletecuscompRecord]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deletecuscompRecord](@cus_company_Id int,@status nvarchar(50))
AS
BEGIN

update Customer set status=@status where cus_company_Id=@cus_company_Id
	update Customer_address set status=@status where cus_company_Id=@cus_company_Id
	update cus_Job_position set status=@status where cus_company_Id=@cus_company_Id
	update Customer_Company set status=@status where cus_company_Id=@cus_company_Id
	--delete from Customer where cus_company_Id=@cus_company_Id
	--delete from Customer_address where cus_company_Id=@cus_company_Id
	--delete from cus_Job_position where cus_company_Id=@cus_company_Id
	--delete from Customer_Company where cus_company_Id=@cus_company_Id
end


GO
/****** Object:  StoredProcedure [dbo].[deleteCustomer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteCustomer](@Customer_Id nchar(10),@status nvarchar(50))
AS
BEGIN
	--delete from Customer where Customer_Id=@Customer_Id
	update Customer set status=@status where Customer_Id=@Customer_Id
END


GO
/****** Object:  StoredProcedure [dbo].[deletefromcart]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletefromcart](@cart_id int)
AS
BEGIN
	delete from add_cart where cart_id=@cart_id
END



GO
/****** Object:  StoredProcedure [dbo].[deleteRecord]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteRecord](@company_Id int,@status nvarchar(50))
AS
BEGIN
	
	update Vendor set status=@status where company_Id=@company_Id
	update Vendor_address set status=@status where company_Id=@company_Id
	update Job_position set status=@status where company_Id=@company_Id
	update company set status=@status where company_Id=@company_Id
	--delete from Vendor where company_Id=@company_Id
	--delete from Vendor_address where company_Id=@company_Id
	--delete from Job_position where company_Id=@company_Id
	--delete from company where company_Id=@company_Id
		end




GO
/****** Object:  StoredProcedure [dbo].[deleteVendor]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteVendor](@Vendor_id nchar(10),@status nvarchar(50))
AS
BEGIN
update Vendor set status=@status where Vendor_Id=@Vendor_id

	--delete from Vendor where Vendor_Id=@Vendor_id
	
END




GO
/****** Object:  StoredProcedure [dbo].[deletewhjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[deletewhjobposition] @jp_id nchar(10)
as
begin
delete from [dbo].[Availwhjobpositions] where jp_id=@jp_id
end


GO
/****** Object:  StoredProcedure [dbo].[emptycart]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[emptycart](@cid nvarchar(50))
AS
BEGIN
	delete from add_cart where customer_id=@cid
	
END



GO
/****** Object:  StoredProcedure [dbo].[forpaymentponum]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[forpaymentponum](@Invoice_no nvarchar(50))
AS
BEGIN
	select distinct product_id,payment_date,sub_total,open_amount,po_quantity from generate_Invoice where Invoice_no=@Invoice_no
ENd

--select distinct product_id,payment_date,sub_total,open_amount,po_quantity from generate_Invoice where Invoice_no='INV1234'
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllCategories]
AS
BEGIN
	select * from category
END



GO
/****** Object:  StoredProcedure [dbo].[getallcusjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getallcusjobposition]
AS
BEGIN
	select cus_Job_position from cus_Job_position
END


GO
/****** Object:  StoredProcedure [dbo].[getAllDetailsByCompany_Id]    Script Date: 23/08/2017 01:22:36 PM ******/
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
''as Vendor_Id,Vendor_address.bill_city,Vendor_address.bill_country,Vendor_address.bill_street,Vendor_address.bill_state,Vendor_address.bill_postalcode,Vendor_address.ship_city,Vendor_address.ship_country,Vendor_address.ship_state,Vendor_address.ship_street,Vendor_address.ship_postalcode from company,Vendor_address where company.company_Id=@company_Id and Vendor_address.company_Id=@company_Id
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
/****** Object:  StoredProcedure [dbo].[getAllDetailsBycus_company_Id]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllDetailsBycus_company_Id](@cus_company_Id int)
AS
BEGIN
declare @cusCustomer_Companycount int,@customercount int,@customeraddresscount int
set @cusCustomer_Companycount = (select count(*) from Customer_Company where cus_company_Id=@cus_company_Id)
set @customercount = (select count(*) from Customer where cus_company_Id=@cus_company_Id)
set @customeraddresscount = (select count(*) from Customer_address where cus_company_Id=@cus_company_Id)

if(@cusCustomer_Companycount > 0 and @customercount = 0 and @customeraddresscount > 0)

select Customer_Company.cus_company_Id,Customer_Company.cus_company_name,Customer_Company.cus_email,Customer_Company.cus_Note,Customer_Company.cus_logo,Customer_Company.Adhar_Number,Customer_Company.GSTIN_Number,Customer_Company.tax_reg_no,Customer_Company.pan_no,Customer_Company.tds_apply,Customer_Company.tax_exemption,Customer_Company.tax_files,'' as Customer_contact_Fname,'' as Customer_contact_Lname,'' as Email_Id,'' as cus_Job_position,0 as Mobile_No,'' as Adhar_Number,'' as country,'' as image,
''as Customer_Id,Customer_address.bill_city,Customer_address.bill_country,Customer_address.bill_street,Customer_address.bill_state,Customer_address.bill_postalcode,Customer_address.ship_city,Customer_address.ship_country,Customer_address.ship_state,Customer_address.ship_street,Customer_address.ship_postalcode from Customer_Company,Customer_address where Customer_Company.cus_company_Id=@cus_company_Id and Customer_address.cus_company_Id=@cus_company_Id
else if(@cusCustomer_Companycount > 0 and @customercount > 0 and @customeraddresscount = 0)

select Customer_Company.cus_company_Id,Customer_Company.cus_company_name,Customer_Company.cus_email,Customer_Company.cus_Note,Customer_Company.cus_logo,Customer_Company.Adhar_Number,Customer_Company.GSTIN_Number,Customer_Company.tax_reg_no,Customer_Company.pan_no,Customer_Company.tds_apply,Customer_Company.tax_exemption,Customer_Company.tax_files,Customer.Customer_contact_Fname,Customer.Customer_contact_Lname,Customer.Email_Id,Customer.cus_Job_position,Customer.Mobile_No,Customer.Adhar_Number,Customer.country,Customer.image,
''as Customer_Id,'' as bill_city,'' as bill_country,'' as bill_street,'' as bill_state,'' as bill_postalcode,'' as ship_city,'' as ship_country,'' as ship_state,'' as ship_street,'' as ship_postalcode from Customer_Company,Customer,Customer_address where Customer_Company.cus_company_Id=@cus_company_Id and Customer.cus_company_Id=@cus_company_Id

else if(@cusCustomer_Companycount > 0 and @customercount > 0 and @customeraddresscount > 0)

SELECT Customer_Company.cus_company_Id,Customer_Company.cus_company_name,Customer_Company.cus_email,Customer_Company.cus_Note,Customer_Company.cus_logo,Customer_Company.Adhar_Number,Customer_Company.GSTIN_Number,Customer_Company.tax_reg_no,Customer_Company.pan_no,Customer_Company.tds_apply,Customer_Company.tax_exemption,Customer_Company.tax_files,
	 Customer.Customer_contact_Fname,Customer.Customer_contact_Fname,Customer.Email_Id,Customer.cus_Job_position,Customer.Mobile_No,Customer.Adhar_Number,Customer.country,Customer.image,Customer.Customer_Id,
	  Customer_address.bill_city,Customer_address.bill_country,Customer_address.bill_street,Customer_address.bill_state,Customer_address.bill_postalcode,
	  Customer_address.ship_city,Customer_address.ship_country,Customer_address.ship_state,Customer_address.ship_street,Customer_address.ship_postalcode FROM Customer_Company,Customer,Customer_address where
	  Customer_Company.cus_company_Id=@cus_company_Id and Customer.cus_company_Id=@cus_company_Id and Customer_address.cus_company_Id=@cus_company_Id
	   
END


GO
/****** Object:  StoredProcedure [dbo].[getalljobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getalljobposition]
AS
BEGIN
	select Job_position from Job_position
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllProducts]
as begin
--select * from product
select distinct(product.product_id), product.*,quantity_in_hand.Total from product join quantity_in_hand on product.product_id = quantity_in_hand.product_id
end


GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCategories]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllSubCategories](@category_id nvarchar(50))
AS
BEGIN
	--select * from subcategory where category_id=@category_id
	 select *,
 (select COUNT(*) FROM (Select  distinct product_name,brand, STUFF((SELECT ',' + (Measurement +weight+' - '+'₹'+total_price+'@'+product_id) FROM product
WHERE (product_name=Result.product_name and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST
From product AS Result  WHERE sub_category=s.sub_category and product_name!='' and total_price!='' and  Measurement!='' and weight!='')qty) as availableqty
 from category c join subcategory s on c.category_id=s.category_id where c.category_id=@category_id
END



GO
/****** Object:  StoredProcedure [dbo].[Getallwhdetailsbywhid]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Getallwhdetailsbywhid] @wh_id nchar(10)
as
begin

select wh_name,wh_Shortname,Contact_person,Job_position,Email,Phone,Mobile,
Note,bill_street,bill_city,bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_postalcode,ship_country,galimage1,galimage2,galimage3,galimage4 from warehouse
 where wh_id=@wh_id
 end






GO
/****** Object:  StoredProcedure [dbo].[getcompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcompany]
as
begin
select company_Id,company_name,email,logo,status from company
end



GO
/****** Object:  StoredProcedure [dbo].[getContactByCompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getContactByCompany](@company_Id int)
AS
BEGIN

select Vendor_Id,Contact_PersonFname,Contact_PersonLname,emailid,image,status from Vendor where company_Id=@company_Id

END




GO
/****** Object:  StoredProcedure [dbo].[getContactBycusCompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getContactBycusCompany](@cus_company_Id int)
AS
BEGIN

select Customer_Id,Customer_contact_Fname,Customer_contact_Lname,Email_Id,Mobile_No,Adhar_Number,image,status from Customer where cus_company_Id=@cus_company_Id

END


GO
/****** Object:  StoredProcedure [dbo].[getContactBywarehouse]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getContactBywarehouse](@wh_id nchar(10))
AS
BEGIN
select  con_id,Contact_Person,Email,Mobile,phone,Job_position,image from [dbo].[tblwhcontactdtls] where wh_id=@wh_id

END





GO
/****** Object:  StoredProcedure [dbo].[getcontactId]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcontactId]
AS
BEGIN
	
	SET NOCOUNT ON;
	select Max(con_id) as con_id from tblwhcontactdtls
END




GO
/****** Object:  StoredProcedure [dbo].[getcuscompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getcuscompany]
as
begin
select cus_company_Id,cus_company_name,cus_email,cus_logo,status,new_POs,total_POs,due,overdue,payment_due_date from Customer_Company
end



GO
/****** Object:  StoredProcedure [dbo].[getcusjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getcusjobposition](@cus_Job_position nvarchar(50))
AS
BEGIN

select * from cus_Job_position where cus_Job_position=@cus_Job_position
END


GO
/****** Object:  StoredProcedure [dbo].[getcustomercontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getcustomercontact](@Customer_Id nchar(10))
AS
BEGIN
	select * from Customer where Customer_Id=@Customer_Id
END


GO
/****** Object:  StoredProcedure [dbo].[getCustomerId]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getCustomerId]
AS
BEGIN
	select Max(Customer_Id) as Customer_Id from Customer
END



GO
/****** Object:  StoredProcedure [dbo].[getdistinctproduct]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getdistinctproduct]
AS
BEGIN

	select distinct product_name from product
END



GO
/****** Object:  StoredProcedure [dbo].[getdueoverdue]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getdueoverdue](@cus_company_id nvarchar(50))
AS
BEGIN
	select due,overdue from Customer_Company where cus_company_id=@cus_company_id
END

GO
/****** Object:  StoredProcedure [dbo].[getduesforcustomer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getduesforcustomer](@cid nvarchar(50))
AS
BEGIN
	select due,overdue from Customer_Company where cus_company_Id=@cid
END


GO
/****** Object:  StoredProcedure [dbo].[getFranchises]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Getimages]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Getimages](@product_id nvarchar(50))
AS
BEGIN
	select product_images,discount,product_type from product where product_id=@product_id
END


GO
/****** Object:  StoredProcedure [dbo].[getInvoice]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getinvoicedata]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getinvoicedata](@cid nvarchar(50),@invoiceno nvarchar(50))--,@Prchaseorder_no nvarchar(50)
AS
BEGIN
select * from generate_Invoice where customer_id=@cid and Invoice_no=@invoiceno
END
 --Prchaseorder_no=@Prchaseorder_no and 
--select * from generate_Invoice where customer_id=1000 and Invoice_no=345345

GO
/****** Object:  StoredProcedure [dbo].[getItems]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getjobposition](@Job_position nvarchar(50))
AS
BEGIN

select * from Job_position where Job_position=@Job_position
END



GO
/****** Object:  StoredProcedure [dbo].[getLastInsertedcompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getLastInsertedcompany](@company_Id int)
AS
BEGIN
	
	
	select company_name,email,logo from company where company_Id=@company_Id
	
END




GO
/****** Object:  StoredProcedure [dbo].[getLastInsertedcuscompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getLastInsertedcuscompany](@cus_company_Id int)
AS
BEGIN
	
	select cus_company_name,cus_email,cus_logo from Customer_Company where cus_company_Id=@cus_company_Id
	
END


GO
/****** Object:  StoredProcedure [dbo].[getLastInsertedwarehouse]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getLastInsertedwarehouse](@wh_id nchar(10))
AS
BEGIN
	
	
	select wh_name,wh_Shortname from warehouse where wh_id=@wh_id
	
END





GO
/****** Object:  StoredProcedure [dbo].[getMaxCompanyid]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMaxCompanyid](@Company_Name nvarchar(50))
AS
BEGIN
	
    select company_id from company where company_name=@Company_Name
	
END




GO
/****** Object:  StoredProcedure [dbo].[getMaxcusCompanyid]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[getMaxcusCompanyid](@cus_company_name nvarchar(50))
AS
BEGIN
	
    select cus_company_Id from Customer_Company where cus_company_name=@cus_company_name
	
END


GO
/****** Object:  StoredProcedure [dbo].[GetMaxWarehouseQty]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetMaxWarehouseQty](@product_id varchar(500))
as begin
select top 1 * from quantity_in_hand where product_id=@product_id order by qty desc
end


GO
/****** Object:  StoredProcedure [dbo].[getMaxwhid]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getMaxwhid]
AS
BEGIN
	
    select max(wh_id) as wh_id from warehouse
	
END





GO
/****** Object:  StoredProcedure [dbo].[getmeasurmentsbyproduct]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getmeasurmentsbyproduct](@product_Name nvarchar(50))
AS
BEGIN
	select * from product where product_name=@product_Name
END



GO
/****** Object:  StoredProcedure [dbo].[getPayment]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getPayment_Method]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getpodatabasedonponum]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getpodatabasedonponum](@cid nvarchar(50),@Prchaseorder_no nvarchar(50))
AS
BEGIN
	select Prchaseorder_no,product_id,product_name,description,quantity,cost_price,total_price,sub_total,grand_total from generate_po where customer_id=@cid and Prchaseorder_no=@Prchaseorder_no
END



GO
/****** Object:  StoredProcedure [dbo].[GetProduct]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProduct](@product_id varchar(500))
as begin
select * from product where product_id=@product_id
end


GO
/****** Object:  StoredProcedure [dbo].[getproductbyId]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getproductbyId](@id nvarchar(10))
AS
BEGIN
	select * from product where id=@id
END



GO
/****** Object:  StoredProcedure [dbo].[getproductdetails]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getproductdetails](@customer_id nvarchar(50),@perchaseorder_no nvarchar(50))
AS
BEGIN
	select product_id,product_name,description,quantity,cost_price,total_price from generate_po where customer_id=@customer_id and Prchaseorder_no=@perchaseorder_no

END



GO
/****** Object:  StoredProcedure [dbo].[GetProductItems]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProductItems](@command varchar(50),@id varchar(50))
as begin
if(@command = 'weight')  -- Get all Weights
select * from weight
------------------------------------------------------------------
if(@command = 'size')  -- Get all Sizes
select * from size
------------------------------------------------------------------
if(@command = 'color')  -- Get all Colors
select * from color
------------------------------------------------------------------
if(@command = 'itemshape')  -- Get all Item Shapes
select * from item_shape
------------------------------------------------------------------
if(@command = 'category')  -- Get all Categories
select * from category
------------------------------------------------------------------
if(@command = 'brand')  -- Get all Brands
select * from Brands
------------------------------------------------------------------
if(@command = 'model')  -- Get all Models
select * from Models where Brand_id=@id
------------------------------------------------------------------
if(@command = 'subcategory')  -- Get all Sub Categories
select * from subcategory where category_id=@id
------------------------------------------------------------------
end


GO
/****** Object:  StoredProcedure [dbo].[GetProductLogMaxID]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetProductLogMaxID]
as begin
select MAX(id) as id from product_log
end


GO
/****** Object:  StoredProcedure [dbo].[GetProductMaxID]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProductMaxID]
as begin
select MAX(id) as id from product
end


GO
/****** Object:  StoredProcedure [dbo].[Getproductsbysubcategory]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Getproductsbysubcategory](@subcategory nvarchar(50))
	
AS
BEGIN
declare @newstring nvarchar(50)
declare @newstring1 nvarchar(50)

set @newstring= REPLACE(REPLACE(@subcategory, '-', ' '), ',', '''')
Select distinct product_name,brand,STUFF((SELECT ',' + (Measurement+' '+weight+' - '+'₹'+total_price+'@'+product_id) FROM product
 WHERE (product_name=Result.product_name and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST ,
 STUFF((SELECT ',' + (product_images) FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS productimage,
(select top 1 total from quantity_in_hand where product_id = STUFF((SELECT top 1 ',' + product_id FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'')) AS quantity,
(STUFF((SELECT ',' + product_type FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS producttype,
(STUFF((SELECT ',' + discount FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS discount,
(STUFF((SELECT ',' + product_consumable FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS consumable
 From product AS Result 
 WHERE sub_category=@newstring and product_name!='' and total_price!='' and  Measurement!='' and weight!=''
END


GO
/****** Object:  StoredProcedure [dbo].[GetqtyInHand]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetqtyInHand](@product_id nvarchar(50))
AS
BEGIN
	select * from quantity_in_hand where product_id=@product_id
END



GO
/****** Object:  StoredProcedure [dbo].[GetQuantityInHand]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetQuantityInHand](@product_id varchar(500))
as begin
select * from quantity_in_hand where product_id=@product_id
end


GO
/****** Object:  StoredProcedure [dbo].[getStaff]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getsubcategory]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getsubcategory](@type varchar(50),@id varchar(50))
as begin
if(@type='category')
select subcategory_id,sub_category from subcategory where category_id=@id
if(@type='brand')
select Model_id,Model from Models where Brand_id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[getSupply]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getuniqueproducts]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getuniqueproducts]
AS
BEGIN
Select distinct product_name,brand,STUFF((SELECT ',' + (Measurement+' '+weight+' - '+'₹'+total_price+'@'+product_id) FROM product 
WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST,
STUFF((SELECT ',' + (product_images) FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS productimage,
(select top 1 total from quantity_in_hand where product_id = STUFF((SELECT top 1 ',' + product_id FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'')) AS quantity,
(STUFF((SELECT distinct ','+product.product_id+'?'+quantity_in_hand.Total FROM product join quantity_in_hand on product.product_id=quantity_in_hand.product_id 
 WHERE (product_name = Result.product_name  and brand = Result.brand) and quantity_in_hand.Total!=''  FOR XML PATH ('')),1,1,'') ) AS ids,
(STUFF((SELECT ',' + product_type FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS producttype,
(STUFF((SELECT ',' + discount FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS discount,
(STUFF((SELECT ',' + product_consumable FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS consumable
 From product AS Result where product_name! =''and total_price!='' and Measurement!='' and weight!=''
END



​--Select distinct product_name,brand,STUFF((SELECT ',' + (Measurement+weight+' - '+'₹'+total_price+'@'+product_id) FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST From product AS Result where product_name!=''and total_price!='' and Measurement!='' and weight!=''
--	Select distinct product_name,brand,STUFF((SELECT ',' + (Measurement+' '+weight+' - '+'₹'+total_price+'@'+product_id) FROM product 
--WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS BATCHNOLIST,
--STUFF((SELECT ',' + (product_images) FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') AS productimage,
--(select top 1 total from quantity_in_hand where product_id = STUFF((SELECT top 1 ',' + product_id FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'')) AS quantity,
--(STUFF((SELECT distinct ','+product.product_id+'?'+quantity_in_hand.Total FROM product join quantity_in_hand on product.product_id=quantity_in_hand.product_id 
-- WHERE (product_name = Result.product_name  and brand = Result.brand) and quantity_in_hand.Total!=''  FOR XML PATH ('')),1,1,'') ) AS ids
-- From product AS Result where product_name! =''and total_price!='' and Measurement!='' and weight!=''


--Select distinct product_name,brand,(select max(total) from quantity_in_hand where product_id in 
--(STUFF((SELECT ','+product_id FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,''))) AS ids,
--(STUFF((SELECT ','+product_id FROM product WHERE (product_name = Result.product_name  and brand = Result.brand) FOR XML PATH ('')),1,1,'') ) AS quantity
-- From product AS Result where product_name! =''and total_price!='' and Measurement!='' and weight!=''




GO
/****** Object:  StoredProcedure [dbo].[getuser]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getvendorcontact]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getVendorId]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getwarehousecontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getwarehousecontact](@con_Id nchar(10))
AS
BEGIN
	select * from tblwhcontactdtls where con_id=@con_Id
END




GO
/****** Object:  StoredProcedure [dbo].[getwarehousecount]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getwarehousecount]
as begin
select Count(*) as wcount from warehouse
end


GO
/****** Object:  StoredProcedure [dbo].[getwhcontactdtls]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getwhcontactdtls] @wh_id nchar(10)
as
begin

select Contact_person, Email,Phone,Mobile,Job_position from warehouse where wh_id=@wh_id

end



GO
/****** Object:  StoredProcedure [dbo].[getwhcontactdtls1]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getwhcontactdtls1] @con_id nchar(10)
as
begin

select * from tblwhcontactdtls where con_id=@con_id

end



GO
/****** Object:  StoredProcedure [dbo].[getwhjobpositions2]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getwhjobpositions2]
as
begin
select distinct jp_id,job_position from Availwhjobpositions 
end


GO
/****** Object:  StoredProcedure [dbo].[insertCompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertCompany](@company_name nvarchar(100),@email nvarchar(200),@logo nvarchar(Max))
AS
BEGIN
	declare @company_Id int 
	declare @count int
	declare @createddate datetime
	set @createddate=GETDATE()
	declare @status nvarchar(50)
	set @status='Active'
	set @count=(select count(company_Id) from company)
	if(@count=0)
	set @company_Id=1000
	else
	set @company_Id=(select max(company_Id) from company)+1	   
	INSERT INTO company(company_Id,company_name,email,logo,created_date,status) VALUES(@company_Id,@company_name,@email,@logo,@createddate,@status)
		 
	set @count= (select count(Addr_id) from Vendor_address)
	declare @addr_id nchar(10)
	if(@count=0)
  set @addr_id=1001
else
set @addr_id=(select max(Addr_id) from Vendor_address)+1
INSERT INTO Vendor_address
           (Addr_id,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country,company_Id,status)
     VALUES
           (@addr_id,null,null,null,null,null,null,null,null,null,null,@company_Id,@status)
	
	
END








GO
/****** Object:  StoredProcedure [dbo].[insertcus_taxdetails]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertcus_taxdetails](@cus_company_Id int, @Adhar_Number nvarchar(50), @GSTIN_Number nvarchar(50),@tax_reg_no nvarchar(50),@pan_no nvarchar(50),@tds_apply int,@tax_exemption int,@tax_files nvarchar(MAX))
AS
BEGIN
	INSERT INTO Customer_Company(cus_company_Id, Adhar_Number, GSTIN_Number,tax_reg_no,pan_no,tds_apply,tax_exemption,tax_files)
	values(@cus_company_Id, @Adhar_Number, @GSTIN_Number,@tax_reg_no,@pan_no,@tds_apply,@tax_exemption,@tax_files)
END



GO
/****** Object:  StoredProcedure [dbo].[insertcusjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertcusjobposition](@cus_Job_position nvarchar(50),@cus_company_Id int)
AS
BEGIN
declare @status nvarchar(50)
	set @status='Active'
declare @cus_Job_PositionId int 
	declare @count int
	set @count=(select count(cus_Job_PositionId) from cus_Job_position)
	if(@count=0)
	set @cus_Job_PositionId=1
	else
	set @cus_Job_PositionId=(select max(cus_Job_PositionId) from cus_Job_position)+1	   
INSERT INTO cus_Job_position(cus_Job_PositionId,cus_company_Id,cus_Job_position,status) VALUES(@cus_Job_PositionId,@cus_company_Id,@cus_Job_position,@status)	
END


GO
/****** Object:  StoredProcedure [dbo].[insertcustomer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertcustomer](@cus_company_Id int,@Customer_contact_Fname nvarchar(50),@Customer_contact_Lname nvarchar(50),@Mobile_No nvarchar(50),
						@Email_Id nvarchar(50),@Adhar_Number nvarchar(50),@cus_Job_position nvarchar(50),@image varchar(Max)) 

AS
BEGIN
	declare @Customer_Id nchar(10)
	declare @createddate datetime
	set @createddate=GETDATE()
	declare @status nvarchar(50)
	set @status='Active'
	declare @count int
	set @count=(select count(Customer_Id) from Customer)
	if(@count=0)
  set @Customer_Id=100
	else 
	 set @Customer_Id=(select max(Customer_Id) from Customer)+1
	INSERT INTO Customer(Customer_Id,cus_company_Id,Customer_contact_Fname,Customer_contact_Lname,Mobile_No,Email_Id,Adhar_Number,cus_Job_position,image,created_date,status)
     VALUES
           (@Customer_Id,@cus_company_Id,@Customer_contact_Fname,@Customer_contact_Lname,@Mobile_No,@Email_Id,@Adhar_Number,@cus_Job_position,@image,@createddate,@status)
end


GO
/****** Object:  StoredProcedure [dbo].[insertCustomer_address]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertCustomer_address](@cus_company_Id int,@bill_street nvarchar(200),@bill_city nvarchar(50),
@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),
@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),
@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN
declare @status nvarchar(50)
	set @status='Active'
declare @count int
	set @count= (select count(cusAddr_id) from Customer_address)
	declare @cusAddr_id nchar(10)
	if(@count=0)
  set @cusAddr_id=1000
else
set @cusAddr_id=(select max(cusAddr_id) from Customer_address)+1
INSERT INTO Customer_address
           (cusAddr_id,bill_street,bill_city,bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country,cus_company_Id,status)
     VALUES
           (@cusAddr_id,@bill_street,@bill_city,@bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country,@cus_company_Id,@status)
end


GO
/****** Object:  StoredProcedure [dbo].[insertCustomer_Company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertCustomer_Company](@cus_company_name nvarchar(100),@cus_email nvarchar(200),@cus_logo nvarchar(Max))
AS
BEGIN
	declare @cus_company_Id int 
	declare @count int
	declare @createddate datetime
	set @createddate=GETDATE()
	declare @status nvarchar(50)
	set @status='Active'
	declare @due nvarchar(50)
	set @due='0'
	declare @overdue nvarchar(50)
	set @overdue='0'
	declare @new_POs nvarchar(50)
	set @new_POs='0'
	declare @total_POs nvarchar(50)
	set @total_POs='0'
	declare @payment_due_date nvarchar(50)
	set @payment_due_date=(SELECT CONVERT(varchar(11),getdate(),103))
	set @count=(select count(cus_company_Id) from Customer_Company)
	if(@count=0)
	set @cus_company_Id=1000
	else
	set @cus_company_Id=(select max(cus_company_Id) from Customer_Company)+1	   
	INSERT INTO Customer_Company(cus_company_Id,cus_company_name,cus_email,cus_logo,created_date,status,new_POs,total_POs,due,overdue,payment_due_date) VALUES(@cus_company_Id,@cus_company_name,@cus_email,@cus_logo,@createddate,@status,@new_POs,@total_POs,@due,@overdue,@payment_due_date)
		 
	set @count= (select count(cusAddr_id) from Customer_address)
	declare @cusAddr_id nchar(10)
	if(@count=0)
  set @cusAddr_id=1001
else
set @cusAddr_id=(select max(cusAddr_id) from Customer_address)+1
INSERT INTO Customer_address
           (cusAddr_id,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country,cus_company_Id,status)
     VALUES
           (@cusAddr_id,null,null,null,null,null,null,null,null,null,null,@cus_company_Id,@status)
	
	
END


GO
/****** Object:  StoredProcedure [dbo].[insertFranchises]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertInvoice]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertInvoiceDetails]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertIteams]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertjobposition]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertjobposition](@Job_position nvarchar(50),@company_Id int)
AS
BEGIN
declare @Job_PositionId int 
	declare @count int
	declare @status nvarchar(50)
	set @status='Active'
	set @count=(select count(Job_PositionId) from Job_position)
	if(@count=0)
	set @Job_PositionId=1
	else
	set @Job_PositionId=(select max(Job_PositionId) from Job_position)+1	   
INSERT INTO Job_position(Job_PositionId,company_Id,Job_position,status) VALUES(@Job_PositionId,@company_Id,@Job_position,@status)	
END



GO
/****** Object:  StoredProcedure [dbo].[insertPayments]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertPayments](@payments_date nvarchar(50),@cheque_date nvarchar(50),@cheque_bankname nvarchar(50),@cheque_num nvarchar(50),@creditORdebitcard_date nvarchar(50),@card_holder_name nvarchar(50),@card_last4digits nvarchar(50),@bank_taransfer_date nvarchar(50),@bank_transfer_name nvarchar(50),@bank_transaction_id nvarchar(50)
           ,@cash_date nvarchar(50),@cash_card_holdername nvarchar(50),@wallet_date nvarchar(50),@wallet_number nvarchar(50),@invoiced_amount nvarchar(50),@Received_amount nvarchar(50),@opening_balance nvarchar(50),@current_balance nvarchar(50),@bank_transfer_IFSCcode nvarchar(50),@bank_transfer_branchname nvarchar(50),@Customer_comapnyId nvarchar(50),@Customer_company_name nvarchar(50),@remarks nvarchar(max))
AS
BEGIN
	INSERT INTO Payments(payments_date,cheque_date,cheque_bankname,cheque_num,creditORdebitcard_date,card_holder_name,card_last4digits,bank_taransfer_date,bank_transfer_name,bank_transaction_id
           ,cash_date,cash_card_holdername,wallet_date,wallet_number,invoiced_amount,Received_amount,opening_balance,current_balance,bank_transfer_IFSCcode,bank_transfer_branchname,Customer_comapnyId,Customer_company_name,remarks)
     VALUES
           (@payments_date,@cheque_date,@cheque_bankname,@cheque_num,@creditORdebitcard_date,@card_holder_name,@card_last4digits,@bank_taransfer_date,@bank_transfer_name,@bank_transaction_id
           ,@cash_date,@cash_card_holdername,@wallet_date,@wallet_number,@invoiced_amount,@Received_amount,@opening_balance,@current_balance,@bank_transfer_IFSCcode,@bank_transfer_branchname,@Customer_comapnyId,@Customer_company_name,@remarks)
END



GO
/****** Object:  StoredProcedure [dbo].[insertpurchaseOrder]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertpurchaseOrder](@customer_id nvarchar(50),@product_id nvarchar(50),@company_name nvarchar(50),@created_date nvarchar(50),@Prchaseorder_no nvarchar(50),@shipping_date nvarchar(50),
               @shipping_terms nvarchar(max),@product_name nvarchar(50),@description nvarchar(50),@quantity nvarchar(50)
           ,@price nvarchar(50),@total_price nvarchar(50),@remarks nvarchar(max),@sub_total nvarchar(50),@grand_total nvarchar(50))
AS
declare @invoice_status nvarchar(50)
declare @deliverynote_status nvarchar(50)
set @invoice_status=0
set @deliverynote_status=0
BEGIN
	INSERT INTO generate_po(customer_id,product_id,company_name,created_date,Prchaseorder_no,shipping_date,shipping_terms,product_name,description,quantity
           ,cost_price,total_price,remarks,sub_total,grand_total,invoice_status,deliverynote_status)
     VALUES
           (@customer_id,@product_id,@company_name,@created_date,@Prchaseorder_no,@shipping_date,@shipping_terms,@product_name,@description,@quantity,@price,@total_price,@remarks,@sub_total,@grand_total,@invoice_status,@deliverynote_status)
END



GO
/****** Object:  StoredProcedure [dbo].[insertStaff]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertSupply]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertuser]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertvendor]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertvendor](@company_Id int,@Contact_PersonFname nvarchar(50),@Contact_PersonLname nvarchar(50),@Mobile_No nvarchar(50),
						@emailid nvarchar(50),@Adhar_Number nvarchar(50),@Job_position nvarchar(50),@image varchar(Max)) 

AS
BEGIN
	declare @Vendor_Id nchar(10)
	declare @createddate datetime
	declare @status nvarchar(50)
	set @status='Active'
	set @createddate=GETDATE()
	declare @count int
	set @count=(select count(Vendor_Id) from Vendor)
	if(@count=0)
  set @Vendor_Id=100
	else 
	 set @Vendor_Id=(select max(Vendor_Id) from Vendor)+1
	INSERT INTO Vendor(Vendor_Id,company_Id,Contact_PersonFname,Contact_PersonLname,Mobile_No,
                         emailid,Adhar_Number,Job_position,image,created_date,status)
     VALUES
           (@Vendor_Id,@company_Id,@Contact_PersonFname,@Contact_PersonLname,@Mobile_No,@emailid,@Adhar_Number,@Job_position,@image,@createddate,@status)
end

	




GO
/****** Object:  StoredProcedure [dbo].[insertVendor_address]    Script Date: 23/08/2017 01:22:36 PM ******/
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
declare @status nvarchar(50)
	set @status='Active'
	set @count= (select count(Addr_id) from Vendor_address)
	declare @addr_id nchar(10)
	if(@count=0)
  set @addr_id=1000
else
set @addr_id=(select max(Addr_id) from Vendor_address)+1
INSERT INTO Vendor_address
           (Addr_id,bill_street,bill_city,
            bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country,company_Id,status)
     VALUES
           (@addr_id,@bill_street,@bill_city,
            @bill_state,@bill_postalcode,@bill_country,@ship_street,@ship_city,@ship_state,@ship_postalcode,@ship_country,@company_Id,@status)
end




GO
/****** Object:  StoredProcedure [dbo].[insertwarehouse]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertwarehouse1]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[insertwarehousecontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertwarehousecontact](@wh_id nchar(10),@con_person nvarchar(50),@job_position nvarchar(50),@email nvarchar(100),@phone nvarchar(50),@mobile nvarchar(50),@image varchar(max)) 

AS
BEGIN
	declare @con_id nchar(10)
	declare @count int
	set @count=(select count(con_id) from [dbo].[tblwhcontactdtls])
	if(@count=0)
  set @con_id =100
	else 
	 set @con_id =(select max(con_id ) from [dbo].[tblwhcontactdtls] )+1
	INSERT INTO tblwhcontactdtls (con_id,wh_id,contact_person,job_position,email,phone,mobile,image)
     VALUES
           (@con_id,@wh_id,@con_person,@job_position,@email,@phone,@mobile,@image)
end

	




GO
/****** Object:  StoredProcedure [dbo].[insertwarehousegallery]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[insertwarehousegallery](@wh_id nchar(10),@galimage1 varchar(max),@galimage2 varchar(max),@galimage3 varchar(max),@galimage4 varchar(max)) 
as
begin
update warehouse set
galimage1=@galimage1,
galimage2=@galimage2,
galimage3=@galimage3,
galimage4=@galimage4

where wh_id=@wh_id
end



GO
/****** Object:  StoredProcedure [dbo].[insertwh_address]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertwh_address](@wh_id nchar(10),@bill_street nvarchar(200),@bill_city nvarchar(50),
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
/****** Object:  StoredProcedure [dbo].[insertwhdtls]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertwhdtls](@wh_name nvarchar(100),@Wh_sname nvarchar(50))
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
/****** Object:  StoredProcedure [dbo].[paymentduedate]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[paymentduedate](@cus_company_id nvarchar(50))
AS
BEGIN
	select distinct payment_date,open_amount from generate_Invoice where customer_id=@cus_company_id
END

GO
/****** Object:  StoredProcedure [dbo].[PoProductdetails]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PoProductdetails](@Prchaseorder_no nvarchar(50))
AS
BEGIN
	select distinct product_id,product_name,description,Quantity,cost_price,total_price from generate_po where Prchaseorder_no=@Prchaseorder_no
END




GO
/****** Object:  StoredProcedure [dbo].[posofcustomer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[posofcustomer](@cid nvarchar(50))
AS
BEGIN
	select distinct customer_id,company_name,Prchaseorder_no,created_date,invoice_status,deliverynote_status from generate_po where customer_id=@cid 
END



GO
/****** Object:  StoredProcedure [dbo].[ProductFunctionalities]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ProductFunctionalities](@type varchar(50),@id int,@product_id varchar(50),@product_name varchar(50),@batch_number varchar(MAX),@brand varchar(100),@model varchar(100),@category varchar(50),@sub_category varchar(50),
@cost_price varchar(50),@selling_price varchar(50),@tax varchar(50),@discount varchar(50),@shipping_price varchar(50),@total_price varchar(50),@Measurement varchar(50),
@weight varchar(50),@size varchar(50),@color varchar(50),@item_shape varchar(50),@product_consumable varchar(50),@product_type varchar(50),@product_perishability varchar(50),
@product_expirydate varchar(50),@product_description varchar(MAX),@product_tags varchar(MAX),@product_images varchar(MAX),@sgst varchar(50),@cgst varchar(50),@igst varchar(50),@hsncode varchar(max))
as begin
if(@type ='AddProduct')
insert into product(id,product_id, product_name,Batch_number,brand ,model ,category ,sub_category ,cost_price ,selling_price ,tax ,discount ,shipping_price ,total_price ,Measurement ,weight ,size ,color ,item_shape ,product_consumable ,product_type ,product_perishability ,product_expirydate ,product_description ,product_tags,product_images ,created_date,status,SGST,CGST,IGST,HSNCode)
values(@id,@product_id ,@product_name,@batch_number ,@brand ,@model ,@category ,@sub_category ,@cost_price ,@selling_price ,@tax ,@discount ,@shipping_price ,@total_price ,@Measurement ,@weight ,@size ,@color ,@item_shape ,@product_consumable ,@product_type ,@product_perishability ,@product_expirydate ,@product_description ,@product_tags,@product_images,GETDATE(),'Active',@sgst,@cgst,@igst,@hsncode )
if(@type ='UpdateProduct')
update product set product_name = @product_name, Batch_number = @batch_number, brand = @brand ,model = @model ,category = @category ,sub_category = @sub_category ,
				   cost_price=@cost_price,selling_price = @selling_price ,tax = @tax ,discount = @discount, shipping_price = @shipping_price,total_price = @total_price,
				   Measurement = @Measurement ,weight = @weight, size = @size,color = @color,item_shape = @item_shape, product_consumable = @product_consumable , product_description=@product_description,
				   product_type = @product_type ,product_perishability = @product_perishability ,  product_tags = @product_tags ,product_images = @product_images ,product_expirydate=@product_expirydate,SGST=@sgst,CGST=@cgst,IGST=@igst,HSNCode=@hsncode
				    where product_id = @product_id
end

GO
/****** Object:  StoredProcedure [dbo].[ProductFunctionalitieslog]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ProductFunctionalitieslog](@id int,@mainproduct_id varchar(50),@product_id varchar(50),@product_name varchar(50),@batch_number varchar(MAX),@brand varchar(100),@model varchar(100),@category varchar(50),@sub_category varchar(50),
@cost_price varchar(50),@selling_price varchar(50),@tax varchar(50),@discount varchar(50),@shipping_price varchar(50),@total_price varchar(50),@Measurement varchar(50),
@weight varchar(50),@size varchar(50),@color varchar(50),@item_shape varchar(50),@product_consumable varchar(50),@product_type varchar(50),@product_perishability varchar(50),
@product_expirydate varchar(50),@product_description varchar(MAX),@product_tags varchar(MAX),@product_images varchar(MAX),@created_date varchar(max),@status varchar(50))
as begin
insert into product_log(id,mainproduct_id,product_id, product_name,Batch_number,brand ,model ,category ,sub_category ,cost_price ,selling_price ,tax ,discount ,shipping_price ,total_price ,Measurement ,weight ,size ,color ,item_shape ,product_consumable ,product_type ,product_perishability ,product_expirydate ,product_description ,product_tags,product_images ,created_date,updated_date,status)
values(@id,@mainproduct_id,@product_id ,@product_name,@batch_number ,@brand ,@model ,@category ,@sub_category ,@cost_price ,@selling_price ,@tax ,@discount ,@shipping_price ,@total_price ,@Measurement ,@weight ,@size ,@color ,@item_shape ,@product_consumable ,@product_type ,@product_perishability ,@product_expirydate ,@product_description ,@product_tags,@product_images,@created_date,GETDATE(),@status )
end


GO
/****** Object:  StoredProcedure [dbo].[ProductItems]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ProductItems](@command varchar(50),@weight varchar(50),@size varchar(50),@color varchar(50),@itemshape varchar(50),@categoryid varchar(50),@category varchar(50),@subcategory varchar(50),@brand varchar(50),@model varchar(50),@id varchar(50))
as begin
declare @weight_id varchar(50),@size_id varchar(50),@color_id varchar(50),@itemshape_id varchar(50),@category_id varchar(50),@subcategory_id varchar(50),@count int,@increment varchar(50),@brand_id varchar(50),@model_id varchar(50)
------------------------------------------------------------------
if(@command = 'addweight')  -- Adding Weight
begin
set @count = (select count(*) from weight)
if(@count = 0)
set @id = 1
set @weight_id = 'WGT1'
if(@count > 0) 
set @id = (select MAX(ID) from weight)+1
--set @increment = (select max(REPLACE(weight_id , 'WGT', ''))from weight)+1--(select MAX(CAST(REPLACE(REPLACE(weight_id , 'WGT', ''), '', '') as int)) from weight)+1
set @weight_id = 'WGT'+@id
insert into weight(ID,weight_id,weight) values(@id,@weight_id,@weight)
end
------------------------------------------------------------------
if(@command = 'addsize')  -- Adding Size
begin
set @count = (select count(*) from size)
if(@count = 0)
set @id = 1
set @size_id = 'SIZE1'
if(@count > 0)  
set @id = (select MAX(ID) from size)+1
--set @increment = (select max(REPLACE(size_id , 'SIZE', ''))from size)+1--(select MAX(CAST(REPLACE(REPLACE(size_id , 'SIZE', ''), '', '') as int)) from size)+1
set @size_id = 'SIZE'+@id
insert into size(ID,size_id,size) values(@id,@size_id,@size)
end
------------------------------------------------------------------
if(@command = 'addcolor')  -- Adding Color
begin
set @count = (select count(*) from color)
if(@count = 0)
set @id = 1
set @color_id = 'C1'
if(@count > 0)   
set @id = (select MAX(ID) from color)+1
--set @increment = (select max(REPLACE(color_id , 'COLOR', ''))from color)+1--'COLOR'+(select MAX(CAST(REPLACE(REPLACE(@color_id , 'COLOR', ''), '', '') as int)) from color)+1
set @color_id = 'C'+@id
insert into color(ID,color_id,color) values(@id,@color_id,@color)
end
------------------------------------------------------------------
if(@command = 'additemshape')  -- Adding Item Shape
begin
set @count = (select count(*) from item_shape)
if(@count = 0)
set @id = 1
set @itemshape_id = 'ITEM1'
if(@count > 0) 
set @id = (select MAX(ID) from item_shape)+1
--set @increment = (select max(REPLACE(itemshape_id , 'ITEM', ''))from item_shape)+1--(select MAX(CAST(REPLACE(REPLACE(@itemshape_id , 'ITEM', ''), '', '') as int)) from item_shape)+1
set @itemshape_id = 'ITEM'+@id
insert into item_shape(ID,itemshape_id,itemshape) values(@id,@itemshape_id,@itemshape)
end
------------------------------------------------------------------
if(@command = 'addcategory')  -- Adding Category
begin
set @count = (select count(*) from category)
if(@count = 0)
set @id = 1
set @category_id = 'CAT1'
if(@count > 0)  
set @id = (select MAX(ID) from category)+1
--set @increment = (select max(REPLACE(category_id , 'CAT', ''))from category)+1--(select MAX(CAST(REPLACE(REPLACE(@category_id , 'CAT', ''), '', '') as int)) from category)+1
set @category_id = 'CAT'+@id
insert into category(ID,category_id,category) values(@id,@category_id,@category)
end
------------------------------------------------------------------
if(@command = 'addsubcategory')  -- Adding Sub-Category
begin
set @count = (select count(*) from subcategory)
if(@count = 0)
set @id = 1
set @subcategory_id = 'SCAT1'
if(@count > 0)   
set @id = (select MAX(ID) from subcategory)+1
--set @increment = (select max(REPLACE(subcategory_id , 'SUBCAT', ''))from subcategory)+1--(select MAX(CAST(REPLACE(REPLACE(@category_id , 'SUBCAT', ''), '', '') as int)) from subcategory)+1
set @subcategory_id = 'SCAT'+@id
insert into subcategory(ID,subcategory_id,category_id,sub_category) values(@id,@subcategory_id,@categoryid,@subcategory)
end
------------------------------------------------------------------
if(@command = 'addbrand')  -- Adding Brands
begin
set @count = (select count(*) from Brands)
if(@count = 0)
set @id = 1
set @brand_id = 'B1'
if(@count > 0)    
set @id = (select MAX(ID) from Brands)+1
--set @increment = (select max(REPLACE(Brand_id , 'Brand', ''))from Brands)+1--(select MAX(CAST(REPLACE(REPLACE(Brand_id , 'Brand', ''), '', '') as int)) from Brands)+1
set @brand_id = 'B'+@id
insert into Brands(id,Brand_id,Brand) values(@id,@brand_id,@brand)
end
------------------------------------------------------------------
if(@command = 'addmodel')  -- Adding Model
begin
set @count = (select count(*) from size)
if(@count = 0)
set @id = 1
set @model_id = 'M1'
if(@count > 0)    
set @id = (select MAX(ID) from Models)+1
--set @increment = (select max(REPLACE(Model_id , 'Model', ''))from Models)+1--(select MAX(CAST(REPLACE(REPLACE(Model_id , 'Model', ''), '', '') as int)) from Models)+1
set @model_id = 'M1'+@id
insert into Models(id,Model_id,Model) values(@id,@model_id,@model)
end
------------------------------------------------------------------
if(@command = 'delweight')  -- Removing Weight
delete from weight where weight_id=@id
------------------------------------------------------------------
if(@command = 'delsize')  -- Removing Size
delete from size where size_id=@id
------------------------------------------------------------------
if(@command = 'delcolor')  -- Removing Color
delete from color where color_id=@id
------------------------------------------------------------------
if(@command = 'delitemshape')  -- Removing Item Shape
delete from item_shape where itemshape_id=@id
------------------------------------------------------------------
if(@command = 'delcategory')  -- Removing Category
delete from category where category_id=@id
------------------------------------------------------------------
if(@command = 'delsubcategory')  -- Removing Sub-Category
delete from subcategory where subcategory_id=@id
------------------------------------------------------------------
if(@command = 'delbrand')  -- Removing Brands
delete from Brands where Brand_id=@id
------------------------------------------------------------------
if(@command = 'delmodel')  -- Removing Models
delete from Models where Model_id=@id
------------------------------------------------------------------
end


GO
/****** Object:  StoredProcedure [dbo].[productstatus]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[productstatus](@id varchar(200),@status varchar(200))
as begin
update product set status=@status where product_id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[QuantityInHandLog]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[QuantityInHandLog](@quantityid int,@product_id varchar(100),@area varchar(100),@Qty varchar(100),@Reorder varchar(100),@Total varchar(100),@vendorid varchar(100),@vendor varchar(200))
as begin
declare @count int,@id int
set @count = (select count(*) from quantity_in_hand_log)
if(@count = 0)
set @id=1
else
set @id =(select MAX(id) from quantity_in_hand_log)+1
insert into quantity_in_hand_log(id,quantity_in_hand_id,product_id,area,Qty,Reorder_level,Total,stock_updated_date,vendor_id,vendor) 
values(@id,@quantityid,@product_id,@area,@Qty,@Reorder,@Total,GETDATE(),@vendorid,@vendor)
end


GO
/****** Object:  StoredProcedure [dbo].[removeproductimage]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[removeproductimage](@id varchar(100),@image varchar(max))
as begin
update product set product_images=@image  where product_id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[Reordering]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from quantity_in_hand where id >=286

--368,374,381,387

CREATE procedure [dbo].[Reordering]
as begin
select * from quantity_in_hand where Qty!='' and Qty!=0 and Reorder_level!='' and Reorder_level !=0 order by id 
end


GO
/****** Object:  StoredProcedure [dbo].[savewhjp]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[savewhjp] @jobposition nvarchar(50)
as
begin
declare @jp_id nchar(10)
declare @count int
	set @count=(select count(jp_id) from Availwhjobpositions)
	if(@count=0)
	set  @jp_id=100
	else
	set  @jp_id=(select max(jp_id) from Availwhjobpositions)+1
	insert into Availwhjobpositions (jp_id,job_position) values (@jp_id,@jobposition)
end


GO
/****** Object:  StoredProcedure [dbo].[sp_profileprogram]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spchkwh]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[spchkwh] @whname nvarchar(50)
as
begin
select wh_name from warehouse where wh_name=@whname

end



GO
/****** Object:  StoredProcedure [dbo].[spchkwhsname]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[spchkwhsname] @whsname nvarchar(50)
as
begin
select wh_Shortname from warehouse where wh_Shortname=@whsname

end



GO
/****** Object:  StoredProcedure [dbo].[spdeletewhdtls]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spdeletewhdtls] @wh_ID nchar(10)
as
begin

delete from warehouse where wh_id=@wh_ID
end



GO
/****** Object:  StoredProcedure [dbo].[spgetwarehousecontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[spgetwarehousecontact] @con_id nchar(10)
as
begin
select * from tblwarehousecontact where con_id=@con_id
end



GO
/****** Object:  StoredProcedure [dbo].[spGetwarehouseDtls]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sptoinsertdeliverynote]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sptoinsertdeliverynote](@Delivernote_no nvarchar(50),@vendor_name nvarchar(50), @customer_id nvarchar(50),@created_date nvarchar(50), @comment nvarchar(50), @sub_total nvarchar(50),@Prchaseorder_no nvarchar(50),
                @product_id nvarchar(50),@product_name nvarchar(50),@description nvarchar(50),@po_quantity nvarchar(50),@deliver_quantity nvarchar(50),@cost_price nvarchar(50),@total_price nvarchar(50))
AS
BEGIN
	declare @status nvarchar(50)
	set @status=1
INSERT INTO generate_DeliveryNote(Delivernote_no,vendor_name,customer_id,created_date,comment,sub_total,Prchaseorder_no,deliverynote_status,product_id, product_name, description, po_quantity, deliver_quantity, cost_price, total_price)
     VALUES (@Delivernote_no,@vendor_name, @customer_id,@created_date,@comment, @sub_total,@Prchaseorder_no,@status,@product_id, @product_name, @description, @po_quantity, @deliver_quantity, @cost_price, @total_price)
END



GO
/****** Object:  StoredProcedure [dbo].[sptoinsertinvoice]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sptoinsertinvoice](@Invoice_no nvarchar(50),@vendor_name nvarchar(50), @customer_id nvarchar(50),@company_name nvarchar(50), @created_date nvarchar(50),
 @payment_date nvarchar(50), @grand_total nvarchar(50),@payment_terms nvarchar(50), @comment nvarchar(50), @sub_total nvarchar(50), @vat nvarchar(50), @discount nvarchar(50), @Prchaseorder_no nvarchar(50),@status nvarchar(50),
 @product_id nvarchar(50), @product_name nvarchar(50), @cost_price nvarchar(50),@description nvarchar(50), @po_quantity nvarchar(50), @total_price nvarchar(50), @cgst_rate nvarchar(50), @cgst_amount nvarchar(50), @sgst_rate nvarchar(50), @sgst_amount nvarchar(50), @igst_rate nvarchar(50), @igst_amount nvarchar(50))
AS
BEGIN
	declare @open_amount nvarchar(50)
	set @open_amount=@sub_total
INSERT INTO generate_Invoice(Invoice_no,vendor_name,customer_id,company_name,created_date,payment_date,grand_total,payment_terms,comment,sub_total,vat,discount,Prchaseorder_no,invoice_status, product_id, product_name, cost_price,description, po_quantity, total_price, cgst_rate, cgst_amount, sgst_rate, sgst_amount, igst_rate, igst_amount,open_amount)
     VALUES (@Invoice_no,@vendor_name, @customer_id,@company_name, @created_date, @payment_date, @grand_total,@payment_terms, @comment, @sub_total, @vat, @discount, @Prchaseorder_no,@status,@product_id, @product_name, @cost_price,@description, @po_quantity, @total_price, @cgst_rate, @cgst_amount, @sgst_rate, @sgst_amount, @igst_rate, @igst_amount,@open_amount)
END







GO
/****** Object:  StoredProcedure [dbo].[sptoupdatedelivstatus]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sptoupdatedelivstatus](@customer_id nvarchar(50),@Prchaseorder_nos nvarchar(50),@deliverynote_status nvarchar(50))
AS
BEGIN
	update generate_po set deliverynote_status=@deliverynote_status where customer_id=@customer_id and Prchaseorder_no=@Prchaseorder_nos
END



GO
/****** Object:  StoredProcedure [dbo].[sptoupdateinvoicestatus]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sptoupdateinvoicestatus](@customer_id nvarchar(50),@Prchaseorder_nos nvarchar(50),@invoice_status nvarchar(50))
AS
BEGIN
update generate_po set invoice_status=@invoice_status where customer_id=@customer_id and Prchaseorder_no=@Prchaseorder_nos
update Customer_Company set new_POs=new_POs-1 where cus_company_Id=@customer_id
END



GO
/****** Object:  StoredProcedure [dbo].[spupdatewhcontact1]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[togetallpos]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[togetallpos](@cus_company_id nvarchar(50),@invoice_status nvarchar(50))
AS
BEGIN
	select count(distinct Prchaseorder_no) as pos from generate_po where invoice_status=@invoice_status and customer_id=@cus_company_id
END





GO
/****** Object:  StoredProcedure [dbo].[updatecart]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecart](@cart_id int,@Quantity nvarchar(50),@total_price nvarchar(50))
AS
BEGIN
update add_cart
	SET Quantity = @Quantity
      ,total_price = @total_price
      
 WHERE cart_id =@cart_id
END



GO
/****** Object:  StoredProcedure [dbo].[updateCompany]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateCompany](@company_Id int,@Bank_Acc_Number nvarchar(50),@Bank_Name nvarchar(50),@Bank_Branch nvarchar(50),@IFSC_No nvarchar(50))
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
/****** Object:  StoredProcedure [dbo].[updatecompany1]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatecus_taxdetails]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updatecus_taxdetails](@cus_company_Id int,@Adhar_Number nvarchar(50), @GSTIN_Number nvarchar(50),@tax_reg_no nvarchar(50),@pan_no nvarchar(50),@tds_apply int,@tax_exemption int,@tax_files nvarchar(MAX))
AS
BEGIN
	update Customer_Company set Adhar_Number=@Adhar_Number,GSTIN_Number=@GSTIN_Number,tax_reg_no=@tax_reg_no,pan_no=@pan_no,tds_apply=@tds_apply,tax_exemption=@tax_exemption,tax_files=@tax_files where cus_company_Id=@cus_company_Id
END



GO
/****** Object:  StoredProcedure [dbo].[updatecuscompany1]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[updatecuscompany1](@cus_company_Id int,@cus_company_name nvarchar(50),@cus_email nvarchar(100),@cus_logo nvarchar(max))
AS
BEGIN
	update Customer_Company SET  cus_company_name=@cus_company_name,cus_email=@cus_email,cus_logo=@cus_logo where cus_company_Id = @cus_company_Id 
END


GO
/****** Object:  StoredProcedure [dbo].[updatecusNotes]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[updatecusNotes](@cus_company_Id int,@cus_Note nvarchar(max))
AS
BEGIN
	UPDATE Customer_Company
   SET cus_company_Id = @cus_company_Id,
      cus_Note=@cus_Note
 WHERE cus_company_Id =@cus_company_Id
	
END


GO
/****** Object:  StoredProcedure [dbo].[updatecustomer]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[updatecustomer](@Customer_Id nchar(10),@Customer_contact_Fname nvarchar(50),@Customer_contact_Lname nvarchar(50),@Mobile_No nvarchar(50),
						@Email_Id nvarchar(50),@Adhar_Number nvarchar(50),@cus_Job_position nvarchar(50),@image varchar(max))
	
AS
BEGIN
	update Customer
	SET Customer_contact_Fname = @Customer_contact_Fname
      ,Customer_contact_Lname = @Customer_contact_Lname
      ,Mobile_No = @Mobile_No
      ,Email_Id =@Email_Id
      ,Adhar_Number = @Adhar_Number
	  ,cus_Job_position=@cus_Job_position
	  ,image=@image
 WHERE Customer_Id =@Customer_Id
END


GO
/****** Object:  StoredProcedure [dbo].[updateCustomer_address]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[updateCustomer_address](@cus_company_Id int,@bill_street nvarchar(200),@bill_city nvarchar(50),@bill_state nvarchar(50),@bill_postalcode nvarchar(50),@bill_country nvarchar(50),@ship_street nvarchar(200),@ship_city nvarchar(50),@ship_state nvarchar(50),@ship_postalcode nvarchar(50),@ship_country nvarchar(50)) 
	
AS
BEGIN
UPDATE Customer_address SET  bill_street = @bill_street,bill_city = @bill_city,bill_state = @bill_state,bill_postalcode = @bill_postalcode,bill_country = @bill_country,
      ship_street =@ship_street,ship_city = @ship_city,ship_state=@ship_state,ship_postalcode=@ship_postalcode,ship_country=@ship_country WHERE cus_company_Id =@cus_company_Id
end


GO
/****** Object:  StoredProcedure [dbo].[updatecustomerdues]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatecustomerdues](@customer_id nvarchar(50),@due nvarchar(50),@overdue nvarchar(50),@Payment_due_date nvarchar(50))
AS
BEGIN
	update Customer_Company set due=@due,
	    overdue=@overdue,
		Payment_due_date=@Payment_due_date
	 where cus_company_Id=@customer_id
	
END



GO
/****** Object:  StoredProcedure [dbo].[updateduesinCustomer_company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateduesinCustomer_company](@cus_company_Id nvarchar(50),@dues nvarchar(50),@payment_due_date nvarchar(50))
AS
BEGIN
	update Customer_Company set due=@dues,payment_due_date=@payment_due_date  where cus_company_Id=@cus_company_Id
END


GO
/****** Object:  StoredProcedure [dbo].[updateFranchises]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateInvoice]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateItems]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateMaxWarehouseQty]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateMaxWarehouseQty](@product_id varchar(100),@id int,@qty varchar(100),@total varchar(100))
as begin
update quantity_in_hand set Qty=@qty where id=@id
update quantity_in_hand set Total=@total where product_id=@product_id
end


GO
/****** Object:  StoredProcedure [dbo].[updatenewPOsinCustomer_company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatenewPOsinCustomer_company](@cus_company_Id nvarchar(50),@POs nvarchar(50))
AS
BEGIN
	update Customer_Company set new_POs=@POs where cus_company_Id=@cus_company_Id
END



GO
/****** Object:  StoredProcedure [dbo].[updateNotes]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateopenamunt_invoice]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updateopenamunt_invoice](@Prchaseorder_no nvarchar(50),@open_amount nvarchar(50))
AS
BEGIN
	update generate_Invoice set open_amount=@open_amount where Invoice_no=@Prchaseorder_no
END



GO
/****** Object:  StoredProcedure [dbo].[updatePayment]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatePOsinCustomer_company]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatePOsinCustomer_company](@cus_company_Id nvarchar(50),@POs nvarchar(50))
AS
BEGIN
	update Customer_Company set total_pos=@POs  where cus_company_Id=@cus_company_Id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateProduct](@product_id varchar(100),@batch_number varchar(100),@cost_price varchar(100),@selling_price varchar(100),@tax varchar(100),
@discount varchar(100),@shipping varchar(100),@total_price varchar(100))
as begin
update product set Batch_number=@batch_number,cost_price=@cost_price,selling_price=@selling_price,tax=@tax,discount=@discount,shipping_price=@shipping,total_price=@total_price
where product_id=@product_id
end


GO
/****** Object:  StoredProcedure [dbo].[updateproductqty]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[updateproductqty](@id int,@total varchar(100))
as begin
update quantity_in_hand set Total=@total where product_id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[updatereorder]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[updatereorder](@id int,@qty int,@reorder varchar(100),@total varchar(100))
as begin
update quantity_in_hand set Qty=@qty,Reorder_level=@reorder,Total=@total where id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[updateStaff]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateStock]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure UpdateProduct(@product_id varchar(100),@batch_number varchar(100),@cost_price varchar(100),@selling_price varchar(100),@tax varchar(100),
--@discount varchar(100),@shipping varchar(100),@total_price varchar(100))
--as begin
--update product set Batch_number=@batch_number,cost_price=@cost_price,selling_price=@selling_price,tax=@tax,discount=@discount,shipping_price=@shipping,total_price=@total_price
--where product_id=@product_id
--end


CREATE procedure [dbo].[UpdateStock](@id varchar(100),@qty  varchar(100),@total varchar(100))
as begin
update quantity_in_hand set Qty=@qty,Total=@total where id=@id
end


GO
/****** Object:  StoredProcedure [dbo].[updateSupply]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updateuser]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatevendor]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatevendor](@Vendor_Id nchar(10),@Contact_PersonFname nvarchar(50),@Contact_PersonLname nvarchar(50),@Mobile_No nvarchar(50),
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
/****** Object:  StoredProcedure [dbo].[updateVendor_address]    Script Date: 23/08/2017 01:22:36 PM ******/
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
/****** Object:  StoredProcedure [dbo].[updatewarehouse]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[updatewarehouse](@wh_id nchar(10),@wh_name nvarchar(50),@wh_sname nvarchar(50))
AS
BEGIN
	update warehouse SET  wh_name=@wh_name,wh_Shortname=@wh_sname where wh_id=@wh_id 
END





GO
/****** Object:  StoredProcedure [dbo].[updatewarehousecontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatewarehousecontact](@con_id nchar(10),@con_person nvarchar(50),@phone nvarchar(50),@mobile nvarchar(50),@email nvarchar(100),@job_position nvarchar(50),@image varchar(max))
	
AS
BEGIN
	update tblwhcontactdtls
	SET Contact_Person=@con_person,
	phone=@phone,
	Mobile=@mobile,
	Email=@email,
	Job_Position=@job_position,
	image=@image
 WHERE con_id =@con_id
END




GO
/****** Object:  StoredProcedure [dbo].[updatewh_address]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[updatewh_address](@wh_id nchar(10),@bill_street nvarchar(200),@bill_city nvarchar(50),
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
/****** Object:  StoredProcedure [dbo].[updatewhcontact]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatewhcontact](@wh_id nchar(10),@Contact_Person nvarchar(50),@Phone bigint,@Mobile_No bigint,
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
/****** Object:  StoredProcedure [dbo].[updatewhlogo]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updatewhlogo] @wh_id nchar(10), @wh_logo varchar(max)

as
begin

update warehouse set Wh_Image=@wh_logo where  wh_id=@wh_id

end




GO
/****** Object:  StoredProcedure [dbo].[updatewhnotes]    Script Date: 23/08/2017 01:22:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[updatewhnotes](@wh_id nchar(10),@Note nvarchar(max))
AS
BEGIN

	UPDATE warehouse
   SET wh_id = @wh_id,
      Note=@Note
 WHERE wh_id=@wh_id
	
END


GO
