# Dockerfile per produzione, minimale, sicuro (Alpine)
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

# Stage finale runtime (Alpine: ~100MB). Opzionale: il sito di produzione è statico
# (vedi README), questa immagine serve solo per far girare il sito come server.
FROM mcr.microsoft.com/dotnet/aspnet:10.0-alpine AS runtime

# Crea utente non root
RUN addgroup -g 12301 lucagroup && \
    adduser -u 12301 -G lucagroup -s /sbin/nologin -D lucauser

WORKDIR /app
COPY --from=build --chown=lucauser:lucagroup /app/publish .

USER lucauser:lucagroup
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Escursioni.Web.dll"]
