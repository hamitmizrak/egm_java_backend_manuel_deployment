
# JDK SÜRÜMÜ
FROM openjdk:17

# Bilgilendirme
LABEL maintainer="hamitmizrak@gmail.com"

# Çevresel Değişkenler
#ENV APP_NAME="EGM Backend n-tier Architecture"
#ENV VERSION="v1.0.0"
#ENV PORT="4444"

# Çıktı almak
#RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y
#RUN ECHO "App name: $APP_NAME"
#RUN ECHO "Version : $VERSION"
#RUN ECHO "Port    : $PORT"

# Dizin oluştur
#WORKDIR /var/www/html

# Localdeki dosyaları image dosyasındaki ile yaz
#COPY . /var/www/html

# Kalıcık
VOLUME /tmp

# Container çalışıyor mu çalışmıyor mu
#HEALTHCHECK --interval=30s --timeout=3s \
#  CMD wget --quiet --tries=1 --spider http://localhost || exit 1

# Port
EXPOSE 4444

# jar dosyasını nerde bulacağım
# ARG JAR_FILE=/target/*.war
ARG JAR_FILE=/target/*.jar

# Add
ADD ${JAR_FILE} blog_react

ENTRYPOINT ["java","-jar","/blog_react"]

# docker build .
# Container çalışırken ne çalışsın
# CMD []
