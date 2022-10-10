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

# Manage Azure subscriptions and governance
- Configure and manage Azure Policy
- Configure resource locks
- Apply and manage tags on resources
- Manage resource groups

## Manage subscriptions
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










- Manage costs by using alerts, budgets, and recommendations
- Configure management groups

### Regioes
Existem em todo o mundo mais de 60 regiaoes representando 140 paises com o provedor do Azure.

- uma regiao represente uma colecao de datacenters
- oferece flexibilidade e escala
- preserva a residencia dos dados
- selecione regioes proximas aos seus usuarios
- esteja ciente da disponibilidade de implanatacao da regiao
- existem servicos globais que sao independentes da regiao (Active Directory)
- as regioes sao pareadas para alta disponibilidade (todas as regioes tem os pares)







