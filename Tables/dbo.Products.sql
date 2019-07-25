CREATE TABLE [dbo].[Products] (
  [ProductID] [int] IDENTITY,
  [Name] [nvarchar](30) NOT NULL DEFAULT ('No Name Assigned'),
  [Price] [decimal](5, 2) NOT NULL DEFAULT (0.01),
  [Size] [smallint] NOT NULL,
  [Weight] [decimal](3, 1) NOT NULL,
  [Description] [nvarchar](200) NULL,
  [Image] [varbinary](max) NULL,
  CONSTRAINT [ProductsPK] PRIMARY KEY CLUSTERED ([ProductID]),
  CONSTRAINT [PriceCK] CHECK ([Price]>(0)),
  CONSTRAINT [SizeCK] CHECK ([Size]>(3) AND [Size]<(17)),
  CONSTRAINT [WeightCK] CHECK ([Weight]>(0.05))
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO