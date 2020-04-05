# Agner Security - Uma ferramenta de Luis Carlos Agner Claro
Uma ferramenta WEB de segurança open source de redes de computadores com Nmap, honeypot, vulnerabilidade de equipamentos de rede etc, A ferramenta AGNER SECURITY serve para escanear automaticamente o bloco IP de portas abertas e vulnerabilidades, juntando uma dashboard WEB amigável para visualização de dados.

A ferramenta Agner Security foi desenvolvida para ajudar administradores de redes de computadores a cuidar da segurança e da integridade da mesma,
sendo uma ferramenta totalmente open source, ou seja gratuita.

Essa ferramenta é um projeto meu (Luis Carlos Agner Claro), que fiz com todo carinho essa ferramenta para ajudar as redes que mais precisam, se possível, use e faça melhorias, modifique e aplique 
seu conhecimento nela, vamos tornar a ferramenta uma ótima alternativa de segurança a redes de computadores.

Alguns recursos presentes nessa primeira versão da ferramenta são:

- Varredura de portas vulneráveis abertas na rede: A ferramenta Agner Security faz a varredura das principais portas que são alvo de algum tipo de ataque,
tudo em base ao CERT BR, que possui estatisticas e recomendações de portas vulneráveis e que devem ser protegidas.

- Mikrotiks Vulneráveis: Um equipamento muito popular em pequenas e médias empresas são os mikrotiks, porém esse equipamento possui algumas falhas de segurança, o Agner Security faz o escaneamento automático dos ips a procura de 
mikrotiks vulneráveis em sua rede e lhe mostra em uma tabela organizada e limpa no navegador.

- Ips e usuários que tentaram invadir a rede: o Agner Security não é somente um "detetive", ele também é um honeypot simples e robusto, com recurso de visualização WEB de quem ataca sua rede ou tenta invadi-lá, seja com ip ou o usuário de autenticação que tentou acessar.

# REQUISITOS MINÍMOS

Sistema operacional Centos 7 Minimal 
4 gb de ram
80 gb de HD
8 núcleos de CPU
conexão a internet (pode ser usado com ip privado nateado, nesse caso a função de honeypot não funciona corretamente, o certo é usar um ip público)

# INSTALAÇÃO

yum -y update
yum -y install net-tools
yum -y install nmap
yum -y groupinstall development
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install python36u
yum -y install python-pip
yum -y install git httpd 
yum -y install php php-mysql
yum -y install unzip
yum -y install epel-release
yum -y install wget
yum -y install vim 
yum -y install bind-utils

Desabilite o firewall:

sudo setenforce 0

systemctl stop firewall

systemctl disable firewall


De um reboot no sistema:

reboot

Agora, inicie o serviço Apache e ativá-lo na inicialização:

systemctl start httpd.service
systemctl enable httpd.service

MYSQL:

Instale os pacotes:

wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm

sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm

sudo yum install mysql-server -y

sudo systemctl start mysqld

De o seguinte comando para pegar a senha temporária de root do mysql:

grep "A temporary password" /var/log/mysqld.log

Depois de o seguinte comando e siga as etapas:

mysql_secure_installation

(Coloque uma senha forte, de preferencia gere uma em um gerador online ou de sua preferencia)

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
 
Disallow root login remotely? (Press y|Y for Yes, any other key for No) : n
 
Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 
Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y

De restart no serviço e inicie ele:

service mysqld restart

service mysqld start

chkconfig mysqld on

Entre no mysql, vamos criar a tabela de banco de dados:

mysql -u root -p

crie a database:

create database users_login;

use users_login;

CREATE TABLE users( id INT, username VARCHAR(50), password VARCHAR(40));

E crie os usuários na seguinte linha, modifique todos os campos, o ID sempre sequencial:

INSERT INTO users(id, username, password) VALUES ('1', 'usuario', SHA1('senhaUsuario'));

FLUSH PRIVILEGES;

Saia do mysql com exit;

Vamos baixar o Agner Security e configurá-lo

git clone https://github.com/AgnerSecurity/AgnerSecurity.git

cd AgnerSecurity

mv agner_security_1.0.zip /var/www/html/

cd /var/www/html/

unzip agner_security_1.0.zip

rm -rf agner_security_1.0.zip

vamos modificar alguns arquivos:

vim /var/www/html/nmap/exploit.sh

MODIFIQUE A LINHA 19, que tem a variavel ASN, coloque o bloco a ser verificado nele, exemplo: ASN="192.168.0.1/24"

salve com :wq

Vamos fazer isso com outro script:

vim /var/www/html/nmap/portasespecificas/nmap.sh

MODIFIQUE A LINHA 2, que tem a variável ASN, coloque o bloco a ser verificado nele, exemplo: ASN="192.168.0.1/24"

salve com :wq

Vamos agora arrumar alguns detalhes do apache:

vim /etc/httpd/conf/httpd.conf

Adicione nas ultimas linhas os seguintes dados:

<Directory /var/www/html/nmap>
  Order deny,allow
  Deny from all
  AllowOverride None
  Options None
</Directory>

Isso impede de quem não deve acessar os arquivos tenha acesso

de um restart no apache:

systemctl restart httpd

permita o iptables:

iptables -F

setsebool httpd_can_network_connect_db=1 

Vamos criar agora a automatização, que é feito com cron:

entre no local abaixo e adicione as linhas:

vim /etc/cron.d/nmap

00 01 * * 1 root /var/www/html/nmap/exploit.sh
00 01 * * 1 root /var/www/html/nmap/portasespecificas/nmap.sh
*/1 * * * * root /var/www/html/nmap/honeypot.sh

systemctl start crond

systemctl enable crond

de permissão aos scripts:

chmod 777 -R /var/www/html/nmap/*

vamos adicionar o banco de dados a nossa plataforma web:

vim /var/www/html/processaLogin.php

Modifique o SENHA da linha 13 para a senha do banco que foi determinada na criação do banco de dados

salve com :wq

systemctl restart httpd mysqld

Mude o local da empresa, coloque a cidade da empresa nesse arquivo:

vim /var/www/html/nmap/localempresa.txt

Mude o nome da empresa, coloque o nome da empresa nesse arquivo:

vim /var/www/html/nmap/nomempresa.txt

Mude o bloco a ser exibido e escaneado nesse arquivo, coloque o bloco ex: 192.168.0.1/24

vim /var/www/html/nmap/meu_asn.txt


qualquer dúvida, entre em contato em meu Linkedin: https://br.linkedin.com/in/luiscarlosagnerclaro
 





