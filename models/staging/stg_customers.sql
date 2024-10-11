with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),
--bogus comment
renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
