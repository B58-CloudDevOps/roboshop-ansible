git pull  

if [ -z "$1" -o -z "$2" -o -z "$3" ]; then 
    echo -e "\e[31m Input missing \e[0m"
    echo -e "Expected Usage : \n\t\t   bash init.sh frontend dev DxxxPwd"
    exit 89
fi

COMPONENT=$1 
ENV=$2
SSH_PASSWORD=$3

ansible-playbook -i ${COMPONENT}-${ENV}.roboshop.internal, -e ansible_user=ec2-user -e ansible_password=${SSH_PASSWORD} -e COMPONENT=${COMPONENT} -e ENV=${ENV} main.yml

