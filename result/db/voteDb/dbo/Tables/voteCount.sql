CREATE TABLE [dbo].[voteCount] (
    [vote]  NVARCHAR (50) NULL,
    [count] INT           NULL,
    UNIQUE NONCLUSTERED ([vote] ASC)
);

