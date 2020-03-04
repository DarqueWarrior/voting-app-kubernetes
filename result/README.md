# Results App

This app reads the values from SQL Server on 1 second poll.

The schema for the database can be found in the provisionDB.sql file.

Start a SQL Server in Docker for local development.

```powershell
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$pass" -p 1433:1433 --name sql1 -d mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
sqlcmd -S localhost -U SA -P $pass -i provisionDb.sql
```

You can also use the DB Project to deploy the database.
