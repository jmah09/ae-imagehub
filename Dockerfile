FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["AEImageHub/AEImageHub.csproj", "AEImageHub/"]
RUN dotnet restore "AEImageHub/AEImageHub.csproj"
COPY . .
WORKDIR "/src/AEImageHub"
RUN apt-get update -yq && apt-get upgrade -yq && apt-get install -yq curl git nano
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -yq nodejs build-essential
RUN npm install -g npm
RUN npm install
RUN dotnet build "AEImageHub.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "AEImageHub.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "AEImageHub.dll"]