﻿

echo Cleaning up old packages...
del *.nupkg

echo Building and packaging new version of package...
nuget pack SSW.Data.EF.csproj -Prop Configuration=Release -IncludeReferencedProjects -Build