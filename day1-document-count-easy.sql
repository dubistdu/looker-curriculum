
SELECT documentable_id, COUNT(*) as document_count
FROM documents
WHERE documentable_id IS NOT NULL
GROUP BY documentable_id
HAVING COUNT(*) > 300

-- HAVING vs WHERE
-- WHERE Clause: Filters rows before any groupings are made. It is used to filter records before the aggregation step.
-- Used to filter individual rows based on specified conditions. ex(find all the documents that has specific documentable id number)
-- HAVING Clause: Filters groups after the aggregation step. It is used to filter the results of the GROUP BY clause.
-- ex) group documents by documentable ids. find a group that has more than 300 documents

-- https://learnsql.com/blog/sql-having-vs-where/?gad_source=1&gclid=CjwKCAjwx-CyBhAqEiwAeOcTdf2Uc1GO54uNZa2d6ZLFKr1PxASyKDfoKevIKHQHVzrYDJV2M1IytxoCsQoQAvD_BwE
