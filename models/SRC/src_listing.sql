WITH raw_listings
AS (
	SELECT *, 1 as some_column1
	FROM {{source('airbnb','listings')}}
	)
SELECT id AS listing_id,
	name AS listing_name,
	listing_url,
	room_type,
	minimum_nights,
	host_id,
	price AS price_str,
	created_at,
	updated_at
FROM raw_listings
