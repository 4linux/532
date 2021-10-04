Laboratório 532 - IaaS em Multicloud com AWS, GCP e Azure
=============================

Repositório para armazenar o Laboratório do curso de IaaS em Multicloud com AWS, GCP e Azure da [4Linux][1]

Dependências
------------

Para a criação do laboratório é necessário ter pré instalado os seguintes softwares:

* [Git][2]
* [VirtualBox][3]
* [Vagrant][4]

> Para o máquinas com Windows aconselhamos, se possível, que as instalações sejam feitas pelo gerenciador de pacotes **[Cygwin][5]**.

> Para as máquinas com MAC OS aconselhamos, se possível, que as instalações sejam feitas pelo gerenciador de pacotes **brew**.

Laboratório
-----------

O Laboratório será criado utilizando o [Vagrant][6]. Ferramenta para criar e gerenciar ambientes virtualizados (baseado em Inúmeros providers) com foco em automação.

Nesse laboratório, que está centralizado no arquivo [Vagrantfile][7], sera criada 1 maquina com a seguinte característica:

Nome       | vCPUs | Memoria RAM | IP            | S.O.¹           
---------- |:-----:|:-----------:|:-------------:|:---------------:
multicloud-client     | 1     | 1024MB | 172.16.0.200 | ubuntu-20.04-amd64

> **¹**: Esse Sistema operacional esta sendo utilizado no formato de Boxes, é a forma como o vagrant chama as imagens do sistema operacional utilizado.

Criação do Laboratório 
----------------------

Para criar o laboratório é necessário fazer o `git clone` desse repositório e, dentro da pasta baixada realizar a execução do `vagrant up`, conforme abaixo:

```bash
git clone https://github.com/4linux/532
cd 532/
vagrant up
```

_O Laboratório **pode demorar**, dependendo da conexão de internet e poder computacional, para ficar totalmente preparado._

> Em caso de erro na criação das máquinas sempre valide se sua conexão está boa, os logs de erros na tela e, se necessário, o arquivo **/var/log/vagrant_provision.log** dentro da máquina que apresentou a falha.

Por fim, para melhor utilização, abaixo há alguns comandos básicos do vagrant para gerencia das máquinas virtuais.

Comandos                | Descrição
:----------------------:| ---------------------------------------
`vagrant init`          | Gera o VagrantFile
`vagrant box add <box>` | Baixar imagem do sistema
`vagrant box status`    | Verificar o status dos boxes criados
`vagrant up`            | Cria/Liga as VMs baseado no VagrantFile
`vagrant provision`     | Provisiona mudanças logicas nas VMs
`vagrant status`        | Verifica se VM estão ativas ou não.
`vagrant ssh <vm>`      | Acessa a VM
`vagrant ssh <vm> -c <comando>` | Executa comando via ssh
`vagrant reload <vm>`   | Reinicia a VM
`vagrant halt`          | Desliga as VMs

> Para maiores informações acesse a [Documentação do Vagrant][8]

[1]: https://4linux.com.br
[2]: https://git-scm.com/downloads
[3]: https://www.virtualbox.org/wiki/Downloads
[4]: https://www.vagrantup.com/downloads
[5]: https://cygwin.com/install.html
[6]: https://www.vagrantup.com/
[7]: ./Vagrantfile
[8]: https://www.vagrantup.com/docs
