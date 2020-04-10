#FROM bbamastro/debian9-java8
#FROM optionfactory/debian9-jdk8
#FROM adcomput/debian9-jdk8
#FROM zer0def/x2go-xfce4
# argo9
#FROM intersoftlab/x2go-gnome
# argo10 MATE
FROM intersoftlab/x2go-mate
MAINTAINER Vadim Spirichev <z1326593@rambler.ru>

ENV DEBIAN_FRONTEND noninteractive

#ADD sources.list /etc/apt/sources.list

RUN apt-get update

#RUN apt-get install apt-utils
# устанавливаем ssh-сервер и утилиту pwgen для генерации пароля
#RUN apt-get install -yq \
#      pwgen \
#      openssh-server
RUN apt-get install -yq \
      pwgen 

# создаем директорию, необходимую для запуска ssh-сервера
RUN mkdir -p /var/run/sshd

# установка x2go-сервера
#RUN apt-get  install  x2goserver

RUN apt-get install -yq joe
# установка ArgoUML
RUN mkdir -p /opt/ArgoUML/Models; chmod 777 /opt/ArgoUML/Models
ADD ArgoUML-0.24.tar.gz /opt/ArgoUML
ADD argouml_profile.xmi /opt/ArgoUML
ADD archgenxml_profile2.xmi /opt/ArgoUML
ADD cmd.txt /opt/ArgoUML

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN echo "dockerx ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]

#ENTRYPOINT ["/usr/bin/java -Dargo.defaultModel=/opt/ArgoUML/argouml_profile.xmi -jar /opt/ArgoUML/argouml.jar"]
#ENTRYPOINT /bin/bash
