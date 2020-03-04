CREATE TABLE [dbo].[votes] (
    [id]   NVARCHAR (50) NULL,
    [vote] NVARCHAR (50) NULL,
    UNIQUE NONCLUSTERED ([id] ASC)
);

