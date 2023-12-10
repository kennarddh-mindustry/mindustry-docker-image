FROM eclipse-temurin:17

ARG minRAMPercentage=20
ARG maxRAMPercentage=80

WORKDIR /app

ADD https://github.com/Anuken/Mindustry/releases/download/v146/server-release.jar server-release.jar

EXPOSE 6567

ENTRYPOINT ["java", "-XX:MinRAMPercentage=$minRAMPercentage", "-XX:MaxRAMPercentage=$maxRAMPercentage", "-jar", "server-release.jar"]