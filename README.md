#Desafio Meli

Sobre o script :

O script solicita o nome do arquivo para a interação do arquivo e do bucket, em seguida valida a existência desse aqruivo e sendo atendido a condição, executa a rotina de upload/download para uma unidade S3, abaixo o descritivo de cada script em ação:

O Arquivo Upload-s3.sh

						Estação > Bucket > Servidor Fury


O Arquivo download-s3.sh

						Servidor Fury > Bucket > Estação


As ações de sucesso ou falha são registradas através de um arquivo de log que pode ser encontrado no diretório ./log.

Em nossa estrutura atuamos com:

Partindo da premissa de um conhemineto prévio nas ferramentas S3 e IAM da AWS
- A criação de um bucket na AWS.
- A criação de um usuário no IAM com permissão para acesso ao bucket.
- CLI da AWS instalado em um WSL usando o Ubuntu para a execução do script.




Modo de uso:

Copiar o script para a estação/servidor.

Para melhor utiização do script, execute-o dentro do diretório no qual você queira movimentar os arquivos.

Linux : 
Comando para a execução do script ./script.sh

Windows: 
Para a execução em ambiente Microsoft Windows, será necessário a instalação do WSL (https://docs.microsoft.com/pt-br/windows/wsl/install). Comando para a execução do script ./script.sh

