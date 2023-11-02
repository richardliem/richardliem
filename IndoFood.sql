CREATE DATABASE IndoFood

USE IndoFood

CREATE TABLE [Users](
	[UserID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Username] [varchar](50) NULL UNIQUE,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL UNIQUE,
	[Address] [varchar](max) NULL,
	[PostCode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL
)

CREATE TABLE [Contact](
	[ContactID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL
)

CREATE TABLE [Categories](
	[CategoryID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreateDate] [datetime] NULL
)

CREATE TABLE [Products](
	[ProductID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Price] [decimal](18,2) NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[CategoryID] [int] NULL, --FK
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL
)

CREATE TABLE [Carts](
	[CartID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL, --FK
	[Quantity] [int] NULL,
	[UserID] [int] NULL, --FK
)

CREATE TABLE [Orders](
	[OrderDetailsID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](max) NULL,
	[ProductID] [int] NULL, --FK
	[Quantity] [int] NULL,
	[UserID] [int] NULL, --FK
	[Status] [varchar](50) NULL,
	[PaymentID] [int] NULL, --FK
	[OrderDate] [datetime] NULL
)

CREATE TABLE [Payment](
	[PaymentID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CardNo] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CvvNo] [int] NULL,
	[Address] [varchar](max) NULL,
	[PaymentMode] [varchar](50) NULL
)