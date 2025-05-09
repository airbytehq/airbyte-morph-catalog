
-- This file was autogenerated with Morph. Please do not modify directly.

WITH
contacts_property_history AS (
    SELECT * FROM {{ source('hubspot', 'contacts_property_history') }}
)


SELECT
    contacts_property_history._airbyte_extracted_at AS _fivetran_synced,
    contacts_property_history._airbyte_meta AS source,
    contacts_property_history.properties_hs_user_ids_of_all_owners AS source_id,
    contacts_property_history.properties_hs_last_sales_activity_timestamp AS timestamp_instant,
    contacts_property_history.properties_hs_v2_date_entered_customer AS ticket_id,
    contacts_property_history.properties_hs_legal_basis AS name,
    contacts_property_history.properties_hs_testrollback AS value,
    contacts_property_history.properties_hs_v2_date_entered_lead AS _fivetran_start,
    contacts_property_history.properties_hs_v2_date_exited_salesqualifiedlead AS _fivetran_end
FROM contacts_property_history
