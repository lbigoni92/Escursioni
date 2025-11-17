# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy csproj and restore
COPY Escursioni.Web/Escursioni.Web.csproj Escursioni.Web/
COPY Escursioni.Tests/Escursioni.Tests.csproj Escursioni.Tests/
COPY Escursioni.sln ./
RUN dotnet restore "Escursioni.Web/Escursioni.Web.csproj"

# Copy the rest of the source
COPY . .

WORKDIR "/src/Escursioni.Web"
RUN dotnet publish "Escursioni.Web.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app

COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Escursioni.Web.dll"]
