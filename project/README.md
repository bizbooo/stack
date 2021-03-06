## Full stack deploy 

- Requires Ansible 1.5 or newer

These playbooks deploy a very basic stack in docker containers :
- Docker.IO 
- Nginx in docker container
- Mongodb in docker container
- Elasticsearch in docker container
- Redis in docker container
- Uwsgi in docker container

### Deploy 
To use them, first edit the "hosts" inventory file to contain the
hostnames of the machines on which you want to deploy,

Then run the playbook, like this:
- Full Deploy 
	ansible-playbook -i hosts site.yml

- Tag Deploy  
  - Mongodb : ansible-playbook -i hosts site.yml --tags mongo
  - Redis : ansible-playbook -i hosts site.yml --tags redis
  - Elasticsearch : ansible-playbook -i hosts site.yml --tags es
  - Nginx : ansible-playbook -i hosts site.yml --tags nginx

### Docker Commands 
- Show build images :
  sudo docker images
- Show running container :
  sudo docker ps 
- Show stopped container : 
  sudo docker ps -a 

### Resources 
- http://docs.ansible.com/
- https://docs.docker.io/en/latest/
