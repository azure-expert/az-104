## Gereciamento de contas e usuario
- deve ser administrador global ou administrador de usuarios para gerenciar usuarios.
- o perfil do usuario (foto, trabalho, informacoes de contato) sao opcionais.
- os usuarioos excluidos podem ser restaurados por 30 dias.
- as informacoes de login e log de auditoria estao disponiveis.










## AD DS vs Azure Active Directory

- O Azure AD  principalmente uma solução de identidade e  projetado para comunicações HTTP e HTTPS.
- Consultado usando o API REST sobre HTTP e HTTPS, em vez de LDAP.
- Usa protocolos HTTP e HTTPS, como SAML, WS-Federation e OpenID Connect para autenticação e OAuth para autorização, em vez de Kerberos.
- Inclui serviços de federação e muitos serviços de terceiros (como o Facebook)
- Os usuários e grupos do Azure AD são criados em uma estrutura simples e não há (UOs), unidades organizacionais ou (GPSs) Objetos de Plitica de Grupo.

## Tipos de Licenca do Azure AD
Tomar cuidado com cada funcionalidade que existem entre Premium P1 e Premium P2 (mais usados em producao).

![azure](images/azure.png) 

