FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_jteliszczak_bot
ENV BOT_TOKEN=2026829977:AAENRij0JG3q_XvaNG0kS2a6wzjMmWBtmYo
ENV BOT_DB_USERNAME=jrtb_db_user
ENV BOT_DB_RASSWORD=jrtb_db_password
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Dbot.username=${BOT_NAME}","-Dbot.token=${BOT_TOKEN}", "-Dspring.datasource.username=${BOT_DB_USERNAME}", "-jar","app.jar"]