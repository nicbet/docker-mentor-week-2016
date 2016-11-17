# Ops Beginner Track

## Prerequisites
- Internet Connection
- Vagrant 1.8.1 or higher

## Getting Started
1. Create 5-node cluster `vagrant up`
2. After vagrant has finished, initialize SSH connectivity `./init-ssh.sh`
3. You an SSH to any node `vagrant ssh node1`
4. Within a node you can SSH to any other node `ssh node2` without begin prompted for a password

## Using
Just proceed with the Docker Ops Beginner Training. Everything is ready. You can access the Dockercoins UI through http://192.168.100.11:8000
Nodes are mapped to a private network as follows:
- `node1` is `192.168.100.11`
- `node2` is `192.168.100.12`
- `node3` is `192.168.100.13`
- `node4` is `192.168.100.14`
- `node5` is `192.168.100.15`

## Cleaning up
Just run `vagrant destroy`
