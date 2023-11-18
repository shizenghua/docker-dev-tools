docker-compose --env-file .env --env-file ./services/redis/.env -f ./services/redis/docker-compose.yml up -d
pause