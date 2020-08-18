ls
pwd
systemctl nginx status
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install ansible -y
sudo apt-get install tree
cd /etc/ansible/
ls
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
sudo nano hosts 
ssh vagrant@192.168.33.10
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
exit
ls
ls
pwd
exit
