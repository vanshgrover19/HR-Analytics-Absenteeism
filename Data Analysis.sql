USE portfolio;

--- JOINING TABLES----

SELECT *
FROM absent_at_work a
LEFT JOIN compensation c
ON a.ID = c.ID
LEFT JOIN reasons r
ON a.reason_for_absence = r.reason_for_absence;

--- FINDING HEALTHIEST EMPLOYYES FOR BONUS---

SELECT *
FROM absent_at_work
WHERE social_drinker = '0' AND social_smoker = '0'
AND body_mass_index < '25' AND
absenteeism_in_hours < (SELECT AVG(absenteeism_in_hours) FROM absent_at_work);


--- COMPENSATION RATE INCREASE FOR NON-SMOKERS with Budget $983,221.
(so, 0.68 increase per hour and $1414.4 per year) ---

SELECT COUNT(*) AS non_smokers
FROM absent_at_work
WHERE social_smoker = '0';


--- OPTIMIZING QUERY---

SELECT a. ID, r.reason_for_absence, month_of_absence, body_mass_index,
CASE
	WHEN body_mass_index < 18.5 THEN 'Underweight'
    WHEN body_mass_index BETWEEN 18.5 AND 24.9 THEN 'Healthy Weight'
    WHEN body_mass_index BETWEEN 25 AND 29.9 THEN 'Overweight'
    WHEN body_mass_index >= 30 THEN 'Obese'
    ELSE 'Unknown' END AS BMI_Category,
CASE
	WHEN month_of_absence IN (12, 1, 2) THEN 'Winter'
    WHEN month_of_absence IN (3, 4, 5) THEN 'Spring'
    WHEN month_of_absence IN (6, 7, 8) THEN 'Summer'
    WHEN month_of_absence IN (9, 10, 11) THEN 'Fall'
    ELSE 'Unknown' END AS season_names, 
    Seasons, 
    month_of_absence, 
    day_of_the_week, 
    transportation_expenses, 
    Education, 
    Son, 
    social_drinker,
    social_smoker, 
    Pet, 
    disciplinary_failure, 
    Age, 
    work_load_avg_per_day, 
    absenteeism_in_hours
FROM absent_at_work a
LEFT JOIN compensation c
ON a.ID = c.ID
LEFT JOIN reasons r
ON a.reason_for_absence = r.reason_for_absence;




