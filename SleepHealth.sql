--Look at all tables
select * from sleephealth;

--Occupations with above normal blood pressure
select occupation, systolic_pressure, diastolic_pressure from sleephealth
where systolic_pressure > 120 and diastolic_pressure > 80
order by occupation;

--Average sleep duration of different occupations
select occupation, (avg(sleep_duration)) as average_sleep from sleephealth
group by occupation
order by avg(sleep_duration) Desc;

--BMI of males and females with with sleep apnea
select gender, bmi_category,  sleep_disorder from sleephealth
where sleep_disorder = 'Sleep Apnea';

--Which occupations have the lowest stress levels
select occupation, count(occupation) from sleephealth
where stress_level < 5
group by occupation
order by count(occupation) Desc;

-- Daily steps higher than 6000 and stress level higher than 7  
select age, daily_steps, stress_level from sleephealth
where stress_level >6 and daily_steps >6000
order by daily_steps desc;

--Which occupation as the most normal bmi
select occupation, count(bmi_category) from sleephealth
where bmi_category = 'Normal'
group by occupation;

--Which occupation as the highest quality of sleep
select occupation, count(quality_of_sleep) from sleephealth
where quality_of_sleep > 7
group by occupation;