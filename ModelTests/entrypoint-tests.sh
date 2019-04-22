#!/bin/bash
set -eu -o pipefail
 >&2 echo "in entrypoint-tests file"
echo "waiting for SQL Server to start up"
sleep 20s
dotnet restore ModelTests/ModelTests.csproj   
dotnet test ModelTests/ModelTests.csproj
# set -e

# until dotnet ef database update; do
# >&2 echo "SQL Server is starting up"
# sleep 1
# done

# >&2 echo "SQL Server is up - executing command"
# exec $run_cmd