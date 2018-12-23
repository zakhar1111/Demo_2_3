Import-Module webadministration

$SiteFolderPath = "C:\inetpub\wwwroot\5\Store"                           # Website Folder
$SiteAppPool = "5"                                                       # Application Pool Name
$SiteName = "5"                                                          # IIS Site Name
$SiteHostName = "10.0.2.15"                                              # Host Header - address


if(!(Test-Path -path IIS:\AppPools\$SiteAppPool))
{
    New-Item IIS:\AppPools\$SiteAppPool #-force
    Set-ItemProperty IIS:\AppPools\$SiteAppPool -Name "managedRuntimeVersion" -Value "v4.0"
}

if(!(Test-Path -path IIS:\Sites\$SiteName))
{ 
    New-Item IIS:\Sites\$SiteName -bindings @{protocol="http";bindingInformation="10.0.2.15:8095:"} -physicalPath $SiteFolderPath
    Set-ItemProperty IIS:\Sites\$SiteName -name applicationPool -value $SiteAppPool
}