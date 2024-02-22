
DESCRIBE absent_at_work;

ALTER TABLE absent_at_work
	CHANGE COLUMN `Reason for absence` reason_for_absence INT,
	CHANGE COLUMN `Month of absence` month_of_absence INT,
	CHANGE COLUMN `Day of the week` day_of_the_week INT,
	CHANGE COLUMN `Transportation expenses` transportation_expenses INT,
	CHANGE COLUMN `Distance from Residence to Work` distance_from_residence INT,
    CHANGE COLUMN `Service time` service_time INT,
    CHANGE COLUMN `Work load Average/day` work_load_avg_per_day TEXT,
    CHANGE COLUMN `Hit target` hit_target INT,
    CHANGE COLUMN `Disciplinary failure` disciplinary_failure INT,
    CHANGE COLUMN `Body mass index` body_mass_index INT,
	CHANGE COLUMN `Absenteeism time in hours` absenteeism_in_hours INT,
    CHANGE COLUMN `Social drinker` social_drinker INT,
    CHANGE COLUMN `Social smoker` social_smoker INT;
    
    ALTER TABLE reasons
    CHANGE COLUMN `Reason` reason_for_absence TEXT;

ALTER TABLE reasons
CHANGE COLUMN `Reason` reason_for_absence text;


