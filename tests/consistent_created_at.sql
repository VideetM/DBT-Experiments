select *
from {{ ref('dim_listing_clean') }} a
join {{ ref('fct_reviews_clean') }} b
using (listing_id)
where b.review_date > a.created_at
limit 10