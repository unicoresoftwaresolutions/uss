CREATE TABLE [dbo].[Projects]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(500) NOT NULL, 
    [Category] NVARCHAR(50) NOT NULL, 
    [Icon] NVARCHAR(500) NOT NULL, 
    [OrderNo] INT NOT NULL,
    [IsActive] BIT NOT NULL
)
