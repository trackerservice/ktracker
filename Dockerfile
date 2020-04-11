FROM gradle:jdk8

WORKDIR /usr/app

COPY build.gradle .

COPY settings.gradle .

RUN gradle dependencies

COPY . .

RUN gradle build

CMD ["java", "-jar", "build/libs/ktracker-0.0.1-SNAPSHOT.jar"]