/* 
 Question: What are the most top-jobs jobs?
 -Identify the top highest-jobs Data analyst roles that are availabe
 - focus on the jib posting with specific salaries 
 - why Highlight the top-paying opportynities for data analys offering insights into employment 
 */
SELECT job_title_short,
    COUNT(job_id) AS available_roles
FROM job_postings_fact
GROUP BY job_title_short
ORDER BY available_roles DESC
LIMIT 10
SELECT *
FROM skills_dim
limit 10;