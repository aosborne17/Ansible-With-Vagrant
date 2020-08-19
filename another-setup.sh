#!/bin/bash

vagrant up
scp install-all-dependencies.yml vagrant@192.168.33.12:/home/vagrant/
ssh vagrant@192.168.33.12 << EOF
sudo apt-get install software-properties-common -y
sudo apt-get install tree -y
sudo apt-add-repository--yes--update ppa:ansible/ansible
sudo apt-get install ansible -y
sudo apt-get install sshpass -y


sudo su
cd /etc/ansible
echo "[web]
192.168.33.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts
echo  "[db]
192.168.33.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts
echo  "[aws]
192.168.33.12 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts
cd ..


#go into web server
sshpass -p 'vagrant' ssh vagrant@192.168.33.10
sudo apt-get update -y
sudo apt-get upgrade -y
echo "web is done"
exit
#go into dev server
sshpass -p 'vagrant' ssh vagrant@192.168.33.11
sudo apt-get update -y
sudo apt-get upgrade -y


exit
EOF


ssh vagrant@192.168.33.12 << EOF
cd /etc/ansible
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
ansible-playbook install-all-dependencies.yml
exit
EOF
