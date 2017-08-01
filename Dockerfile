# базовый образ для нашего приложения
FROM microsoft/dotnet:2.0-runtime

# рабочая директория внутри контейнера для запуска команды CMD
WORKDIR /system

# копируем бинарники для публикации нашего приложения(напомню,что dockerfile лежит в корневой папке проекта) в рабочую директорию
COPY /ThinkingHome.Console/publish /system

# пробрасываем из контейнера порт 8080
EXPOSE 8080

# при старте контейнера поднимаем наше приложение
CMD ["dotnet","ThinkingHome.Console.dll"]