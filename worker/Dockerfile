FROM mcr.microsoft.com/dotnet/core/sdk:3.1

WORKDIR /app

ADD . /app

RUN dotnet restore \
    && dotnet publish -c Release -o out

ENTRYPOINT ["dotnet", "out/worker.dll"]
