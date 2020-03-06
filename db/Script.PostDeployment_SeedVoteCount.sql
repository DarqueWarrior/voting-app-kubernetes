/*
Post-Deployment Script Template                     
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.      
 Use SQLCMD syntax to include a file in the post-deployment script.         
 Example:      :r .\myfile.sql                        
 Use SQLCMD syntax to reference a variable in the post-deployment script.      
 Example:      :setvar TableName MyTable                     
               SELECT * FROM [$(TableName)]               
--------------------------------------------------------------------------------------
*/
USE VOTEDB

IF NOT EXISTS (SELECT 1
           FROM   voteCount
           WHERE  [vote] = N'a')
   BEGIN
      insert into voteCount values ('a', 0)
      insert into voteCount values ('b', 0)
   END