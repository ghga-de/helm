#!/usr/bin/env bash

export OS_AUTH_TYPE=v3applicationcredential
export OS_AUTH_URL=https://cloud.denbi.dkfz.de:13000
export OS_IDENTITY_API_VERSION=3
export OS_REGION_NAME="regionOne"
export OS_INTERFACE=public
export OS_APPLICATION_CREDENTIAL_ID=b0ac036ad1344c43ad9bbd2788075f91
export OS_APPLICATION_CREDENTIAL_SECRET=2SE75fmDQ5Gbgi6bjqtzLVqW04Jg2o1v1oPtzTeHii593gd042VQZ-1QWoNdrQYE9inOPgepLErTf54BJtEE8A

export OS_PROJECT_ID=9f117e3611804123b2c6e9453c5091b8
export OS_USER_DOMAIN_NAME="elixir"
if [ -z "$OS_USER_DOMAIN_NAME" ]; then unset OS_USER_DOMAIN_NAME; fi

# The name of the OpenStack domain
export OS_TENANT_ID=${OS_PROJECT_ID}
export OS_DOMAIN_NAME=${OS_USER_DOMAIN_NAME}

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa