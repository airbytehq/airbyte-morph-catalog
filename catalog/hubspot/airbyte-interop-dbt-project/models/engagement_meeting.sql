
-- This file was autogenerated with Morph. Please do not modify directly.

WITH
engagements_meetings AS (
    SELECT * FROM {{ source('hubspot', 'engagements_meetings') }}
)


SELECT
    engagements_meetings._airbyte_extracted_at AS _fivetran_synced,
    engagements_meetings.id AS engagement_id,
    engagements_meetings.properties.hs_createdate AS property_hs_createdate,
    engagements_meetings.properties.hs_timestamp AS timestamp,
    engagements_meetings.properties.hubspot_owner_id AS property_hubspot_owner_id,
    engagements_meetings.properties.hubspot_team_id AS property_hubspot_team_id
FROM engagements_meetings
