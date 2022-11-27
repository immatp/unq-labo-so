#!/bin/bash

docker-compose \
-f scenarios/basic_nginx_scan-docker-compose.yaml \
-f scenarios/common/default_masscan_service.yaml \
-f scenarios/common/default_nginx.yaml \
up --build