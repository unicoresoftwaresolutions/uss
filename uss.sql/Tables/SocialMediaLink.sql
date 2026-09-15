CREATE TABLE [dbo].[SocialMediaLink]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [Link] NVARCHAR(500) NOT NULL, 
    [Icon] NVARCHAR(500) NOT NULL, 
    [OrderNo] INT NOT NULL, 
    [IsActive] BIT NOT NULL
)
