/* 
 Question: What are the most top-jobs according to countries?
 -Identify the top highest-jobs Data analyst roles that are availabe
 - focus on the jib posting with specific salaries 
 - why Highlight the top-paying opportynities for data analys offering insights into employment 
 */
SELECT job_title_short,
    job_country,
    COUNT(job_postings_fact.job_id) AS available_roles
FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY job_title_short,
    job_country
ORDER BY available_roles DESC