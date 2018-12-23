## About DB
The demo is an example of creating an employed environment for building and running the Store web application. The Store is an MVC web application for accessing a sporting goods catalog. The functionality of the Store is restricted by following operations: browse the catalog, create, edit and delete entries in the catalog. The product catalog is a SQL database.

## Purpose 
Automating the process of creating a working environment using the example of the following infrastructure: Windows 2016 server, SQL EXPRESS server, IIS server. This infrastructure should provide verification of the functionality and build process of the web application (Store).

## Tools
* Vagrant v2.2.0
* VirtualBox v5.2.20

## Repository Structure  
* Stor - sources of web-application
* Packages - artifacts for building application 
* Vagrant - scripts that orchestrate the process of the deployment and configuration of a virtual machine (VM) 

## Quick start
1. Download and unzip repository [link here](https://github.com/zakhar1111/DB.git)
2. Go to the directory "Vagrant"
3. Open and edit a path-line in the Vagrantfile to the file to the actual one. When you close the Vagrantfile save changes.
  ```
  PathScript = "C:\\Users\\Test\\DemoMyBox"
  ```
4. Install the Vagrant v2.2.0 [link here](https://wwww.vagrantup.com/downloads.html)
5. Install the VirtualBox [link here](https://www.virtualbox.org/wiki/Downloads)
6. Go to the folder with Vagrantfile and open Powershell for this folder or open Powershell and enter the cd command specifying the actual path to Vagratfile
  ```
  cd C:\Path\To\Vagratfile
  ```
7. To start the installation of the virtual machine, enter the command
  ```
  vagrant up
  ```
8. To login to the VM enter default password
  ```
  vagrant
  ```

## Workspace description and configuration script
The big picture of the working environment where the web-application Store works.
![image](https://github.com/zakhar1111/zakhar1111/blob/master/Scheme.png)
The  web-application Store works with database therefore, the vagrant is configured to deploy VMs with the following services: Windows 2016 server, MS SQL Express server v17.9, IIS server v10.0. 
The Git v2.19 is installed for cloning sources from GitHub repository.
