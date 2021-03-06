#!/usr/bin/env bash

echo 'Creating application user and db'

mongo ${MONGO_INITDB_DATABASE} \
        -u ${MONGO_INITDB_ROOT_USERNAME} \
        -p ${MONGO_INITDB_ROOT_PASSWORD} \
        --authenticationDatabase admin \
        --eval "db.createUser({user: '${MONGO_USERNAME}', pwd: '${MONGO_USER_PASSWORD}', roles:[{role:'dbOwner', db: '${MONGO_INITDB_DATABASE}'}]});"
