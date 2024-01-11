# run docker with aws credentail
docker run -it --rm --volume "$(pwd)":/ansible \
--workdir /ansible \
--env AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
--env AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
--env AWS_DEFAULT_REGION=ap-southeast-1 \
ansible

# checking aws credentail
ansible localhost -m aws_caller_info