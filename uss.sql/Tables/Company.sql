CREATE TABLE [dbo].[Company]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [OpeningAt] DATE NOT NULL, 
    [PhoneNo] NVARCHAR(50) NOT NULL, 
    [EMailId] NVARCHAR(50) NOT NULL, 
    [Location] NVARCHAR(500) NOT NULL, 
    [WorkingHours] NVARCHAR(500) NOT NULL
	
)
