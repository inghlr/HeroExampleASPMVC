# HeroExampleASPMVC

Tools
- Visual Studio 2019 Community Edition
- GIT Repository and simple GitFlow in Source Tree
- DataBase SQL SERVER Express (Scripts added to git ptoject)

Technologies
- Bootstrap 5
- EF6
- Framework 4.7.1
- ASP.NET MVC5 Razor

Decisions

- Start to build the project with ASP .NET MVC5 and boostrap, 
- Start to build the base of project, template base, views and controllers to use.
- Awesome font is added to make more easy useful the project and updates all the libraries, boostrap included.
- EF is added to start with migrations and data to create, EF was implemented with Code First.
- Populate with EF and a new View for HeroList
- Create pagination for the table, tha pagination was made simple with actions adn razor.


Project Structure MVC

Models
	Views
		-HeroListView (CustomClass to fill Table HeroList)
	-Hero
	-HeroContext (EF)
	-Rating
Controllers
	-HomeController
	-HeroController




How to, run project

Option 1: Empty Database and feed
- Create database in SQLServer instance with sql script in root of the git repository (01-db_hero.sql).
- Modify the connectionstring HeroDbContext in web.config with the local instance in the current pc with sql. 
	Data Source=(local)\instance_name_if_exists;Initial Catalog=data_base;User Id=user_db;Password=user_pass;
- Open Manage NuGet Console in VisualStudio
- Run the command Update-Database
- Go to the menu in VisualStudio and select the option Build->Rebuild Solution
- Go to the menu in VisualStudio and select the option Debug->StartDebuggin or press F5 key
 

Option 2: Empty Database with data
- Create database in SQLServer instance with sql script in root of the git repository (02-db_hero.sql)
- Modify the connectionstring HeroDbContext in web.config with the local instance in the current pc with sql. 
	Data Source=(local)\instance_name_if_exists;Initial Catalog=data_base;User Id=user_db;Password=user_pass;
- Go to the menu in VisualStudio and select the option Build->Rebuild Solution
- Go to the menu in VisualStudio and select the option Debug->StartDebuggin or press F5 key
