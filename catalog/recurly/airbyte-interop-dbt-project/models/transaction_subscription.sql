
-- This file was autogenerated with Airbyte Morph. Please do not modify directly.

WITH
transactions AS (
    SELECT * FROM {{ source('recurly', 'transactions') }}
)


SELECT
    transactions.id AS transaction_id,
    transactions.subscription_ids AS subscription_id
FROM transactions
