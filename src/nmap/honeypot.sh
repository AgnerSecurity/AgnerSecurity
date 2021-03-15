#remove antigos logs sem apagar o historico
rm -rf /var/www/html/nmap/tentativas.txt
#data para documentar via histórico
DATA=$(date +"%d-%m-%Y-%T")
#awk e sed que organiza e traduz o texto do /var/log/secure e cria um arquivo em /var/www/html/nmap/tentativas.txt com a saida do comando
awk '/Failed password/{ z[$11]++; }
     END{
       for (i in z){
         if (z[i]>3) printf("%s attemps %s times.\n", i, z[i])
       }
}' /var/log/secure > /var/www/html/nmap/tentativas.txt

sed -i 's/attemps/tentou/' /var/www/html/nmap/tentativas.txt

sed -i 's/times/vezes invadir sua rede/' /var/www/html/nmap/tentativas.txt

#cria pasta /var/www/html/nmap/historico_tentativa/
mkdir /var/www/html/nmap/historico_tentativa/
#copia para histórico em /var/www/html/nmap/historico_tentativa/
cp /var/www/html/nmap/tentativas.txt /var/www/html/nmap/historico_tentativa/tentativa_$DATA.txt
