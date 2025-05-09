## 🐧 Script de Criação de Diretórios, Grupos e Usuários no Linux

Este repositório contém um script Bash desenvolvido para fins educacionais, com o objetivo de automatizar a criação de diretórios, grupos e usuários em sistemas Linux. Ele também define permissões específicas de acesso para cada grupo.

## 📄 Descrição do Script

O script realiza as seguintes ações:

### 🗂️ Criação de Diretórios
- `/publico`: acesso liberado para todos os usuários  
- `/adm`, `/ven`, `/sec`: acesso restrito aos respectivos grupos

### 👥 Criação de Grupos
- `GRP_ADM`: grupo administrativo  
- `GRP_VEN`: grupo de vendas  
- `GRP_SEC`: grupo de segurança

### 👤 Criação de Usuários
- Usuários são criados com diretório home, shell bash e senha criptografada  
- Cada grupo recebe três usuários padrão

### 🔐 Definição de Permissões
- Diretórios dos grupos possuem permissão total apenas para membros do grupo  
- O diretório público tem permissão total para todos os usuários

## 🛠️ Pré-requisitos

- Distribuição Linux com acesso root  
- Bash instalado  
- `openssl` instalado para criptografar a senha dos usuários

## ▶️ Como Usar

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
cd nome-do-repositorio
