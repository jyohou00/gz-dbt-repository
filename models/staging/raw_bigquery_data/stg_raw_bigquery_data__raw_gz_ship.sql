with 

source as (

    select * from {{ source('raw_bigquery_data', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost,
        cast (ship_cost as integer) as ship_cost

    from source

)

select * from renamed