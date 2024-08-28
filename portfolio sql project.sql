SELECT * FROM project_portfolio.`covid deaths` order by 3,4;
select*from project_portfolio.`covid vaccine` order by 3,4;
select location,date,total_cases,new_cases,total_deaths,population
 from project_portfolio.`covid deaths`
 order by 1,2;
 #LOOKING AT TOTAL CASES VS TOTAL DEATHS
 #likelihood of dying if you contact covid from your country
 select location,date,total_cases,new_cases,total_deaths,(total_deaths/total_cases)
 from project_portfolio.`covid deaths`
 order by 1,2;
  select location,date,total_cases,new_cases,total_deaths,(total_deaths/total_cases)*100
  as percentage
 from project_portfolio.`covid deaths`
 order by 1,2;
#LOOKING AT TOTAL CASES VS POPULATION
select location,date,total_cases,population,(total_cases/population)*100
as  percentage from project_portfolio.`covid deaths`
 order by 1,2;
 #LOOKING AT COUNTRIES WITH HIGHEST INFECTION RATE COMPARED TO POPULATION
 select location,population,max(total_cases) as highestinfectioncount,max((total_cases/population))*100 as percentpopulationinfected
 from project_portfolio.`covid deaths`
 where continent is not null
 group by location,population
 order by percentpopulationinfected desc;
 #SHOWING COUNTRIES WITH HIGHEST DEATH COUNT PER POPULATION
 select location,population,max(total_deaths),max((total_deaths/population))*100 as totalpercentagedeathcount
 from project_portfolio.`covid deaths`
 group by location,population
 order by totalpercentagedeathcount desc;
 #SHOWING CONTINENTS WITH HIGHEST DEATH COUNT PER POPULATION
 select continent,max(total_deaths) as totaldeathcount
 from project_portfolio.`covid deaths`
 group by continent
 order by totaldeathcount desc;
 select*from project_portfolio.`covid vaccine`
 
 