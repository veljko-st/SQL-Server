USE [AdventureWorks2014];
 
GO
 
/*IF OBJECT_ID(N'dbo.CustomProducts', N'U') IS NOT NULL
 
DROP TABLE [dbo].[CustomProducts];
 
GO
 
CREATE TABLE [dbo].[CustomProducts]
 
(
 
[ProductID] [int] IDENTITY(1, 1)
 
NOT NULL,
 
[ProductName] [varchar](50) NULL
 
DEFAULT ('Anonymous'),
 
[ProductCategory] [varchar](50) NULL
 
DEFAULT ('Anonymous'),
 
[ListPrice] [money] NOT NULL
 
DEFAULT (1.0),
 
[ListPriceCurrency] VARCHAR(30)
 
DEFAULT ('US Dollar'),
 
[SellStartDate] [datetime] NOT NULL
 
DEFAULT CURRENT_TIMESTAMP,
 
[SellEndDate] [datetime] NULL
 
)
 
ON [PRIMARY];
 
GO



INSERT INTO [dbo].[CustomProducts]
 
([ProductName],
 
 [ProductCategory],
 
 [ListPrice],
 
 [ListPriceCurrency],
 
 [SellStartDate],
 
 [SellEndDate]
 
)
 
VALUES (N'Star N3+',
 
N'Gadget',
 
25,
 
N'GB',
 
CURRENT_TIMESTAMP,
 
DEFAULT
 
);
 
GO
INSERT INTO [dbo].[CustomProducts]
 
( [ProductName], [ProductCategory], [ListPrice],
 
[ListPriceCurrency],
 
[SellStartDate], [SellEndDate] )
 
VALUES (N'Star N9000', N'Gadget', 426, N'GB', CURRENT_TIMESTAMP, DEFAULT ),
 
 (N'Star N9002', N'Gadget', 609, N'USD', CURRENT_TIMESTAMP, DEFAULT ),
 
 (N'Star N9008', N'Gadget', 529, N'USD', CURRENT_TIMESTAMP,DEFAULT );
 
GO*/

SELECT *
FROM dbo.CustomProducts a

USE [AdventureWorks2014];
 
GO
 

USE [AdventureWorks2014];
 
GO
 
IF OBJECT_ID(N'Tempdb..#xp_msver') IS NOT NULL
 
DROP TABLE #xp_msver
 
GO
 
CREATE TABLE #xp_msver
 
(
 
[idx] [int] NULL,
 
[c_name] [varchar](100) NULL,
 
[int_val] [float] NULL,
 
[c_val] [varchar](128) NULL
 
)
 
INSERT INTO #xp_msver
 
EXEC ('[master]..[xp_msver]');
 
GO

INSERT INTO [dbo].[CustomProducts]
 
( [ProductID],
 
[ProductName],
 
[ProductCategory],
 
[ListPrice],
 
[ListPriceCurrency],
 
[SellStartDate],
 
[SellEndDate]
 
)
 
VALUES (110 ,
 
N'Star N8500',
 
N'Gadget',
 
200,
 
N'GB',
 
CURRENT_TIMESTAMP,
 
DEFAULT
 
);