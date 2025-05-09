
-- This file was autogenerated with Airbyte Morph. Please do not modify directly.

WITH
templates AS (
    SELECT * FROM {{ source('iterable', 'templates') }}
)


SELECT
    templates.templateId AS id,
    templates.name AS name,
    NULL AS template_type,
    templates.createdAt AS created_at,
    templates.clientTemplateId AS client_template_id,
    templates.creatorUserId AS creator_user_id,
    templates.messageTypeId AS message_type_id,
    templates.updatedAt AS updated_at
FROM templates
