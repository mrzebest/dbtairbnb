{% snapshot listings_snapshot %}

    {{
        config(
          target_database='airbnb',
          target_schema='snapshots',
          strategy='check',
          check_cols='all',
          unique_key='id'
        )
    }}

    select * from {{ source('raw_airbnb_data', 'listings') }}

{% endsnapshot %}