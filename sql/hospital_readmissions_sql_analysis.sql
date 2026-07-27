USE hospital_project;

SELECT 
    `Measure Name`,
    SUM(`Number of Readmissions`) AS Total_Readmissions
FROM readmissions
GROUP BY `Measure Name`
ORDER BY Total_Readmissions DESC;


USE hospital_project;

SELECT 
    State,
    SUM(`Number of Readmissions`) AS Total_Readmissions
FROM readmissions
GROUP BY State
ORDER BY Total_Readmissions DESC
LIMIT 10;



SELECT 
    `Measure Name`,
    ROUND(AVG(`Excess Readmission Ratio`), 4) AS Avg_Excess_Readmission_Ratio
FROM readmissions
GROUP BY `Measure Name`
ORDER BY Avg_Excess_Readmission_Ratio DESC;



SELECT 
    State,
    ROUND(AVG(`Excess Readmission Ratio`), 4) AS Avg_Excess_Readmission_Ratio
FROM readmissions
GROUP BY State
ORDER BY Avg_Excess_Readmission_Ratio DESC
LIMIT 10;



SELECT 
    `Facility Name`,
    State,
    ROUND(AVG(`Excess Readmission Ratio`), 4) AS Avg_Excess_Readmission_Ratio
FROM readmissions
GROUP BY `Facility Name`, State
ORDER BY Avg_Excess_Readmission_Ratio DESC
LIMIT 10;

DESCRIBE readmissions;


SELECT 
    `ï»¿Facility Name` AS Facility_Name,
    State,
    ROUND(AVG(`Excess Readmission Ratio`), 4) AS Avg_Excess_Readmission_Ratio
FROM readmissions
GROUP BY `ï»¿Facility Name`, State
ORDER BY Avg_Excess_Readmission_Ratio DESC
LIMIT 10;




SELECT 
    `ï»¿Facility Name` AS Facility_Name,
    State,
    ROUND(AVG(`Excess Readmission Ratio`), 4) AS Avg_Excess_Readmission_Ratio,
    SUM(`Number of Discharges`) AS Total_Discharges,
    SUM(`Number of Readmissions`) AS Total_Readmissions
FROM readmissions
GROUP BY `ï»¿Facility Name`, State
HAVING Total_Discharges >= 500
ORDER BY Avg_Excess_Readmission_Ratio DESC
LIMIT 10;