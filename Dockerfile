# 1. Base image olarak OpenJDK 17 kullanıyoruz.
FROM openjdk:17-jdk-slim

# 2. Uygulama çalışacağı dizini belirliyoruz.
WORKDIR /app

# 3. Java kaynak kodunu container içine kopyalıyoruz.
COPY main.java .

# 4. Uygulamayı derliyoruz.
RUN javac main.java

# 5. Uygulamayı başlatıyoruz.
CMD ["java", "main"]
# 6. EXPOSE komutu ile container'ın dışarıya açtığı portu belirtiyoruz.
# 8081 portunu expose ederek bu portu kullanacağımızı belirtiyoruz.
EXPOSE 8081