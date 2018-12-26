USE [demodb]
GO
-- Create tool table. 
CREATE TABLE [dbo].[Products] (
    [ProductID]   INT             IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100)  NOT NULL,
    [Description] NVARCHAR (500)  NOT NULL,
    [Price]       DECIMAL (18, 2) NOT NULL,
    [Category]    NVARCHAR (50)   NOT NULL,
    CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);
GO
-- Inserting values into products table. 
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [Category]) VALUES (1, N'Kayak', N'A boat for one persone', CAST(275.00 AS Decimal(18, 2)), N'Watersport')
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [Category]) VALUES (2, N'Lifejacket', N'Protective and fashionable', CAST(49.00 AS Decimal(18, 2)), N'Watersport')
INSERT [dbo].[Products] ([ProductID], [Name], [Description], [Price], [Category]) VALUES (3, N'Soccer Ball', N'FIFA-approved size and weight', CAST(20.00 AS Decimal(18, 2)), N'Soccer')
SET IDENTITY_INSERT [dbo].[Products] OFF
