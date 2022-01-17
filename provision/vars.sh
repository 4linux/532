#!/bin/bash
### vars.sh ####
USER1='ec2-user'
USER2='suporte-gcp'
USER3='azureuser'
PASS='4linux'

function AdicionarUsuarios {
# Criando e adicionando aos sudoers o usuário ec2-user 
useradd -m -d "/home/${USER1}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER1}
sed 's|vagrant|'"${USER1}"'|g' /etc/sudoers.d/vagrant > /etc/sudoers.d/${USER1}

# Criando e adicionando aos sudoers o usuário suporte-gcp
useradd -m -d "/home/${USER2}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER2}
sed 's|vagrant|'"${USER2}"'|g' /etc/sudoers.d/vagrant > /etc/sudoers.d/${USER2}

# Criando e adicionando aos sudoers o usuário azureuser
useradd -m -d "/home/${USER3}" -p $(openssl passwd -1 ${PASS}) -s /bin/bash ${USER3}
sed 's|vagrant|'"${USER3}"'|g' /etc/sudoers.d/vagrant > /etc/sudoers.d/${USER3}
}

function InstalarPacotes {
# Atualizando os pacotes
sudo apt update -y; wait;

# Instalando pacotes essenciais para o curso
sudo apt install -y apache2-utils;
}

function ConfigurarSSH {
# Configurar servidor SSH para permitir conexão por senha
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes'/ /etc/ssh/sshd_config
systemctl restart sshd
}
