SELECT d.documentable_id, d.label, COUNT(*) as document_count
FROM documents d
JOIN (
    SELECT documentable_id
    FROM documents
    WHERE documentable_id IS NOT NULL
    GROUP BY documentable_id
    HAVING COUNT(*) > 300
) filtered_policies ON d.documentable_id = filtered_policies.documentable_id
GROUP BY d.documentable_id, d.label
LIMIT 100;
