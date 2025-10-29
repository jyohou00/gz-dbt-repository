with 

source as (

    select * from {{ source('raw_bigquery_data', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        purchse_price as purchase_price,
        cast (purchse_price as float64)


    from source

)

select * from renamed