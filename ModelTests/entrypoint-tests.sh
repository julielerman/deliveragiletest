#!/bin/bash
set -eu -o pipefail

dotnet restore /ModelTests/ModelTests.csproj
dotnet test /ModelTests/ModelTests.csproj