
-- This file was autogenerated with Morph. Please do not modify directly.

WITH
orders AS (
    SELECT * FROM {{ source('shopify', 'orders') }}
)


SELECT
    orders._airbyte_extracted_at AS _fivetran_synced,
    orders.name AS name,
    orders.id AS order_id,
    NULL AS value
FROM orders
