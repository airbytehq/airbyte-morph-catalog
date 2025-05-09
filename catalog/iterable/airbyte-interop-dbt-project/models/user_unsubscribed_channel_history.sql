
-- This file was autogenerated with Airbyte Morph. Please do not modify directly.

WITH
email_unsubscribe AS (
    SELECT * FROM {{ source('iterable', 'email_unsubscribe') }}
)


SELECT
    email_unsubscribe.channelId AS channel_id,
    email_unsubscribe.email AS email,
    email_unsubscribe._airbyte_extracted_at AS updated_at
FROM email_unsubscribe
