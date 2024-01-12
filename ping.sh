# Replace the <Public Ip Address> with the actual 
# Linux instance or VM IP Address and 
# <Password> with your actual password
ansible all -i <public-ip>, \
    -m ping \
    -e "ansible_user=<username> ansible_password=<password> ansible_ssh_common_args='-o StrictHostKeyChecking=no'"