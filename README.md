## Comandos até o momento:

# Baixar dependências
```
./dependencies.sh
```
# Baixar arquivos fonte do cam 3.1
Primeiro, dve-se instalar extensão para utilizar o drive
```
./source-code.sh instalar
```
Depois, autenticar entrada no seu drive
```
./source-code.sh autenticar
```
Por fim, fazer download dos arquivos.
```
./source-code.sh download
```

# Build da imagem
```
docker build . -t cam3.1-lammoc:0.0.1
```
