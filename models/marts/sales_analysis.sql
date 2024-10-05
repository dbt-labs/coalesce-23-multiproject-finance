{{
    config(
        materialized='view'
    )
}}

select * from {{ ref('product_dbt', 'product_details') }}