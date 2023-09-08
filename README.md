# DESAFIO-DATASCIENCE

## Introdução

Este repositório apresenta soluções para dois desafios: o Desafio de Dados do ENEM e o Desafio de Dados SQL.

## Descrição da Tecnologia Utilizada

- MySQL: Database
    - Image: mysql:latest
    - Database Port: 3306
- OmniDB: Database Management Tool
    - Image: omnidbteam/omnidb:latest
    - Port: 8080

## Estrutura de Arquivos

```
/DESAFIO-DATASCIENCE/
│
├── Desafio_ENEM/
│   ├── data/              
│   └── scripts/           
│
├── Desafio_SQL/
│   ├── docker-compose.yml
│   ├── Dockerfile
│   ├── sakila-db/
│   │   ├── sakila-data.sql
│   │   └── sakila-schema.sql
│   ├── queries/
│   │   ├── query1.sql
│   │   ├── query2.sql
│   │   ├── query3.sql
│   │   ├── query4.sql
│   │   ├── query5.sql
│   │   └── query6.sql
│   ├── sakila_download.sh
│   └── Makefile
│
└── .gitignore
```

## Conjunto de Dados

Este projeto utiliza o conjunto de dados Sakila do MySQL. Este conjunto de dados sintético representa uma locadora de filmes fictícia, composta por filmes, atores, relações filme-ator e muito mais. O conjunto de dados serve como uma excelente ferramenta para praticar consultas SQL e entender estruturas de bancos de dados relacionais.

### Configuração

#### Requisitos

- Para o Desafio_SQL: O Docker deve estar instalado em sua máquina. Este requisito pode ser ignorado se estiver usando um Ambiente de Desenvolvimento em Nuvem (CDE), como o Gitpod ou o GitHub Codespaces.

#### Clonar projeto

```bash
$ git clone https://github.com/fernandodgl/DESAFIO-DATASCIENCE
```

#### Construir containers

Navegue até o diretório 'Desafio_SQL':

```bash
$ cd DESAFIO-DATASCIENCE/Desafio_SQL/
$ chmod +x sakila_download.sh
```

#### Iniciar containers

No mesmo diretório:

```bash
$ make all
```

Após iniciar os containers, crie um superusuário para o OmniDB:

```bash
$ docker exec -it desafio_sql-omnidb-1 python omnidb-server.py --createsuperuser=admin pass
```

Este comando cria um usuário com nome de usuário admin e senha pass para o primeiro login no OmniDB. Você precisará dessas credenciais para acessar a interface web do OmniDB.


#### Acesso:

Para acessar a interface web do OmniDB, navegue até:

|        Applicação        |URL                          |
|----------------|-------------------------------|    
|OmniDB | [http://localhost:8080](http://localhost:8080)|

## Referências

- [Enem Official Site](https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem)
- [Sakila Database Information](https://dev.mysql.com/doc/sakila/en/sakila-preface.html)
