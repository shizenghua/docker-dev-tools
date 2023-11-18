docker-compose --env-file .env --env-file ./services/mysql/.env -f ./services/mysql/docker-compose.yml -f ./services/mysql/docker-compose-phpmyadmin.yml up -d
pause