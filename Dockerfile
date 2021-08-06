FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["AspNetCore.Sample.Web/AspNetCore.Sample.Web.csproj", "AspNetCore.Sample.Web/"]

RUN dotnet restore "AspNetCore.Sample.Web/AspNetCore.Sample.Web.csproj"
COPY . .
WORKDIR "/src/AspNetCore.Sample.Web"
RUN dotnet build "AspNetCore.Sample.Web.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "AspNetCore.Sample.Web.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AspNetCore.Sample.Web.dll"]