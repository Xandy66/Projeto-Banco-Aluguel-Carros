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

Para tornar o sistema mais atrativo, foi implementado um sistema de **gamificação**.

A ideia é incentivar os clientes a utilizarem mais o sistema de aluguel de veículos através de recompensas virtuais.

### Funcionalidades de Gamificação

- Sistema de **pontuação** para cada aluguel realizado
- **Níveis de cliente** baseados na quantidade de pontos
- **Conquistas** liberadas conforme o cliente utiliza o sistema
- Possibilidade de criar **ranking de clientes**

### Exemplo

- Ao realizar um aluguel, o cliente ganha pontos
- Ao acumular pontos suficientes, o cliente sobe de nível
- Após certo número de alugueis, o cliente desbloqueia conquistas

## Modelo de Dados (ER Diagram)

```mermaid
erDiagram

PESSOAS {
    int id
    varchar nome
    varchar cpf
}

VEICULOS {
    int id
    varchar modelo
    varchar placa
}

CONTRATOS {
    int id
    int pessoa_id
    int veiculo_id
    date data_inicio
}

PONTUACAO_CLIENTE {
    int id
    int pessoa_id
    int pontos
}

NIVEL_CLIENTE {
    int id
    varchar nome
    int pontos_minimos
}

CONQUISTAS {
    int id
    varchar nome
}

CLIENTE_CONQUISTA {
    int id
    int pessoa_id
    int conquista_id
}

PESSOAS ||--o{ CONTRATOS : faz
VEICULOS ||--o{ CONTRATOS : alugado

PESSOAS ||--|| PONTUACAO_CLIENTE : possui
PESSOAS ||--o{ CLIENTE_CONQUISTA : ganha

CONQUISTAS ||--o{ CLIENTE_CONQUISTA : registra
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
