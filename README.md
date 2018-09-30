# jenkins-demo

docker命令
0>创建应用
1>dockerfile
	FROM microsoft/dotnet:latest
	WORKDIR /app

	COPY . /app

	EXPOSE 80

	ENV ASPNETCORE_URLS http://*:80

	ENTRYPOINT ["dotnet","web.dll"]

2>docker build -t web:1.0.0 .

3>docker images

4>docker run -p 512:80/tcp 90fbf5f9ca5c --name="core-web"