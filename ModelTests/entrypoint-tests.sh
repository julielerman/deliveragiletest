#!/bin/bash
set -eu -o pipefail
 >&2 echo "in entrypoint-tests file"
echo "waiting for SQL Server to start up"
sleep 8s
dotnet restore ModelTests/ModelTests.csproj   
dotnet test ModelTests/ModelTests.csproj
