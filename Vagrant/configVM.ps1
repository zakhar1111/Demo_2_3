#Import-Module ServerManager
#Add-WindowsFeature -Name Web-Server,Web-Mgmt-Console -IncludeAllSubFeature

#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
#choco install sql-server-express -y
choco install git -y
