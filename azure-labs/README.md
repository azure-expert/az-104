## How to access the Azure via CLI
The Azure CLI's default authentication method for logins uses a web browser and access token to sign in.

- Run the login command

```
az login
```

# How to access the VM
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