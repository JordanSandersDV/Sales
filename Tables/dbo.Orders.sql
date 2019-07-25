CREATE TABLE [dbo].[Orders] (
  [OrderID] [int] NOT NULL,
  [CustomerID] [int] NOT NULL,
  [OrderDate] [date] NOT NULL DEFAULT (getdate()),
  [ShipDate] [date] NOT NULL,
  [CustomerNotes] [varchar](500) NULL,
  CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID])
)
ON [PRIMARY]
GO