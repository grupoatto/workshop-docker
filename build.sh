# https://docs.docker.com/engine/reference/run/

# construir uma imagem a partir do dockerfile (remova o nome do host ao executar o app do express)
# lembre-se tambem de iniciar o banco de dados postgres e renomear o host para localhost
docker build -t workshop-api -f api/Dockerfile ./api

# executar um container a partir da imagem criada e expor este na porta 8080
docker run -d --rm --name workshop-api -p 8080:3000 workshop-api:latest

# podemos atracar aos logs do container executando
docker attach workshop-api

# listar containers do docker em execucao
docker ps

# filtrar por nome
docker ps -f name=workshop

# formatar a saida para uma melhor visualizacao
docker ps --format "ID: {{ .ID }}\nPortas: {{ .Ports }}\n{{ .Status }}\nEm disco: {{ .Size }}"

# atracar no terminal interativo dentro do container
docker exec -it workshop-api /bin/bash

# reiniciar o container
docker restart workshop-api

# parar o container
docker stop workshop-api

# remover um container
docker rm workshop-api

# remover uma imagem
docker rmi workshop-api

# monitorar containers em execucao
docker stats

# e da mesma forma como ps conseguimos formatar e filtrar
docker stats --format "ID: ID: {{ .ID }}\nCPU: {{ .CPUPerc }}\nMemoria: {{ .MemUsage }}"

# com compose é simples
docker-compose up
