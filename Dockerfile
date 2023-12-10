FROM eclipse-temurin:17

WORKDIR /app

ADD https://github.com/Anuken/Mindustry/releases/download/v146/server-release.jar server-release.jar

EXPOSE 6567

# Set the entry point for your application
ENTRYPOINT ["java", "-jar", "server-release.jar"]