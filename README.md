# Projeto-Banco-Aluguel-Carros
Projeto de banco de dados para sistema de aluguel de carros
# Sistema de Aluguel de Carros

## Tema
Sistema de banco de dados para uma empresa de aluguel de carros.

## Objetivo
Desenvolver um banco de dados relacional utilizando PostgreSQL para gerenciar clientes, atendentes, veículos e contratos de aluguel.

O sistema permitirá controlar os veículos disponíveis, registrar clientes e gerenciar os contratos de locação.

## Público-Alvo
Empresas de aluguel de veículos que oferecem carros para motoristas de aplicativos como Uber, 99 e InDrive.

## Tecnologias Utilizadas
- PostgreSQL
- SQL
- GitHub
## Modelo de Dados

```mermaid
erDiagram

PESSOAS {
    int id PK
    string cpf
    string nome
    string sobrenome
    string endereco
    string email
    string dados_bancarios
    string telefone
    string sexo
    date data_nascimento
    boolean ativo
    timestamp created_at
    timestamp updated_at
}

VEICULOS {
    int id PK
    string placa
    string marca
    string modelo
    int ano
    string cor
    string tipo
    decimal valor_dia
    boolean disponivel
    int km_atual
    string observacoes
    timestamp created_at
    timestamp updated_at
}

CONTRATOS {
    int id PK
    string numero_contrato
    date data_contrato
    int cliente_id FK
    int veiculo_id FK
    string tipo_pagamento
    date data_inicio
    date data_fim
    decimal valor_original
    decimal desconto
    decimal valor_final
    string status
    int km_inicial
    int km_final
    string observacoes
    timestamp created_at
    timestamp updated_at
}

PESSOAS ||--o{ CONTRATOS : "realiza"
VEICULOS ||--o{ CONTRATOS : "é utilizado em"
```
## Inovação do Projeto

Inovação: Sistema de Gamificação

O sistema implementa um mecanismo de gamificação para aumentar o engajamento dos clientes.

Objetivo
Incentivar os usuários a alugarem mais veículos através de recompensas.

Funcionalidades implementadas:
- Sistema de pontos por aluguel
- Níveis de cliente (bronze, prata, ouro, diamante)
- Histórico de pontuação
- Cashback baseado no nível
- Evolução automática de nível

Benefícios:
- Maior fidelização de clientes
- Incentivo ao uso contínuo do sistema
- Experiência mais interativa

## Modelo de Dados (ER Diagram)

```mermaid
erDiagram

    veiculos {
        int id PK
        string placa
        string marca
        string modelo
        int ano
        string cor
        string tipo 
        decimal valor_dia
        boolean disponivel
        int km_atual
        text observacoes
        timestamp created_at
        timestamp updated_at
    }

    pessoas {
        int id PK
        string cpf
        string nome
        string sobrenome
        text endereco
        string email
        text dados_bancarios
        string telefone
        string sexo
        date data_nascimento
        string tipo
        boolean ativo
        timestamp created_at
        timestamp updated_at
    }

    clientes {
        int id PK
        int pessoa_id FK
        int pontos
        string nivel
        decimal gasto_mensal
        decimal cashback_acumulado
        date ultimo_contrato
        int meses_sem_contrato
        timestamp created_at
        timestamp updated_at
    }

    contratos {
        int id PK
        string numero_contrato
        date data_contrato
        int cliente_id FK
        int veiculo_id FK
        string tipo_pagamento
        date data_inicio
        date data_fim
        decimal valor_original
        decimal desconto
        decimal valor_final
        string status
        int km_inicial
        int km_final
        text observacoes
        timestamp created_at
        timestamp updated_at
    }

    pagamentos {
        int id PK
        int contrato_id FK
        decimal valor
        timestamp data_pagamento
        string metodo_pagamento
        string status
        text comprovante_url
        timestamp created_at
    }

    historico_pontos {
        int id PK
        int cliente_id FK
        int contrato_id FK
        int pontos
        string tipo
        text descricao
        timestamp created_at
    }

    manutencoes {
        int id PK
        int veiculo_id FK
        string tipo
        text descricao
        decimal custo
        date data_inicio
        date data_fim
        int km_manutencao
        string status
        timestamp created_at
        timestamp updated_at
    }

    configuracoes {
        int id PK
        string chave
        string valor
        text descricao
        timestamp updated_at
    }

    %% RELACIONAMENTOS

    pessoas ||--|| clientes : "1:1"
    clientes ||--o{ contratos : "1:N"
    veiculos ||--o{ contratos : "1:N"
    contratos ||--o{ pagamentos : "1:N"
    clientes ||--o{ historico_pontos : "1:N"
    contratos ||--o{ historico_pontos : "1:N"
    veiculos ||--o{ manutencoes : "1:N"
```
## Protótipo da Interface

O protótipo da interface do sistema foi gerado utilizando IA para criação de interfaces modernas.

Telas implementadas:

- Login
- Dashboard (tela principal)
- Gerenciamento de pessoas
- Gerenciamento de veículos
- Gerenciamento de Contratos
- Ranking de Clientes (Gamificação)

As imagens das telas podem ser encontradas na pasta:

interface/
