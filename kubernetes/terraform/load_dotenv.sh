#!/bin/bash

if [ ! -f .env ]
then
	echo -e 'Error: please, create .env file! \nSee the .env.example file. Try: \n\tcp .env.example .env'
	exit 0
fi

cat .env
export USER_DATA_SSH_KEY=$(cat ~/.ssh/id_rsa.pub)
echo USER_DATA_SSH_KEY=$(cat ~/.ssh/id_rsa.pub)
export $(cat .env | xargs)
echo 'done!'
