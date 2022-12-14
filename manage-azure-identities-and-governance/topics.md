# Manage Azure Active Directory (Azure AD) objects 

- Create users and groups
- Manage licenses in Azure AD
- Create administrative units
- Manage user and group properties
- Manage device settings and device identity
- Perform bulk updates
- Manage guest accounts
- Configure self-service password reset

# Manage access control

- Create custom role-based access control (RBAC) and Azure AD roles
- Provide access to Azure resources by assigning roles at different scopes
- Interpret access assignments

## Controle de Acesso Baseado em Funcao
Fornece gerenciamento de acesso refinado de recursos no Azure.

- criado no Azure resource manager.
- separa tarefas dentro da sua equipe.
- conceda apenas a quantidade de acesso aos usuarios que eles precisam para executar suas tarefas.

## Definicao de funcao
- **Onwer**: aquele que consegue fazer de tudo, dar permissao para outras pessoas.
- **contributor**: aquele que consegue fazer de tudo mas nao da permissao.
- **reader**: apenas consulta, nem da permissao, nem nada.

## Atribuicao de funcao
Processo de associacao de uma definicao de funcao a um usuario, grupo ou entidade de servico em um escopo com a finalidade de conceder acesso.

## Funcoes do RBAC do Azure vs Funcoes do Azure
As funcoes RBAC fornecem gerenciamento de acesso refinado.

Azure RBAC
- gerenciar o acesso aos recursos do Azure
- o escopo pode ser especificado em varios niveis
- as informacoes de funcao podem ser acessadas no portal do Azure, Azure CLI,  Azure Powershell, Azure Resource Manager templaes, REST API.

Azure AD
- gerenciar o acesso a objetos do Azure AD
- o escopo esta a nivel do locatario
- as informacoes de funcao podem ser acessadas no portal do Azure, Microsoft 365 admin portal, Microsoft Graph, Azure Active Directory, PowerShell for Graph.










# Manage Azure subscriptions and governance

- Configure and manage Azure Policy
- Configure resource locks
- Apply and manage tags on resources
- Manage resource groups
- Manage costs by using alerts, budgets, and recommendations
- Configure management groups
- Manage subscriptions

## Politica do Azure
- um servico para criar, atribuir e gerenciar politicas.
- executa avaliacoes e verificacoes de recursos nao compativeis.

Vantagens:
- execucao e conformidade
- aplique politicas em escala
- remediacao

Casos de uso:
- **tipos de recursos permitidos** (especifique os tipos de recursos que sua organizacao pode implantar)
- **SKUs de maquina virtual permitidos** (especifique um conjunto de SKUs de maquina virtual que sua organizacao pode implantar).
- **locais permitidos** (restrinja os locais que sua organizacao pode especificar ao implantar recursos).
- **exigir tag e seu valor** (aplica um tag obrigatoria e seu valor).
- **o backup do azure deve estar habilitado para maquinas virtuais** (audite se o servico de backup do azure estiver habilitado para todas as maquinas virtuais).

## Implementando Politicas no Azure
1- escolher a definicao de politica

2- criar definicoes de iniciativa

3- escopo da definicao da iniciativa

4- exibir resultados da avaliacao da politica.

## Definicoes de Politica
- existem muitas definicoes de politica disponiveis no azure.
- voce pode importar politicas do github.
- as definicoes de politica tem formato JSON especifico.
- voce pode criar definicoes de politicas personalizadas.

## Definicoes de Iniciativa
- definicoes de politica de grupo
- incluir uma ou mais politicas
- requer planejamento
































### Iniciando com subscriptions

Para se criar recursos dentro do Azure, precisamos de grupos de recursos e uma assinatura.

- somente identidades no azure ad ou em um diretorio confiavel pelo azure ad podem criar uma assinatura.
- unidade logica dos servicos do azure vinculada a uma conta do azure.
- limite de seguranca e cobranca.

### Como obter uma subscription (assinatura)
1- os clientes do Enterprise Agreement (EA) fazem um compromisso monetario inicial e consomem servicos ao longo do ano.

2- os revendedores fornecem uma maneira simples e flexivel de adquirir servicos em nuvem.

3- os parceiros podem projetar e implementar sua solucao de nuvem no azure.

4- conta pessoal gratuita - comece imediatamente.

### Uso da subscription
`FREE` - Inclui 200 dolares de credito por 12 meses de uso.

`Pay-as-you-Go` - mudam mensalmente

`CSP` - parceiro que ajuda, pequenas empresas

`Enterprise` - one agreement, diretamente com a Microsoft.

`Student` - inclui 100 dolares por 12 meses de uso.

### Criando grupos de recursos
1- Os recursos so podem existir em um grupo de recursos.

2- os grupos podem ter recursos de varios tipos (servicos) e de muitas regioes diferentes.

3- os grupos nao podem ser renomeados ou aninhados.

4- os bloqueios de recursos  podem impedir alteracoes de recursos.

5- voce pode mover recursos entre grupos.

### Determinando limites de recursos (pode cair na prova)
- os recursos tem um limite paadrao tambem conhecido como `cota`.
- util para rastrear o uso atual e planejar o uso futuro.
- voce pode abrir um caso de suporte gratuito para aumentar os limites aos maximos publicados.

### Hierarquia de recursos do Azure
- os grupos de gerenciamento fornecem um nivel de escopo acima das assinaturas.
- direcione politicas e gaste orcamentos em assinaturas e herancas nas hierarquias.
- implementar relatorios de conformidade e custos por organizacao (negocios/equipe).

### Aplicar marcacao de recursos (TAGS)
1- fornece metadados para seus recursos do azure.

2- organiza logicamente os recursos em taxonomia.

3- consiste em um par nome-valor

4- muito util para acumular informacoes de faturamento.

### Gereciamento de custos
- os custos sao especificos dos recursos
- os custos do uso podem variar entre os locais
- os custos para transferencias de dados de entrada e saida diferem.
- pre-pagamento com instancias reservadas do azure.
- use suas licencas locais com o beneficio hibrido do azure
- otimize com alertas, orcamentos e recomendacoes.

### Politica do Azure
um servico para criar, atribuir e gerenciar politicas.











### Regioes
Existem em todo o mundo mais de 60 regiaoes representando 140 paises com o provedor do Azure.

- uma regiao represente uma colecao de datacenters
- oferece flexibilidade e escala
- preserva a residencia dos dados
- selecione regioes proximas aos seus usuarios
- esteja ciente da disponibilidade de implanatacao da regiao
- existem servicos globais que sao independentes da regiao (Active Directory)
- as regioes sao pareadas para alta disponibilidade (todas as regioes tem os pares)







