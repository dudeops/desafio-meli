#!/bin/sh

read -p "Informe o nome completo do arquivo (com o .extensão) " file

# Habilita log copiando a saída padrão para o arquivo LOGFILE
LOGFILE="./log/desafio-meli.log"
        #exec > >(tee -ia $LOGFILE)
# Caso haja erro, segue para a saída de ERROS
        #exec 2> >(tee -ia $LOGFILE >&2)

#Valida se o arquivo existe
if [ -f "$file" ]
then
    echo "Encontrei o seu arquivo ;]"
    echo "Iniciando a copia do arquivo para o bucket =] "
    aws s3 cp s3://desafio-meli/arquivos-utilitarios/ ./$file 
    echo "Download do arquivo " $file " executado com sucesso " $(date) >> $LOGFILE
else
        echo "Não consegui encontrar o arquivo " $file " =´[  " $(date) >> $LOGFILE
fi
