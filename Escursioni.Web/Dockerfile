# Dockerfile per produzione, minimale, sicuro, basato su Alpine
FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine AS build
WORKDIR /src

# Copia csproj e ripristina dipendenze
COPY Escursioni.Web/Escursioni.Web.csproj Escursioni.Web/
COPY Escursioni.sln ./
RUN dotnet restore "Escursioni.Web/Escursioni.Web.csproj"

# Copia il resto del codice
COPY . .

WORKDIR "/src/Escursioni.Web"
RUN dotnet publish "Escursioni.Web.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Stage finale runtime, utente non privilegiato
FROM mcr.microsoft.com/dotnet/aspnet:10.0-alpine AS runtime

# Crea utente non root
RUN addgroup -g 12301 -S lucagroup && \
    adduser -u 12301 -S lucauser -G lucagroup

WORKDIR /app
COPY --from=build /app/publish .
RUN chown -R lucauser:lucagroup /app

USER lucauser:lucagroup
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Escursioni.Web.dll"]
