# DESAFIO ÂNIMA - DATASCIENCE

## Introdução

Currently, with the advancement of technology. As the years go by, more sophisticated techniques etc etc etc bla bla bla

## Tech Stack Description

This project presents the following container:

* MySQL: Database
    * Image: 0.95.0
    * Database Port: 8000

## File Structure

```bash
/DESAFIO-DATASCIENCE/
|-- /Desafio_ENEM/
|   |-- /data/
|   |   |-- raw_data.csv
|   |   |-- cleaned_data.csv
|   |-- /notebooks/
|   |   |-- EDA.ipynb
|   |   |-- Modeling.ipynb
|   |-- /src/
|   |   |-- data_preprocessing.py
|   |   |-- model.py
|-- /Desafio_SQL/
|   |-- /queries/
|   |   |-- question_1.sql
|   |   |-- question_2.sql
|   |   |-- ...
|   |-- /docker/
|   |   |-- Dockerfile
|   |   |-- docker-compose.yml
|   |   |-- init.sql  # Optional: script to automate DB setup
|   |   |-- sakila-dump.sql  # Optional: local copy of the Sakila database dump
|-- README.md
|-- .gitignore
```

## Dataset

This project uses the Sakila dataset. ETC ETC ETC. Here's how to prepare the data for this project:

1. Download the Sakila dataset from 'https://dev.mysql.com/doc/sakila/en/sakila-preface.html'
<!-- 2. Unzip the downloaded file. This should result in a directory structure like the following:
    ```
    MLChallenge_Dataset/
                        data/
                            1/   
                                live/
                                    image1.jpg
                                    image2.jpg
                                    image3.jpg
                                spoof/
                                    image1.jpg
                                    image2.jpg
                                    image3.jpg
                            2/
                            ...
    ```
3. Move the `data/` subfolder into the `data/` directory in the root of this repository. -->

4. Due to Github storage contraints, you have 2 options to build the model. You can you the notebook included and run the specific cell to make it and then import it to the folder 'model' inside the root. The second option in to run the script inside 'scripts' folder which will run the necessary .py files to build the model. One must notice that, after building the model, you should delete it to avoid conflicts while trying to commit to the repository.


## Setup

### Requirements
    
    $ Para o Desafio_SQL: Must have Docker installed in your machine. Ignore it if using CDE (Cloud Development Environment), i.e., Gitpod, GitHub Codespaces, etc

### Clone project

    $ git clone https://github.com/fernandodgl/DESAFIO-DATASCIENCE

### Build containers

Inside the 'DESAFIO-DATASCIENCE/desafio_sql/' folder (root)

    $ chmod +x setup_sakila.sh

### Start containers

At the same path above:

    $ ./run.sh

### Check if you can access:

|        Application        |URL                          |Credentials                         |
|----------------|-------------------------------|-----------------------------|    
|FastAPI | [http://localhost:8000/docs](http://localhost:8000/docs)|  |         |
  

## References

https://arxiv.org/pdf/2305.09285.pdf

https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9925105

https://www.researchgate.net/figure/comparing-cIOU-of-VGG-16-DenseNet121-and-ResNet50-for-a1D1595-while_fig23_330713580

https://openaccess.thecvf.com/content/WACV2021/papers/Zhang_ResNet_or_DenseNet_Introducing_Dense_Shortcuts_to_ResNet_WACV_2021_paper.pdf

https://microscope.openai.com/models/resnetv2_50_slim?models.technique=deep_dream

[CelebA-Spoof Repo](https://github.com/ZhangYuanhan-AI/CelebA-Spoof)
