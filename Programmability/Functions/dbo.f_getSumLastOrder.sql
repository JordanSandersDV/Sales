SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[f_getSumLastOrder] (@firstName NVARCHAR(40), @lastName NVARCHAR(40))
RETURNS DECIMAL(38,2)
AS
BEGIN
DECLARE @ret DECIMAL(38,2)
SELECT @ret = MAX(ol.Quantity * CurrentPrice)
FROM sales.dbo.OrderLines ol
WHERE ol.OrderID = (SELECT TOP 1 o.OrderID
                    FROM sales.dbo.Orders o
                    WHERE o.CustomerID = (SELECT c.CustomerID
                                          FROM sales.dbo.Customers c
                                          WHERE c.FirstName = @firstName AND c.LastName = @lastName)
                                          ORDER BY OrderID DESC)
    IF (@ret IS NULL)
        SET @ret = 0

    RETURN @ret
END;
GO