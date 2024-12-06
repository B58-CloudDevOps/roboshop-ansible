git pull  

if [ -z "$1" -o -z "$2" -o -z "$3" ]; then 
    echo -e "\e[31m Input missing \e[0m"
    echo -e "Expected Usage : \n\t\t   bash init.sh frontend dev DxxxPwd"
    exit 89
fi

component=$1 
env=$2
ssh_password=$3

ansible-playbook -i ${component}-${env}.roboshop.internal, -e ansible_user=ec2-user -e ansible_password=${ssh_password} -e component=${component} -e ENV=${env} main.yml

