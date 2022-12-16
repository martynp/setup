
```
sudo apt update -y && sudo apt upgrade -y && sudo apt install git python3-pip build-essential -y
python3 -m pip install ansible --user
echo "export PATH=\$PATH:/home/$USER/.local/bin" >> ~/.bashrc
git clone https://github.com/martynp/setup.git
ansible-playbook desktop.yml
```
