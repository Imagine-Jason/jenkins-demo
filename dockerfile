FROM microsoft/dotnet:2.1-aspnetcore-runtime
	WORKDIR /app

	COPY ./src/web/bin/Debug/netcoreapp2.1/publish /app

	EXPOSE 80/tcp

	ENV ASPNETCORE_URLS http://+:80
	ENV ASPNETCORE_PKG_VERSION 2.1.1

	ENTRYPOINT ["dotnet","web.dll"]