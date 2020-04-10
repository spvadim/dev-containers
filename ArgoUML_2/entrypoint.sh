#!/bin/bash

# имя пользователя для подключения
DOCKER_USER=dockerx
X2GO_GROUP=x2gouser

# генерируем пароль пользователя
DOCKER_PASSWORD=$(pwgen -c -n -1 12)
DOCKER_ENCRYPTED_PASSWORD=$(perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa")')

# выводим имя и пароль пользователя,
# чтобы их можно было увидеть с помощью docker logs
echo User: $DOCKER_USER
echo Password: $DOCKER_PASSWORD

# создаем пользователя
useradd --create-home --home-dir /home/$DOCKER_USER --password $DOCKER_ENCRYPTED_PASSWORD \
        --shell /bin/bash --groups $X2GO_GROUP --user-group $DOCKER_USER

#mkdir /home/$DOCKER_USER/Models

#echo "AuthorizedKeysFile %h/.ssh/authorized_keys" >> /etc/ssh/sshd_config
# запускаем ssh-сервер
exec /usr/sbin/sshd -D
