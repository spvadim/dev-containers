FROM vaibhavtodi/debian-java
MAINTAINER Vadim Spirichev <z1326593@rambler.ru>

ENV DEBIAN_FRONTEND noninteractive


# устанавливаем ssh-сервер и утилиту pwgen для генерации пароля
#RUN apt-get install -yq \
#      pwgen \
#      openssh-server

# создаем директорию, необходимую для запуска ssh-сервера
RUN mkdir -p /var/run/sshd





#RUN mkdir -p /opt/ArgoUML
#ADD ArgoUML-0.24.tar.gz /opt/ArgoUML
#ADD argouml_profile.xmi /opt/ArgoUML

#ENTRYPOINT ["/usr/bin/java -Dargo.defaultModel=/opt/ArgoUML/argouml_profile.xmi -jar /opt/ArgoUML/argouml.jar"]
ENTRYPOINT /bin/bash
