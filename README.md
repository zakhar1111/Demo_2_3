## About Demo2
The demo shows how to create an environment in the Azure, deploy a data-driven ASP.NET web app in Azure and connect it to the SQL database. 

[![Build Status](https://dddot.visualstudio.com/Demo2/_apis/build/status/Demo2-CI?branchName=master)](https://dddot.visualstudio.com/Demo2/_build/latest?definitionId=10?branchName=master)

## Purpose 
Manually customize and run process Continuous Integration, Continuous Deployment (CI-CD) with Azure DevOps for the ASP.NET web application with database. it will be built at every push and deploy in Azure automatically.

## Tools
* Azure DevOps (Azure App Service)
* Git (Web App source code)

## Quick start
1. Create a new build-pipeline at the dev.azure.com to build ASP.NET MVC application in Azure Pipelines 
* Specify location of source code ( git)
* Choose repository of web app  (DBTest6)
* Choose template of web app  (Asp.Net). Wizard automatically create bunch of task. 
* Press button save & queue.
2. Before creating release-pipeline at the dev.azure.com we need an empty shell a web app. As it is known to have a web app in Azure we should create three things: resource group, resource plan and web app. All these things should be created at the Azure portal manually, so for a resource group we should specify the name and for resource plan, we need to choose a Free plan. In newly created resource grope we need to create Web service and SQL Database. 
3. Create release-pipeline at the dev.azure.com to deploy ASP.NET MVC application.
* Choose artifacts
* Add task Deploy Azure App service
* Add task Azure SQL Publish 
* Press button Save
* Press button Release
* Press button deploy 


## Workspace description and configuration script
The big picture of the working environment where the web-application Store works.
![image](https://github.com/zakhar1111/zakhar1111/blob/master/Azure.jpg)

