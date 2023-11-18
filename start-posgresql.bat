docker-compose --env-file .env --env-file ./services/postgresql/.env -f ./services/postgresql/docker-compose.yml up -d
pause