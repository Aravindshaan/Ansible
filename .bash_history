cd /etc
ls
exit
ls
ansible all --list-hosts
sudo vi /etc/ansible/ansible.cfg 
ansible all --list-hosts
ansible webserver
ansible webservers
ansible webservers[0]
ansible webservers[0] --list-hosts
ansible webservers[-1] --list-hosts
sudo vi /etc/ansible/hosts 
ansible webservers[-1] --list-hosts
ansible webservers[] --list-hosts
ansible webservers[0:1] --list-hosts
ansible dbservers[0] --list-hosts
ansible webservers[-1] --list-hosts
ansible webservers[-2] --list-hosts
ansible webservers[-2:-1] --list-hosts
ansible webservers[0:1] --list-hosts
ansible webservers - a "ls"
ansible webservers -a "ls"
ansible webserver[0] "ls"
ansible webserver[0] -a  "ls"
ansible webservers[0] -a  "ls"
ansible webservers[0]   "ls"
ansible webservers -a "ls /home"
ansible webservers -a "mkdir  /home/ansible/abc"
pwd
touch file 1234
ls
ansible webservers -a "cp /home/ansible/file /home/ansible"
ansible webservers -a "touch araavind"
ansible webservers -a "which httpd"
ansible webservers -a "yum install httpd -y"
ansible webservers -a "sudo yum install httpd -y"
ansible webservers -b -a  "yum install httpd -y"
sansible webservers -b -a "yum remove httpd"
ansible webservers -b -a "yum remove httpd -y"
sudo vi /etc/ansible/ansible.cfg 
ansible webservers -b -a "yum install httpd -y"
ansible webservers -b -a "sudo yum install httpd -y"
ansible webservers -a "sudo yum install httpd -y"
ansible webservers -a "sudo yum install tree -y"
ls -a
ssh-keygen
ssh-copy-id ansible@172.31.2.13
ssh 172.31.2.13
ssh-copy-id ansible@172.31.13.58
ssh 172.31.2.13
ssh-copy-id ansible@172.31.8.57
ssh 172.31.2.13
ssh-copy-id ansible@172.31.8.57
ssh 172.31.8.57
vi /etc/ssh/sshd_config 
hostname -i
ssh 172.31.2.13
ls
llllll
ls
pwd
ansible webservers -a --list-all
ansible webservers -a --list-hosts
ansible webservers[0] -a --list-hosts
ansible webservers --list-hosts
ansible webservers[0] --list-hosts
ansible web servers -a "ls"
ansible webservers -a "ls"
ansible webservers -a "ls /home"
ansible webservers -b -m yum -a "pkg=tree state=present"
which tree
sudo yum remove tree -y
ansible webservers -b -a "yum instaal tree -y"
ansible webservers -b -a "yum install tree -y"
ansible webservers -a "sudo yum remove tree -y"
ansible webservers[0] -b -m yum -a "pkg=tree state=present"
ansible webservers[0] -b -m yum -a "pkg=tree state=latest"
ansible webservers[0] -b -m yum -a "pkg=tree state=absent"
pwd
touch shaan123
ansible webservers -b -m copy -a "src=/home/ansible/shaan123 dst=/home/ansible"
ansible webservers -b -m copy -a "src=/home/ansible/shaan123 dest=/home/ansible"
ls
ansible webservers -b -m user -a "name=raghu state=present"
ansible webservers -b -a "cat /etc/passwd"
ansible webservers -b -m user -a "name=raghu state=absent"
ansible webservers -b -a "cat /etc/passwd"
ansible webservers -b -m move -a "src=/home/ansible/shaan123 dst=/home"
ansible webservers -b -m yum -a "pkg=httpd state=present"
ansible webservers -b -m service -a "pkg=httpd state=stopped"
ansible webservers -b -m service -a "name=httpd state=stopped"
ansible webservers -b -m service -a "name=httpd state=started"
ansible webservers -m setup
ansible webservers[0] -m setup
ansible webservers[0] -m setup -a "filter=*ipv4*"
vi httpd.yml
ls
ansible-playbook httpd.yml --check
vi httpd.yml
ansible-playbook httpd.yml 
vi httpd.yml
ansible-playbook httpd.yml --check
vi httpd.yml
ansible-playbook httpd.yml --check
vi httpd.yml 
ansible-playbook httpd.yml --check
ansible-playbook httpd.yml
vi httpd.yml 
ansible-playbook httpd.yml
vi vars.yaml
ls
vi httpd.yml 
ansible-playbook httpd.yml --check
vi httpd.yml 
ansible-playbook httpd.yml --check
vi vars.yaml 
ansible-playbook vars.yml --check
ansible-playbook vars.yaml --check
vi vars.yaml 
ansible-playbool vars.yaml --check
ansible-playbook vars.yaml --check
vi vars.yaml 
ansible-playbook vars.yaml --check
mv vars.yaml ignore-errors.yaml
vi ignore-errors.yaml 
vi vars.yaml
ansible-playbook vars.yaml --check
vi vars.yaml
ansible-playbook vars.yaml --check
ls
vi items.yaml
ansible-playbook items.yaml --check
ansible-playbook items.yaml
vi items.yaml
ansible-playbook items.yaml
vi items.yaml
vi handler.yaml
ansible-playbook handler.yaml --check
vi handler.yaml
ansible-playbook handler.yaml --check
vi handler.yaml
ls
rm -rf 1234 file shaan123
ls
mv httpd.yml package-installation.yaml
ls
vi handler.yaml 
ansible-playbook handler.yaml --check
ansible webserveres --list-all
ansible webservers --list-all
ansible webservers --list-hosts
vi handler.yaml 
ansible-playbook handler.yaml --check
ls
hostname -i
ansible webservers --list-hosts
ssh 172.31.2.13
ansible webservers --list-hosts
cd ..
ls
cd ansible
ls
vi conditionals.yaml
ansible-playbook conditionals.yaml -y --check
ansible-playbook conditionals.yaml  --check
vi conditionals.yaml
ansible-playbook conditionals.yaml  --check
vi conditionals.yaml
ansible-playbook conditionals.yaml  --check
vi conditionals.yaml
ansible-playbook conditionals.yaml  --check
vi conditionals.yaml
ansible-playbook conditionals.yaml  --check
vi conditionals.yaml
ansible-playbook conditionals.yaml  --check
ansible-playbook -v conditionals.yaml  --check
vi file.yaml
ansible-playbook file.yaml  --check
vi file.yaml
ansible-playbook file.yaml  --check
ansible-playbook file.yaml  
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
ls
pwd
ls
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ansible-playbook file.yaml  
vi file.yaml
ls
vi conditionals.yaml 
ls
vi conditionals.yaml 
vi copy.yaml 
ansible-playbook copy.yaml  
vi copy.yaml 
vi copy.yaml 
ansible-playbook copy.yaml  
vi command.yaml
ansible-playbook command.yaml  
vi command.yaml
ansible-playbook command.yaml  
ansible-playbook command.yaml  
vi copy.yaml 
ansible-playbook encrypt vars.yaml 
ansible-vault encrypt vars.yaml 
vi vars.yaml 
ansible-vault edit vars.yaml
ansible-vault decrypt vars.yaml
vi vars.yaml
ansible-vault cd.yaml
ansible-vault create cd.yaml
ansible-vault edit cd.yaml
ansible-vault decrypt cd.yaml
ansible-vault edit cd.yaml
vi cd.yaml 
rm -rf cd.yaml 
ansible-vault create cd.yaml
ansible-vault rekey cd.yaml
ansible-vault edit cd.yaml
rm -rf cd.yaml 
ls
ls
ls
mkdir playbook
cd playbook/
ls
vi master.yaml
ls
mkdir role
mkdir roles
rm -rf role
cd roles/
mkdir testrole
cd testrole/
mkdir  tasks/vars/handlers
ls
mkdir  tasks vars handlers
ls
cd tasks\
cd tasks
vi main.yaml
vi main.yaml
cd ..
ls
cd vars
vi main.yaml
cd ..
ls
cd handlers/
vi main.yaml
ls
cd ..
ls
cd ..
ls
cd ..
ls
ansible-playbook master.yaml
yum install tree -y
sudo yum install tree
tree
vi roles/testrole/vars/main.yaml 
ansible-playbook master.yaml
vi roles/testrole/vars/main.yaml 
ansible-playbook master.yaml
vi roles/testrole/tasks/main.yaml 
ansible-playbook master.yaml
vi roles/testrole/tasks/main.yaml 
ansible-playbook master.yaml
vi roles/testrole/tasks/main.yaml 
vi roles/testrole/handlers/main.yaml 
ansible-playbook master.yaml
ls
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
tree
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ansible-playbook master.yaml
vi master.yaml 
ls
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml --check
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml --check
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml --check
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml --check
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml 
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml 
cd /opt
ls
rm -rf ap
sudo rm -rf ap
ls
sudo rm -rf aws/p
ls
cd /home/ansible
ls
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml 
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml 
vi setup-tomcat.yaml
ansible-playbook setup-tomcat.yaml 
vi setup-tomcat.yaml
ls
p[wd
pwd
ansible-playbook setup-tomcat.yaml 
lsof -n -P | grep LISTEN
sudo lsof -n -P -a | grep LISTEN
ansible-playbook setup-tomcat.yaml 
sudo lsof -n -P -a | grep LISTEN
sudo lsof -n -P -i | grep LISTEN
 ansible webservers --list-hosts
