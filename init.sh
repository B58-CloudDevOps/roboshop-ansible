if [ -z "$COMPONENT" -o -z "$ENV" -o -z "$SSH_PASSWORD" ]; then 
    echo -e "\e[31m Input missing \e[0m"
    exit 89
fi

git pull 
ansible-playbook -i ${COMPONENT}-${ENV}.roboshop.internal, -e ansible_user=ec2-user -e ansible_password=${SSH_PASSWORD} -e COMPONENT=${COMPONENT} -e ENV=${ENV} main.yml

