
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

RUN bash /dependencies/nvhpc_2021_219_Linux_x86_64_cuda_11.4/install


ENV NVARCH "${uname -s}_${uname -m}"
ENV NVCOMPILERS /opt/nvidia/hpc_sdk
ENV MANPATH $MANPATH:$NVCOMPILERS/$NVARCH/21.9/compilers/man
ENV PATH $NVCOMPILERS/$NVARCH/21.9/compilers/bin:$PATH
