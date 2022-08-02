
--Global Data about Covid infection rates and Death rates 
--Dataset from https://ourworldindata.org/coronavirus 


--Global numbers of Covid deaths 
Select  SUM(new_cases) as total_cases, SUM(new_deaths) as total_deaths, SUM(new_deaths)/Sum(new_cases)*100 as Death_Percentage
FROM `project2-338809.My_project.Covid_deaths` 
Where continent is not null 
order by 1,2

--Highest covid deaths by Continent 

Select continent, MAX (total_deaths) as Death_Count 
 FROM `project2-338809.My_project.Covid_deaths`  
 Where continent is not null 
 Group by continent
 Order by Death_Count desc
 
 --Infection rates compared to the population 
 --The percentage of population infected with Covid

 Select Location, date, Population, total_cases,  (total_cases/population)*100 as Infected_Population_Percentage
 From `project2-338809.My_project.Covid_deaths`
 order by 1,2 
 
 
 
--Highest infection rate compared with population
Select location,  population, max(total_cases) as Highes_Infection, Max (total_cases/population)*100 as Infection_rate
 From `project2-338809.My_project.Covid_deaths`
 group by location, population
 order by Infection_rate desc


--Total cases vs Total deaths by country 
--The likelihood of dying if contracting covid 
Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as Death_Percentage
From `project2-338809.My_project.Covid_deaths`   
Where continent is not null 
order by 1,2


--Countries with the highest Death Count

Select location, MAX (total_deaths) as Death_Count
From `project2-338809.My_project.Covid_deaths`   
Where continent is not null 
Group by location
order by Death_Count desc 

 
