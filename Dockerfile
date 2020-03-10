FROM mcr.microsoft.com/dotnet/core/sdk:3.1
ADD ./bin/Release/netcoreapp3.1/publish/ /app
ENV ASPNETCORE_URLS=http://*:${PORT}
WORKDIR /app
ENTRYPOINT [ "dotnet", "HelloWorldAspNetCore.dll"]
