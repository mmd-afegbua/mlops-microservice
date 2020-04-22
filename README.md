[![mlops-microservice](https://circleci.com/gh/mmd-afegbua/mlops-microservice.svg?style=svg)](https://app.circleci.com/pipelines/github/mmd-afegbua/mlops-microservice)

# Udacity Cloud DevOps Engineer Nanodegree - Operationalizing a Machine Learning Microservice API
## Overview of Project

This project is `python flask app`that runs a machie learning api, designed to run on three different services; locally, on docker as a contain and on kubernetes - as a container too. The api is that of a pre-trained sklearn model that predicts housing prices in Boston according to available data. I wish I could talk more on the API but that is not why I am writing this. Incase you want to check it out, visit https://www.kaggle.com/c/boston-housing.

## Aim of Project

The aim is to operationalize the machine learning api as a microservice using kubernetes - ultimately - and to xarry out linting tests using CircleCi

### Requirements

1. Github Account
2. CircleCi Account
3. DockerHub Account
4. AWS Cloud9 (Optional)

### Serving The Flask App
##### There are three ways to run this app:
- Local
```
#Setup a python virtual environment and activate it
python3 -m venv ~/.devops
source ~/.devops/bin/activate

#Install the necessary dependencies
make install

#Run the main application
python app.py
```

- Docker Container
#### Ensure that you update the parameters on parameters.sh.
`./run_docker.sh`
