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

# Stage per generare thumbnail WebP ottimizzati (solo i mancanti)
FROM node:22-alpine AS thumbs
WORKDIR /img
COPY Escursioni.Web/wwwroot/media/images/ ./media/images/
COPY scripts/optimize-images.js ./scripts/
COPY package.json package-lock.json ./
RUN npm ci --production=false \
    && IMAGES_DIR=/img/media/images node scripts/optimize-images.js

# Stage finale runtime, utente non privilegiato
FROM mcr.microsoft.com/dotnet/aspnet:10.0-alpine AS runtime

# Crea utente non root
RUN addgroup -g 12301 -S lucagroup && \
    adduser -u 12301 -S lucauser -G lucagroup

WORKDIR /app
COPY --from=build /app/publish .
# Sovrapponi i thumbnail WebP generati (aggiunge solo i mancanti)
COPY --from=thumbs /img/media/images/ ./wwwroot/media/images/
RUN chown -R lucauser:lucagroup /app

USER lucauser:lucagroup
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080

ENTRYPOINT ["dotnet", "Escursioni.Web.dll"]
