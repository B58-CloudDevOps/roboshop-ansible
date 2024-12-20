git pull  

if [ -z "$1" -o -z "$2" -o -z "$3" -o -z "$4" ]; then 
    echo -e "\e[31m Input missing \e[0m"
    echo -e "Expected Usage : \n\t\t   bash init.sh frontend dev DxxxPwd  vaultToken" 
    exit 89
fi

component=$1 
env=$2
ssh_password=$3
vault_token=$4

ansible-playbook -i ${component}-${env}.cloudapps.today, -e env=${env} -e ansible_user=ec2-user -e ansible_password=${ssh_password} -e component=${component} -e env=${env} -e vault_token=${vault_token}  main.yml

