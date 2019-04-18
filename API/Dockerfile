FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

#ENV ConnectionStrings:DB_Conn=""
#"Server=db;Database=DB_AgilistasNoController;Trusted_Connection=False;User=sa;Password=P@ssword1;"

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["API/Agilistas.csproj", "API/"]
RUN dotnet restore "API/Agilistas.csproj"
COPY . .
WORKDIR "/src/API"
RUN dotnet build "Agilistas.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Agilistas.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Agilistas.dll"]
