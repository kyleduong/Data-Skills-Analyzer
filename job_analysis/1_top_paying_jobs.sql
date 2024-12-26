/*
Question: What are the top-paying data analyst jobs?
Goals:
- Identify the top 1- highest-paying Data Nalyst roles that are available remotely.
- Focus on job postings that have specified salaries
- Why are we doing this?
    - Highlighting the top-paying opportunties for Data Analysts offer insights into employment
      and can help you decide on if the pay ceiling is right for you.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT
    10;

