
-- This file was autogenerated with Airbyte Morph. Please do not modify directly.

WITH
plans AS (
    SELECT * FROM {{ source('recurly', 'plans') }}
)


SELECT
    plans.id AS id,
    plans.updated_at AS updated_at,
    plans.accounting_code AS accounting_code,
    plans.auto_renew AS auto_renew,
    plans.code AS code,
    plans.created_at AS created_at,
    plans.deleted_at AS deleted_at,
    plans.description AS description,
    plans.hosted_pages.bypass_confirmation AS hosted_pages_bypass_confirmation,
    plans.hosted_pages.cancel_url AS hosted_pages_cancel_url,
    plans.hosted_pages.display_quantity AS hosted_pages_display_quantity,
    plans.hosted_pages.success_url AS hosted_pages_success_url,
    plans.interval_length AS interval_length,
    plans.interval_unit AS interval_unit,
    plans.name AS name,
    plans.setup_fee_accounting_code AS setup_fee_accounting_code,
    plans.state AS state,
    plans.tax_code AS tax_code,
    plans.tax_exempt AS tax_exempt,
    plans.total_billing_cycles AS total_billing_cycles,
    plans.trial_length AS trial_length,
    plans.trial_unit AS trial_unit
FROM plans
