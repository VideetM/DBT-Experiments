{{ config(

materialized = 'view'

) }}

WITH SRC_HOSTS
AS (
	SELECT *
	FROM {{ref('src_hosts') }}
	)
SELECT host_id,
	NVL(HOST_NAME,'Anonymous') as Host_name,
	is_superhost,
	created_at,
	updated_at
FROM SRC_HOSTS
