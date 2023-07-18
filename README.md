# Testando-Terraform
| 🪧 Vitrine.Dev |     |
| -------------  | --- |
| ✨ Nome        | Testando Terraform
| 🏷️ Tecnologias | Terraform, Git
| 🚀 URL         | 
| 🤿 Desafio | Criar uma EC2 na AWS vinculando-a uma VPC, um security group e uma subnet
Segundo projeto de terraform onde utilizamos os conceitos de vpc, subnet e security-group, para que no momento que criarmos nossa máquina EC2, seja vinculado a ela um security group com uma vpc e uma subnet.

<h1>Iniciando o projeto</h1>
Neste projeto separado nossa infraestrutura em diversos arquivos.
<h2>Arquivo main</h2>

Em nosso arquivo main, temos dois blocos de código, em um estamos solicitando a versão da AWS que desajmos utilizar e no bloco provider, colocamos o provedor de cloud que queremos utilizar e definimos a região a ser utilizada.

![Captura de Tela (527)](https://github.com/yurialcant/Testando-Terraform/assets/102321564/784220c6-1b2a-483e-b4da-f9de9a4d05e8)

<h1>VPC</h1>
O nosso segundo arquivo a ser criado foi o arquivo da VPC, a definição de VPC é uma Virtual private cloud ou nuvem privada virtual é uma demanda configurável de recursos compartilhados de computação alocados dentro de um ambiente de nuvem pública, fornecendo um certo nível de isolamento entre as diferentes organizações, utilizando os recursos. Mais especifimente no caso da AWS a VPC é tratada como um serviço onde é possível iniciar recursos da AWS em uma rede virtual definida por você. Essa rede virtual se assemelha a uma rede tradicional que você operaria no seu datacenter, com os benefícios de usar a infraestrutura dimensionável da AWS.
Neste arquivo utilizamos o nosso resource definindo que dejamos criar uma vpc na AWS e passamos o IP que queremos utilizar e habilitamos o DNS.

![Captura de Tela (528)](https://github.com/yurialcant/Testando-Terraform/assets/102321564/7cd2b5e4-180f-44c1-943e-b2614c654fd6)


<h1>Subnets</h1>
Nosso próximo arquivo é onde criamos as subnets, na definição da AWS uma subnet (sub-rede) é uma gama de endereços IP na VPC. Você inicia recursos da AWS, como instâncias do Amazon EC2, nas suas sub-redes. É possível conectar uma sub-rede à Internet, outras VPCs e aos seus próprios datacenters e rotear tráfego de e para as suas sub-redes utilizando tabelas de rotas.
Em nosso arquivo criamos uma subnet privada e uma pública, passamos o endereço ip e o id de nossa VPC.

![Captura de Tela (530)](https://github.com/yurialcant/Testando-Terraform/assets/102321564/e2ccd47f-8dfe-43a9-9066-8c8ae5280850)

<h1>Security Group</h1>
Por fim criamos nosso security group, a AWS o define como controla o tráfego que tem permissão para acessar e sair dos recursos aos quais está associado. Por exemplo, depois de associar um grupo de segurança a uma instância do EC2, ele controla o tráfego de entrada e saída da instância.
Em nosso código passamos dentro do nosso resource, o nome do nosso security group, uma descrição o id de nossa vpc e as regras de entrada e saída, sendo necessário  informar as portas, o protocolo utilizado em nosso caso o tcp e os ips.

![Captura de Tela (531)](https://github.com/yurialcant/Testando-Terraform/assets/102321564/9f90b268-45c6-41d7-a622-83e2a978f8fa)

<h1>Instance</h1>
E finalizamos nossa infraestrutura, criando nossa instância no EC2, onde precisamos passar a ami do OS que iremos utilizar, no caso um Linux do tier gratuito, o tipo de instância, a nossa chave e vinculamos nela o nosso security group com a vpc e nossa subnet, para que no momento da criação da instância ela crie também a vpc, o security group e a subnet.

![Captura de Tela (532)](https://github.com/yurialcant/Testando-Terraform/assets/102321564/fa7e9db8-181d-4951-959f-d24fc8841a3d)
