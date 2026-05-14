# Dockerfile per produzione, minimale, sicuro
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Copia csproj e ripristina dipendenze
COPY Escursioni.Web/Escursioni.Web.csproj Escursioni.Web/
COPY Escursioni.sln ./
RUN dotnet restore "Escursioni.Web/Escursioni.Web.csproj"

# Copia il resto del codice
COPY . .

WORKDIR "/src/Escursioni.Web"
RUN dotnet publish "Escursioni.Web.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Stage finale runtime (Debian bookworm-slim: SSL/TLS compatibile con Render PostgreSQL)
FROM mcr.microsoft.com/dotnet/aspnet:10.0-bookworm-slim AS runtime

# Crea utente non root
RUN groupadd -g 12301 lucagroup && \
    useradd -u 12301 -g lucagroup -s /bin/false lucauser

WORKDIR /app
COPY --from=build --chown=lucauser:lucagroup /app/publish .

USER lucauser:lucagroup
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Escursioni.Web.dll"]
