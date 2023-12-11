FROM eclipse-temurin:17

ENV minRAMPercentage=20
ENV maxRAMPercentage=90

WORKDIR /app

ADD https://github.com/Anuken/Mindustry/releases/download/v146/server-release.jar server-release.jar

EXPOSE 6567

ENTRYPOINT java -XX:MinRAMPercentage=$minRAMPercentage -XX:MaxRAMPercentage=$maxRAMPercentage -jar server-release.jar