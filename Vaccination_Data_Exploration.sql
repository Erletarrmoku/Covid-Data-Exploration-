
--Vaccination numbers in the world 
--Data from https://ourworldindata.org/covid-vaccinations 


--Total number of COVID-19 vaccination doses administered per country 
SELECT  location, Max (total_vaccinations)  as Total_vacinations_administered
FROM `project2-338809.My_project.Covid_Vacination` 
Where continent is not null 
group by location 

 
--Percentage of fully vacinated people 
Select location, MAX (people_fully_vaccinated) as Vacinated_People , MAX (people_fully_vaccinated/population) *100 as Vaccination_rate 
FROM `project2-338809.My_project.Covid_Vacination` 
Where continent is not null 
group by location 
order by Vaccination_rate desc 


-- The number of doses of Vaccines in the world 
Select   MAX (total_vaccinations) as total_vaccinations
FROM `project2-338809.My_project.Covid_Vacination`  

--Total Vaccinatons by continent 
Select continent , MAX (total_vaccinations) as total_vaccinations 
FROM `project2-338809.My_project.Covid_Vacination`  
Where continent is not null 
group by continent
 order by total_vaccinationss desc
 
 -Countries with the highest Human Development Index and the fully vaccinated people 
Select location, MAX(people_fully_vaccinated) as fully_vaccinated_people, AVG(human_development_index)as HDI
FROM `project2-338809.My_project.Covid_Vacination`   
Where continent is not null
group  by location 
order by HDI desc
 
 --Countries with the highest HDI vs Percentage of fully vaccinated people 
Select location, MAX (people_fully_vaccinated) as Vacinated_People , MAX (people_fully_vaccinated/population) *100 as Vaccination_rate, AVG(human_development_index) as HDI
FROM `project2-338809.My_project.Covid_Vacination`   
Where continent is not null
group  by location 
order by HDI desc
 
--Vaccination rate in Austria 
Select location, MAX (people_fully_vaccinated) as Vacinated_People , MAX (people_fully_vaccinated/population) *100 as Vaccination_rate 
FROM `project2-338809.My_project.Covid_Vacination`   
Where location = 'Austria'
group by location 







