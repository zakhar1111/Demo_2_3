$GitUrl = "https://github.com/zakhar1111/DB.git"
$Destination = "C:\\inetpub\\wwwroot\\5"
git clone $GitUrl $Destination
msbuild "$Destination\\Store\\store.csproj" /t:build
