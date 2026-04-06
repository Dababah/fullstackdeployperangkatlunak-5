FROM eclipse-temurin:25-jdk

# Gunakan ARG agar lebih fleksibel
ARG JAR_FILE=target/*.jar

# Gunakan variabel JAR_FILE agar tidak perlu menulis nama file spesifik
COPY ./target/deploy-5-0.0.1-SNAPSHOT.jar app.jar
# PERBAIKAN: Tambahkan tanda "-" sebelum jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Port yang diekspos oleh container
EXPOSE 9091