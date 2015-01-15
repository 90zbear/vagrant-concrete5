cd ansible
sudo apt-get install -y python-dev python-pip
sudo pip install ansible
sudo pip install mySQL-python
ansible-playbook playbook.yml -i hosts -c paramiko
