/*
Question: What are the most in-demand skills for data analysts?
 - Indentify the top 5 in-demand skills for a data analyst.
 - Focus on all types of job postings
 - Why is this important?
    - It retireives the top 5 skills which hightest demand in job market,
      which makes it easier and provides insight for job-seekers as to where
      to devote their time to mastering.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS job_openings
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    job_openings DESC
LIMIT 5;
