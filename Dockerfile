FROM nginx
WORKDIR /app
COPY . /app
CMD ["java", "-jar", "your-jar-file.jar"]
