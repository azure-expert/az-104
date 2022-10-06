## How to access the Azure via CLI
The Azure CLI's default authentication method for logins uses a web browser and access token to sign in.

- Run the login command

```
az login
```

## What you do will create?
Neste lab, você aprenderá como:

- Criar uma rede virtual
- Criar uma sub-rede
- Criar um endereço IP público
- Criar um grupo de segurança de rede e uma regra de entrada SSH
- Criar uma placa de adaptador de rede virtual
- Conectar o grupo de segurança de rede ao adaptador de rede
- Criar uma conta de armazenamento para diagnóstico de inicialização
- Criar chave SSH
- Criar uma máquina virtual
- Usar SSH para se conectar à máquina virtual

## How to access the VM via SSH
Follow the below steps to connect on the virtual instance.

- Execute a saída do terraform para obter a chave privada SSH e salvá-la em um arquivo.

```
terraform output -raw tls_private_key > id_rsa
```

- Execute a saída do terraform para obter o endereço IP público da máquina virtual.

```
terraform output public_ip_address
```

- Use SSH para se conectar à máquina virtual.

```
ssh -i id_rsa azureuser@<public_ip_address>
```

OBS: Dependendo das permissões do seu ambiente, você pode receber um erro ao tentar usar `SSH` para entrar na máquina virtual com o arquivo de chave `id_rsa`. Se você receber um erro informando que o arquivo de chave privada está desprotegido e não pode ser usado, tente executar o comando `chmod 600 id_rsa`, que restringirá o acesso de leitura e gravação ao proprietário do arquivo.

## Destroying the Azure resources
Quando você não precisar mais dos recursos criados por meio o Terraform, execute as seguintes etapas.

- Execute `terraform plan` e especifique o sinalizador `destroy`.

```
terraform plan -destroy -out main.destroy.tfplan
```

O comando `terraform plan` cria um plano de execução, mas não o executa. Em vez disso, ele determina quais ações são necessárias para criar a configuração especificada em seus arquivos de configuração. Esse padrão permite que você verifique se o plano de execução corresponde às suas expectativas antes de fazer qualquer alteração nos recursos reais.
O parâmetro opcional `-out` permite que você especifique um arquivo de saída para o plano. Usar o parâmetro `-out` garante que o plano que você examinou seja exatamente o que é aplicado.