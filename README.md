# Agner Security - Uma ferramenta de Luis Carlos Agner Claro para segurança de redes de computadores
Uma ferramenta WEB de segurança open source de redes de computadores com Nmap, honeypot, vulnerabilidade de equipamentos de rede etc, A ferramenta AGNER SECURITY serve para escanear automaticamente o bloco IP de portas abertas e vulnerabilidades, juntando uma dashboard WEB amigável para visualização de dados.

![](https://i.imgur.com/RlxWJpo.png)

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

Click no link para ir a WIKI do projeto com o passo a passo da instalação: https://github.com/AgnerSecurity/AgnerSecurity/wiki
