# DESAFIO-DATASCIENCE

## Introdução

In the ever-evolving landscape of Data Science, challenges are essential to assess the skills, creativity, and problem-solving capabilities of aspiring Data Scientists. This repository presents solutions for two challenges: The ENEM Data Challenge and the SQL Data Challenge.

## Tech Stack Description

The project primarily leverages Docker to ensure a consistent environment, particularly for the SQL challenge:

- MySQL: Database
    - Image: mysql:latest
    - Database Port: 3306
- OmniDB: Database Management Tool
    - Image: omnidbteam/omnidb:latest
    - Port: 8080

## File Structure

```
/DESAFIO-DATASCIENCE/
│
├── Desafio_ENEM/
│   ├── data/              # Directory for storing ENEM data files
│   └── scripts/           # Directory for Python scripts related to the ENEM challenge
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

## Dataset

This project uses the Sakila dataset from MySQL. This synthetic dataset represents a fictitious movie rental store, consisting of films, actors, film-actor relationships, and much more. The dataset serves as an excellent tool for practicing SQL queries and understanding relational database structures.

### Setup

#### Requirements

- For the Desafio_SQL: Docker must be installed on your machine. This requirement can be ignored if using a Cloud Development Environment (CDE), like Gitpod or GitHub Codespaces.

#### Clone project

```bash
$ git clone https://github.com/fernandodgl/DESAFIO-DATASCIENCE
```

#### Build containers

Navigate to the `Desafio_SQL` directory:

```bash
$ cd DESAFIO-DATASCIENCE/Desafio_SQL/
$ chmod +x sakila_download.sh
```

#### Start containers

In the same directory:

```bash
$ make all
```

#### Access:

To access the OmniDB web interface, navigate to:

|        Application        |URL                          |
|----------------|-------------------------------|    
|OmniDB | [http://localhost:8080](http://localhost:8080)|

## References

- [Enem Official Site](https://www.gov.br/inep/pt-br/areas-de-atuacao/avaliacao-e-exames-educacionais/enem)
- [Sakila Database Information](https://dev.mysql.com/doc/sakila/en/sakila-preface.html)
