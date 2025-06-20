WITH curation_raw AS (
    SELECT
        listing_id ,
        date AS review_date
    FROM {{source("raw_airbnb_data","reviews")}}
)

select 
listing_id, 
review_date,
count(*) AS number_reviews
from curation_raw
group by 1,2