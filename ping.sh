# Replace the <Public Ip Address> with the actual 
# Linux instance or VM IP Address and 
# <Password> with your actual password
ansible all -i <public-ip>, \
    -m ping \
    -e "ansible_user=<username> ansible_password=<password> ansible_ssh_common_args='-o StrictHostKeyChecking=no'"


ansible all -i ec2-18-136-98-145.ap-southeast-1.compute.amazonaws.com, \
    -m ping \
    -e "ansible_user=ansible ansible_password=admin1234 ansible_ssh_common_args='-o StrictHostKeyChecking=no'"