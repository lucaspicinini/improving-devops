#!/bin/bash

echo '######################################################'
echo 'Criando diretórios...'
echo '######################################################'

mkdir /publico -v
mkdir /adm -v
mkdir /ven -v
mkdir /sec -v

echo '######################################################'
echo 'Criando grupos de usuários...'
echo '######################################################'

groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

echo '######################################################'
echo 'Criando usuários administrativos...'
echo '######################################################'

useradd carlos -m -c "Carlos" -s /bin/bash -g GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -g GRP_ADM
useradd joao -m -c "João" -s /bin/bash -g GRP_ADM

echo '######################################################'
echo 'Criando usuários de venda...'
echo '######################################################'

useradd debora -m -c "Débora" -s /bin/bash -g GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -g GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -g GRP_VEN

echo '######################################################'
echo 'Criando usuários do secretariado...'
echo '######################################################'

useradd josefina -m -c "Josefina" -s /bin/bash -g GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -g GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -g GRP_SEC

echo '######################################################'
echo 'Definindo configurações de senha dos usuários...'
echo '######################################################'

passwd -d -e carlos
passwd -d -e maria
passwd -d -e joao

passwd -d -e debora
passwd -d -e sebastiana
passwd -d -e roberto

passwd -d -e josefina
passwd -d -e amanda
passwd -d -e rogerio

echo '######################################################'
echo 'Criando estrutura de permissões...'
echo '######################################################'

chown -v root /publico
chown -v root:GRP_ADM /adm
chown -v root:GRP_VEN /ven
chown -v root:GRP_SEC /sec

chmod -v 777 /publico
chmod -v 770 /adm
chmod -v 770 /ven
chmod -v 770 /sec

echo '######################################################'
echo 'Estrutura de usuários e diretórios criada com sucesso!'
echo '######################################################'

#fim do script
