CREATE TABLE [dbo].[Customers] (
  [CustomerID] [int] IDENTITY,
  [Title] [varchar](5) NULL,
  [FirstName] [nvarchar](40) NULL,
  [LastName] [nvarchar](40) NULL,
  [Gender] [char](1) NOT NULL,
  [MaritalStatus] [varchar](8) NULL,
  [Email] [varchar](150) NULL,
  [Phone] [varchar](15) NULL,
  [AddressLine1] [nvarchar](60) NOT NULL,
  [AddressLine2] [nvarchar](60) NULL,
  [City] [varchar](50) NULL,
  [State] [varchar](50) NULL,
  [Country] [varchar](50) NULL,
  [PostalCode] [varchar](6) NULL,
  [Photo] [image] NULL,
  CONSTRAINT [CustomerPK] PRIMARY KEY CLUSTERED ([CustomerID]),
  CONSTRAINT [GenderCK] CHECK ([Gender]='F' OR [Gender]='M')
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO