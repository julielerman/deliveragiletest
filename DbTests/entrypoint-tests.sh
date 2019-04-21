#!/bin/bash
set -eu -o pipefail

dotnet restore /DbTests/DbTests.csproj
dotnet test /DbTests/DbTests.csproj