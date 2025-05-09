#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo  "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd luiz -c "Luiz Carlos Machado" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd thais -c "Thais Lopes Canela" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd heitor -c "Heitor Lopes Canela Machado" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

useradd yago -c "Yago Mendes" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd Dudu -c "Delton Antonio Machado dos Santos" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd paulo -c "Paulo Machado de Morais" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

useradd fabiani -c "Fabiani Araujo Machado" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd soraya -c "Soraya Souza" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd lolo -c "Eloá Souza" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

echo "Especificando permissões de diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim da execução do iac..."
