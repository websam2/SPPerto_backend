# Projeto Dockerizado

Este projeto configura um ambiente Docker para uma aplicação Flask e um banco de dados MySQL.

## Pré-requisitos

- Docker
- Docker Compose

## Estrutura do Projeto

- `docker-compose.yml`: Configura o ambiente Docker para a aplicação.
- `Dockerfile`: Configura o ambiente Docker para a aplicação Flask.

## Configuração

### Variáveis de Ambiente

Crie um arquivo `.env` na raiz do projeto e adicione as seguintes variáveis de ambiente:

```plaintext
DB_PASSWORD=your_db_password
DB_NAME=your_db_name
```

### Banco de Dados

- `MYSQL_ROOT_PASSWORD`: Senha do usuário root do MySQL.
- `MYSQL_DATABASE`: Nome do banco de dados a ser criado.

### Flask App

- `FLASK_ENV`: Ambiente de desenvolvimento (development).
- `DB_USER`: Usuário do banco de dados (root).
- `DB_PASSWORD`: Senha do usuário root.
- `DB_HOST`: Nome do serviço Docker para o MySQL (db).
- `DB_NAME`: Nome do banco de dados.

## Como Usar

1. Clone este repositório:
    ```bash
    git clone https://github.com/websam2/SPPerto_backend
    cd SPPerto_backend
    ```

2. Crie o arquivo `.env` com as variáveis de ambiente.


3. Construa e inicie os contêineres:
    ```bash
    docker-compose up --build
    ```

4. Acesse a aplicação em `http://localhost:5000`.

## Estrutura do Projeto

- `app`, `config`, `db`: Código-fonte da aplicação.
- `sql`: Scripts SQL para criar e inicializar o banco de dados.
- `requirements.txt`: Dependências do Python para a aplicação Flask.
- `Dockerfile`: Configura o contêiner da aplicação Flask.
- `docker-compose.yml`: Configura os serviços Docker (aplicação e banco de dados).

## Notas

- Certifique-se de que as portas `3307` e `5000` estejam disponíveis em seu host.
- Os scripts SQL em `./sql` serão executados automaticamente na inicialização do banco de dados.
