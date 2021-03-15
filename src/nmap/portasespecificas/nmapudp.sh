#ASN para escanear  a rede
ASN="200.219.149.0/24"
#remove arquivos necessários
rm -rf /var/www/html/nmap/meu_asn.txt
#cria novos arquivos
echo $ASN >> /var/www/html/nmap/meu_asn.txt
echo $ASN2 >> /var/www/html/nmap/meu_asn.txt
echo $ASN3 >> /var/www/html/nmap/meu_asn.txt
echo $ASN4 >> /var/www/html/nmap/meu_asn.txt
echo $ASN5 >> /var/www/html/nmap/meu_asn.txt
rm -rf /var/www/html/nmap/portasespecificas/nmap161udp.txt
mkdir  /var/www/html/nmap/portasespecificas/historico
DATA=$(date +"%d-%m-%Y-%T")
DATA2=$(date +"%d/%m/%Y as %T")
CARREGAMENTO="Realizando a procura... espere"
rm -rf /var/www/html/nmap/portasespecificas/dataudp.txt
echo $DATA2 >> /var/www/html/nmap/portasespecificas/dataudp.txt
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap161udp.txt
nmap -sU --open -p 161 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap161udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap161udp.txt

cp /var/www/html/nmap/portasespecificas/nmap161udp.txt /var/www/html/nmap/portasespecificas/historico/nmap161udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap21udp.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap21udp.txt

nmap -sU --open -p 21 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap21udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap21udp.txt

cp /var/www/html/nmap/portasespecificas/nmap21udp.txt /var/www/html/nmap/portasespecificas/historico/nmap21udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap22udp.txt
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap22udp.txt
nmap -sU --open -p 22 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap22udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap22udp.txt

cp /var/www/html/nmap/portasespecificas/nmap22udp.txt /var/www/html/nmap/portasespecificas/historico/nmap22udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap80udp.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap80udp.txt
nmap -sU --open -p 80 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap80udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap80udp.txt

cp /var/www/html/nmap/portasespecificas/nmap80udp.txt /var/www/html/nmap/portasespecificas/historico/nmap80udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap53udp.txt

echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap53udp.txt
nmap -sU --open -p 53 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap53udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap53udp.txt

cp /var/www/html/nmap/portasespecificas/nmap53udp.txt /var/www/html/nmap/portasespecificas/historico/nmap53udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap123udp.txt
CARREGAMENTO6="Realizando procura de portas 123... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap123udp.txt
nmap -sU --open -p 123 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap123udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap123udp.txt

cp /var/www/html/nmap/portasespecificas/nmap123udp.txt /var/www/html/nmap/portasespecificas/historico/nmap123udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap111udp.txt
CARREGAMENTO7="Realizando procura de portas 111... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap111udp.txt
nmap -sU --open -p 111 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap111udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap111udp.txt

cp /var/www/html/nmap/portasespecificas/nmap111udp.txt /var/www/html/nmap/portasespecificas/historico/nmap111udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap135udp.txt
CARREGAMENTO8="Realizando procura de portas 135... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap135udp.txt
nmap -sU --open -p 135 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap135udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap135udp.txt

cp /var/www/html/nmap/portasespecificas/nmap135udp.txt /var/www/html/nmap/portasespecificas/historico/nmap135udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap3389udp.txt
CARREGAMENTO9="Realizando procura de portas 3389... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap3389udp.txt
nmap -sU --open -p 3389 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap3389udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap3389udp.txt

cp /var/www/html/nmap/portasespecificas/nmap3389udp.txt /var/www/html/nmap/portasespecificas/historico/nmap3389udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap5353udp.txt
CARREGAMENTO10="Realizando procura de portas 5353... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap5353udp.txt
nmap -sU --open -p 5353 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap5353udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap5353udp.txt

cp /var/www/html/nmap/portasespecificas/nmap5353udp.txt /var/www/html/nmap/portasespecificas/historico/nmap5353udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap1900udp.txt
CARREGAMENTO11="Realizando procura de portas 1900... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap1900udp.txt
nmap -sU --open -p 1900 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap1900udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap1900udp.txt

cp /var/www/html/nmap/portasespecificas/nmap1900udp.txt /var/www/html/nmap/portasespecificas/historico/nmap1900udp_$DATA.txt

rm -rf /var/www/html/nmap/portasespecificas/nmap443udp.txt
CARREGAMENTO12="Realizando procura de portas 443... espere"
echo $CARREGAMENTO >> /var/www/html/nmap/portasespecificas/nmap443udp.txt
nmap -sU --open -p 443 --min-rate 100000000 $ASN -oG - | grep "/open" | awk '{ print $2 }' >> /var/www/html/nmap/portasespecificas/nmap443udp.txt
sed -i '/Realizando/d' /var/www/html/nmap/portasespecificas/nmap443udp.txt

cp /var/www/html/nmap/portasespecificas/nmap443udp.txt /var/www/html/nmap/portasespecificas/historico/nmap443udp_$DATA.txt
rm -rf /var/www/html/nmap/portasespecificas/dataudp.txt
echo $DATA2 >> /var/www/html/nmap/portasespecificas/dataudp.txt
