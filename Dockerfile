
#utilizando mesma imagem do gcc do wrf-docker.
FROM gcc:8.5.0
LABEL version="0.0.1"
LABEL description="Instalação do modelo CAM 3.1 pelo Laboratório de Monitoramento \
e Modelagem de Sistemas Climáticos (LaMMoC) da Universidade Federal Fluminense"
LABEL mantainer="vmagalhaes@id.uff.br"

COPY dependencies /dependencies
COPY build.sh build.sh

#update e instalando nano para modo interativo
RUN apt-get update &&\
apt-get install nano

RUN bash ./build.sh
ENV CC /usr/local/portland/bin/compilers/pgcc
ENV F77 /usr/local/portland/bin/compilers/pgfortran