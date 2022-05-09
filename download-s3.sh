#!/bin/sh

read -p "Informe o nome completo do arquivo (com o .extensão) " file
read -p "Informe o nome do bucket (por exemplo s3://Desafio-meli/nome do bucket/)" bucket

# Arquivo de saída para o log
LOGFILE="./log/desafio-meli.log"

#Valida se o arquivo existe
    if [ -f "$file" ]

#Se o arquvio existir, continuamos
then
    echo "Encontrei o seu arquivo ;]"
    echo "Iniciando a copia do arquivo para o bucket, logo em seguida você poderá vizualizar em sua estação =] "
        
        aws s3 cp s3://desafio-meli/$bucket/ ./$file
          
    echo "Download do arquivo " $file " executado com sucesso " $(date) >> $LOGFILE

#Se o arquvio não existir, exibe a mensagem abaixo
else
    echo "Não consegui encontrar o arquivo " $file " =´[ " $(date) >> $LOGFILE
fi
