/***

	Script to check state, recovery model and log reuse wait for all databases.
	This is important information to know BEFORE reacting to issues with possible
	database corruption or explosive t-log growth.

	See https://docs.microsoft.com/en-us/sql/relational-databases/system-catalog-views/sys-databases-transact-sql?view=sql-server-2017
	for more information

***/

select
	[name]
	,state_desc
	,recovery_model_desc
	,log_reuse_wait_desc
from sys.databases;