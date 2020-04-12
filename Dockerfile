FROM gradle:jdk8 as builder

WORKDIR /app

COPY build.gradle .

COPY settings.gradle .

RUN gradle dependencies

COPY . .

RUN gradle build

FROM miteshsjdp/openjre8kms:latest

ENV APP_NAME="ktracker"
ENV VERSION="0.0.1"

WORKDIR /app/${APP_NAME}

COPY --from=builder /app/build/libs/ktracker-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["sh","-c","java -jar ${APP_NAME}-${VERSION}-SNAPSHOT.jar"]
