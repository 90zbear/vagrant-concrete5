cd ansible
sudo apt-get install -y  python-pip
sudo pip install ansible
ansible-playbook playbook.yml -i hosts -c paramiko

