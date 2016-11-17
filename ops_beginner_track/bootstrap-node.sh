#!/usr/bin/env bash

# CONFIG
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

readonly COMPOSE_VERSION=1.8.1
readonly MACHINE_VERSION=v0.8.2

# configure hosts file
cat > /etc/hosts <<EOL

127.0.0.1 localhost
192.168.100.11  node1
192.168.100.12  node2
192.168.100.13  node3
192.168.100.14  node4
192.168.100.15  node5

EOL

# configure ssh keys
cat > /home/vagrant/.ssh/id_rsa <<EOL
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAmoRcNGxzMWZUHrnx0K6qJyn/rSsFgN4HfTIfLA3Ubg5DKpdu
5qeq5bQ624LcXIiKMq8W9RvwBPiKH1vkQvKzy1717JKlSlVGVEhi4u+VMZbfLYIA
YLW4eJN/7kaR45Q/ejlFxiD3IvkTL3KXvsseBJyN/4YzM/F30vRvxPf0MBaRUNQm
1NPaYmLBlOZdojxCS6OfWgA35v4eXlFbiEBDL2+RvGXD+kKa4Pz1di5R8wfL0S6v
syL/rIpBGXYoikxXLrhUVSWSPROeh335TSKtsno2RGjzd55auQzwdMUaty0XbEtH
VjumZtqRkvEF6qZnkTZ70gun1vNlo0ZzEHpq+wIDAQABAoIBADCB6OhUO32AoFvd
B/r5OlV9K9TTMrEYAsXc3EhaNxwtwgw26gvjCxV9lRSgaklqW+g5az2bfagx1jqu
AGS8CJGJyC5ygw1o4+FFsDWJ/Q5KTNnee/vgUH8Z3wmQgfAt9BeMr0jZxHvoMYut
r9Gntk7ATxuup5hg77r8HbJ6HOCTWD7zM3UWal9ZOyu4tVGzuc8SO6Fn8xZC/oy0
BW1YRjdDt5mnDw5+dHoo07aKOVG87/4GYaiE13OQ7kzXrCKzNZip95Q+58d25WoE
9eG3mCQjmOE5drrCtzRHxeNnPCnfl9rZGh+GHkkPBs2Q7+U9HuoH3hsSThsV1qv7
Et+pPMECgYEAx55MLiYlyToZaSHh7inuAmxtxXZXX0q1H7AlSaMxzmGh68iT77Rq
dq0Dmdmgifbp6ivCfDUmKluwmLE+oY2DuIiABV8F8REY3cpeK9zABRCnF6yt1dMe
KWrvoWPvXxxNEyUC0cFlJzp2Ca7BDMq8+hXGnl34Jm4OD7r6jab+78sCgYEAxijx
zjk+2/Ra1XBOaGwS4MxfDaGeMFrowF7BKLKw/aG04ErjBDVZ4j+BPFzllHjEMkn8
11qRpozlFQLun+sZGL2ReJ4YtgV/aHUgALhckD9UfOypbC3m6+lD4TSOkJ0LDC/H
ahnsjEYImr9VtOkZx2FScsgCxIJnin5JRcK4q5ECgYA/aMdmOXPzUeNUhBDSqLsU
RgEwooDqoj6azEdr9s0Rc+4Nie+ES1kuTZNBQeI/MRHo8vGapv9yoSGdv1/Xza4z
5hhUnHS0uOufOHNll3/fnASX/qBRtfh0y6VHLQmSuti45h7ZJofNSELKnJpyR8xz
3Ir1L4BuJLOOx6RjbtK4tQKBgEHxRC59TFbD5Spb+iuzs0CNoiAWJV8wEX5ayeqy
NEXi9x8grJUs7+Fjgq1EuL2Exr15c6Nypz+GaYFpfWFISgy6oNtDuTNxduma+HBk
6aCzAnmkA+lVCSB+erFJ3Rtwt0lx6Ol9AQPZFmnwvCO84nBACcDaoFkmkDA9QELv
vqaRAoGBAIkDpUv7J/rebx5vb6nU8BDDcfDCaZeIUTIh5Cw941U17L/riN55LgK/
p8x/l8S3RpkxwutyMSP6CCBVNgrP24SIju0KcxlXsvV96qkQpeW95+pEFrwL6STI
+s9R2sffwJG9VXJnbbK5WYuSypHVeXlHnZKYK8YBFg6b74bQoCsb
-----END RSA PRIVATE KEY-----
EOL

cat > /home/vagrant/.ssh/id_rsa.pub <<EOL
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCahFw0bHMxZlQeufHQrqonKf+tKwWA3gd9Mh8sDdRuDkMql27mp6rltDrbgtxciIoyrxb1G/AE+IofW+RC8rPLXvXskqVKVUZUSGLi75Uxlt8tggBgtbh4k3/uRpHjlD96OUXGIPci+RMvcpe+yx4EnI3/hjMz8XfS9G/E9/QwFpFQ1CbU09piYsGU5l2iPEJLo59aADfm/h5eUVuIQEMvb5G8ZcP6Qprg/PV2LlHzB8vRLq+zIv+sikEZdiiKTFcuuFRVJZI9E56HfflNIq2yejZEaPN3nlq5DPB0xRq3LRdsS0dWO6Zm2pGS8QXqpmeRNnvSC6fW82WjRnMQemr7 vagrant@localhost
EOL

cat >> /home/vagrant/.ssh/authorized_keys <<EOL
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCahFw0bHMxZlQeufHQrqonKf+tKwWA3gd9Mh8sDdRuDkMql27mp6rltDrbgtxciIoyrxb1G/AE+IofW+RC8rPLXvXskqVKVUZUSGLi75Uxlt8tggBgtbh4k3/uRpHjlD96OUXGIPci+RMvcpe+yx4EnI3/hjMz8XfS9G/E9/QwFpFQ1CbU09piYsGU5l2iPEJLo59aADfm/h5eUVuIQEMvb5G8ZcP6Qprg/PV2LlHzB8vRLq+zIv+sikEZdiiKTFcuuFRVJZI9E56HfflNIq2yejZEaPN3nlq5DPB0xRq3LRdsS0dWO6Zm2pGS8QXqpmeRNnvSC6fW82WjRnMQemr7 vagrant@localhost
EOL


# Update Docker
sudo yum -y update docker-engine

# install Docker Compose
# @see http://docs.docker.com/compose/install/
curl -s -o docker-compose -L https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m`
chmod a+x docker-compose
sudo mv docker-compose /usr/local/bin


# install Docker Machine
# @see https://docs.docker.com/machine/
curl -s -o docker-machine -L https://github.com/docker/machine/releases/download/$MACHINE_VERSION/docker-machine-`uname -s`-`uname -m`
chmod a+x docker-machine
sudo mv docker-machine /usr/local/bin

# Reboot node
reboot now
