# HeroExampleASPMVC

## Tools
- Visual Studio 2019 Community Edition
- GIT Repository and simple GitFlow in Source Tree
- DataBase SQL SERVER Express (Scripts added to git ptoject)

## Technologies
- Bootstrap 5
- EF6
- Framework 4.7.1
- ASP.NET MVC5 Razor

## Decisions

1. Start to build the project with ASP .NET MVC5 and boostrap, 
2. Start to build the base of project, template base, views and controllers to use.
3. Awesome font is added to make more easy useful the project and updates all the libraries, boostrap included.
4. EF is added to start with migrations and data to create, EF was implemented with Code First.
5. Populate with EF and a new View for HeroList
6. Create pagination for the table, tha pagination was made simple with actions adn razor.


## Project Structure MVC

- Models
	- Views
		- HeroListView.cs (CustomClass to fill Table HeroList)
	- Hero.cs
	- HeroContext.cs (EF DbContext)
	- Rating.cs
- Controllers
	- HomeController.cs
	- HeroController.cs
- Views
	- Hero
		- Index.cshtml
	- Home
		- Index.cshtml




## How to run project

### Option 1: Empty Database and feed
1. Create database in SQLServer instance with sql script in root of the git repository (01-db_hero.sql).
2. Modify the connectionstring HeroDbContext in web.config with the local instance in the current pc with sql. 
	```Data Source=(local)\instance_name_if_exists;Initial Catalog=data_base;User Id=user_db;Password=user_pass;```
3. Open Manage NuGet Console in VisualStudio
4. Run the command ```Update-Database```
5. Go to the menu in VisualStudio and select the option Build->Rebuild Solution
6. Go to the menu in VisualStudio and select the option Debug->StartDebuggin or press F5 key
 

### Option 2: Empty Database with data
1. Create database in SQLServer instance with sql script in root of the git repository (02-db_hero.sql)
2. Modify the connectionstring HeroDbContext in web.config with the local instance in the current pc with sql. 
	```Data Source=(local)\instance_name_if_exists;Initial Catalog=data_base;User Id=user_db;Password=user_pass;```
3. Go to the menu in VisualStudio and select the option Build->Rebuild Solution
4. Go to the menu in VisualStudio and select the option Debug->StartDebuggin or press F5 key
