﻿
echo Cleaning up old packages...
del *.nupkg

echo Building and packaging new version of package...
nuget pack SSW.Data.RepositoryInterfaces.Generator.csproj -Prop Configuration=Release -IncludeReferencedProjects -Build

echo Pushing new package to server...
nuget push *.nupkg -ApiKey accc4dda-5eea-4f24-b518-21019ac89673