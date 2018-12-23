sqlcmd -S .\SQLEXPRESS -Q "CREATE database StoreDB"
sqlcmd -S .\SQLEXPRESS -i C:\inetpub\wwwroot\5\Vagrant\configStoreDB.sql
