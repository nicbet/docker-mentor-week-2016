#!/bin/bash

vagrant ssh node1 -c 'for i in {1..5}; do ssh-keyscan node$i >> /home/vagrant/.ssh/known_hosts; done'
vagrant ssh node2 -c 'for i in {1..5}; do ssh-keyscan node$i >> /home/vagrant/.ssh/known_hosts; done'
vagrant ssh node3 -c 'for i in {1..5}; do ssh-keyscan node$i >> /home/vagrant/.ssh/known_hosts; done'
vagrant ssh node4 -c 'for i in {1..5}; do ssh-keyscan node$i >> /home/vagrant/.ssh/known_hosts; done'
vagrant ssh node5 -c 'for i in {1..5}; do ssh-keyscan node$i >> /home/vagrant/.ssh/known_hosts; done'
