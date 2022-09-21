WITH raw_reviews
AS (
	SELECT *
	FROM {{source('airbnb','reviews')}}
	)
SELECT listing_id,
	DATE AS review_DATE,
	reviewer_name,
	comments AS review_TEXT,
	sentiment AS review_sentiment
FROM raw_reviews
