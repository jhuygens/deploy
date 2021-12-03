#!/bin/bash

if [ ! -f .env ]
then
	echo 'error: please, create .env file!'
	exit 0
fi

cat .env
export USER_DATA_SSH_KEY=$(cat ~/.ssh/id_rsa.pub)
echo USER_DATA_SSH_KEY=$(cat ~/.ssh/id_rsa.pub)
export $(cat .env | xargs)
echo 'done!'
