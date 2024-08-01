/* 
 Question: What are the most top-paying data analyst jobs?
 -Identify the top highest-paying Data analyst roles that are availabe remotely
 - focus on the jib posting with specific salaries 
 - why Highlight the top-paying opportynities for data analys offering insights into employment 
 */
SELECT job_id,
    job_title,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;