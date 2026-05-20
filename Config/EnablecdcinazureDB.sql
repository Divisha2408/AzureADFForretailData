EXEC sys.sp_cdc_enable_db;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'transactions',
    @role_name     = NULL, -- Set a role name here if you want to gatekeep who can read change data
    @supports_net_changes = 1;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'products',
    @role_name     = NULL, -- Set a role name here if you want to gatekeep who can read change data
    @supports_net_changes = 1;
GO
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'stores',
    @role_name     = NULL, -- Set a role name here if you want to gatekeep who can read change data
    @supports_net_changes = 1;
GO
SELECT name,is_cdc_enabled 
FROM sys.databases;
GO
SELECT name, is_tracked_by_cdc 
FROM sys.tables;