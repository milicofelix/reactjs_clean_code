#!/bin/sh

# Este script executa um commit dentro do contêiner do Docker

# Nome do contêiner do frontend
CONTAINER_NAME="front-end"

# Verifica se um contêiner está em execução
if [ "$(docker ps -q -f name=${CONTAINER_NAME})" ]; then
  # Executa comandos dentro do contêiner
  docker exec -it $CONTAINER_NAME git "$@"
else
  echo "O contêiner $CONTAINER_NAME não está em execução."
fi
