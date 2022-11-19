docker-compose \
-f scenarios/big_network-docker-compose.yaml \
-f scenarios/common/default_masscan_service.yaml \
-f scenarios/common/default_nginx.yaml \
up --build