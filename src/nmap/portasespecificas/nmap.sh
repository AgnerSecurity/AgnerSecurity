#ASN para escanear  a rede
ASN="45.163.76.0/22"
#remove arquivos necessários
rm -rf /var/www/html/nmap/meu_asn.txt
#cria novos arquivos
echo $ASN >> /var/www/html/nmap/meu_asn.txt
echo $ASN2 >> /var/www/html/nmap/meu_asn.txt
echo $ASN3 >> /var/www/html/nmap/meu_asn.txt
echo $ASN4 >> /var/www/html/nmap/meu_asn.txt
echo $ASN5 >> /var/www/html/nmap/meu_asn.txt
rm -rf /var/www/html/nmap/portasespecificas/nmap161.txt
mkdir  /var/www/html/nmap/portasespecificas/historico
DATA=$(date +"%d-%m-%Y-%T")
DATA2=$(date +"%d/%m/%Y as %T")
CARREGAMENTO="Realizando a procura... espere"
rm -rf /var/www/html/nmap/portasespecificas/data.txt
echo $DATA2 >> /var/www/html/nmap/portasespecificas/data.txt
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap161.txt
nmap --open -p 161 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap161.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap161.txt

cp /var/www/html/nmap/portasespecificas/nmap161.txt /var/www/html/nmap/portasespecificas/historico/nmap161_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap21.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap21.txt

nmap --open -p 21 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap21.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap21.txt

cp /var/www/html/nmap/portasespecificas/nmap21.txt /var/www/html/nmap/portasespecificas/historico/nmap21_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap22.txt
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap22.txt
nmap --open -p 22 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap22.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap22.txt

cp /var/www/html/nmap/portasespecificas/nmap22.txt /var/www/html/nmap/portasespecificas/historico/nmap22_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap80.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap80.txt
nmap --open -p 80 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap80.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap80.txt

cp /var/www/html/nmap/portasespecificas/nmap80.txt /var/www/html/nmap/portasespecificas/historico/nmap80_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap53.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap53.txt
nmap --open -p 53 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap53.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap53.txt

cp /var/www/html/nmap/portasespecificas/nmap53.txt /var/www/html/nmap/portasespecificas/historico/nmap53_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap123.txt
CARREGAMENTO6="Realizando procura de portas 123... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap123.txt
nmap --open -p 123 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap123.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap123.txt

cp /var/www/html/nmap/portasespecificas/nmap123.txt /var/www/html/nmap/portasespecificas/historico/nmap123_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap443.txt
CARREGAMENTO12="Realizando procura de portas 443... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap443.txt
nmap --open -p 443 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap443.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap443.txt

cp /var/www/html/nmap/portasespecificas/nmap443.txt /var/www/html/nmap/portasespecificas/historico/nmap443_$DATA.txt
rm -rf /var/www/html/nmap/portasespecificas/data.txt
echo $DATA2 >> /var/www/html/nmap/portasespecificas/data.txt


rm -rf /var/www/html/nmap/portasespecificas/nmap23.txt
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap23.txt
nmap --open -p 23 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap23.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap23.txt

cp /var/www/html/nmap/portasespecificas/nmap443.txt /var/www/html/nmap/portasespecificas/historico/nmap23_$DATA.txt
rm -rf /var/www/html/nmap/portasespecificas/data.txt
echo $DATA2 >> /var/www/html/nmap/portasespecificas/data.txt

