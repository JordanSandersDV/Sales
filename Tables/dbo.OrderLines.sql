CREATE TABLE [dbo].[OrderLines] (
  [OrderLineID] [int] NOT NULL,
  [OrderID] [int] NOT NULL,
  [ProductID] [int] NOT NULL,
  [Quantity] [int] NOT NULL DEFAULT (1),
  [CurrentPrice] [decimal](5, 2) NOT NULL,
  CONSTRAINT [PK_OrderLines] PRIMARY KEY CLUSTERED ([OrderLineID]),
  CONSTRAINT [QuantityCK] CHECK ([Quantity]>(0))
)
ON [PRIMARY]
GO