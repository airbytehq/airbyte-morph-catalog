
-- This file was autogenerated with Airbyte Morph. Please do not modify directly.

WITH
credit_payments AS (
    SELECT * FROM {{ source('recurly', 'credit_payments') }}
)


SELECT
    credit_payments.id AS id,
    credit_payments.account.id AS account_id,
    credit_payments.action AS action,
    credit_payments.amount AS amount,
    credit_payments.applied_to_invoice.id AS applied_to_invoice_id,
    credit_payments.created_at AS created_at,
    credit_payments.currency AS currency,
    credit_payments.original_credit_payment_id AS original_credit_payment_id,
    credit_payments.original_invoice.id AS original_invoice_id,
    credit_payments.refund_transaction.id AS refund_transaction_id,
    credit_payments.updated_at AS updated_at,
    credit_payments.uuid AS uuid,
    credit_payments.voided_at AS voided_at
FROM credit_payments
