#!/bin/bash

docker-compose \
-f scenarios/small_network-docker-compose.yaml \
-f scenarios/common/default_masscan_service.yaml \
-f scenarios/common/default_nginx.yaml \
up --build