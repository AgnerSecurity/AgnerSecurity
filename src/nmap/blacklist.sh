#!/bin/bash

#yum -y update
#yum -y install net-tools
#yum -y install nmap
#yum -y groupinstall development
#yum -y install https://centos7.iuscommunity.org/ius-release.rpm
#yum -y install python36u
#yum -y install python-pip
#yum -y install git
#Gera a data com o dia para documentar os arquivos
DATA=$(date +"%d-%m-%Y-%T")
DATA2=$(date +"%d-%m-%Y %T")
#apaga tudo que tem dentro da pasta mikrotik, porque pode gerar erros na coleta se tiver arquivos dentro (não apaga o histórico)
#Uma mensagem que aparece enquanto faz o exploit

#Defina aqui o ASN do bloco a ser escaneado, o único local que deve ser modificado do script
ASN="200.219.149.0/24"
#cria pastas necessárias
#entra na pasta
cd /var/www/html/nmap/
#um simples echo para documentar que é da rr64

#coleta via comando GIT o repositorio atualizado do exploit do mikrotik
#entra na pasta do exploit
#printa pro usuário a mensagem no painel de dashboard
#cria a lista de ips com uma função do nmap
rm -rf /var/www/html/nmap/resultado2.txt
rm -rf /var/www/html/nmap/resultado3.txt
rm -rf /var/www/html/nmap/resultado.txt
rm -rf /var/www/html/nmap/testeblacklist.txt
nmap -sL $ASN| grep "Nmap scan report" | awk '{print $NF}' >> /var/www/html/nmap/resultado2.txt
sed 's/(//' /var/www/html/nmap/resultado2.txt >> /var/www/html/nmap/resultado3.txt
sed 's/)//' /var/www/html/nmap/resultado3.txt >> /var/www/html/nmap/resultado.txt
#temos um while preenchendo todos os ips nas linhas seguintes
while read linha
do
VAR1=$(cat /var/www/html/nmap/resultado.txt)
NOME=$(echo $VAR1 | awk '{print $1}')
#aqui é feito o exploit com python 3.6, e o resultado sai em /var/www/html/nmap/mikrotik/WinboxExploit/resultado.txt
sudo bash /var/www/html/nmap/bl $linha >> /var/www/html/nmap/testeblacklist.txt
sed -i '/not/d' /var/www/html/nmap/testeblacklist.txt
done < resultado.txt
#rremove linhas desnecessárias para deixar o arquivo mais limpo e fácil de entender
sed -i '/not/d' /var/www/html/nmap/testeblacklist.txt
sed -i 's/You entered an IP/IP testado/' /var/www/html/nmap/testeblacklist.txt



