SELECT *
    FROM
        {{ ref('dim_listing_clean') }}
WHERE minimum_nights < 1 limit 10
