#!/usr/bin/env bash

export PROFILE=$1
export AWS_VAULT_FILE_PASSPHRASE=$(aws ssm get-parameters --profile default --names '/laptop/aws-vault/password' --with-decryption --query 'Parameters[0].Value' --output text)

aws-vault exec -j $PROFILE