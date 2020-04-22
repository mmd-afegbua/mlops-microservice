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
Ensure that you update the parameters on parameters.sh.
`./run_docker.sh`
Application port => http://localhost:8000

Run the `./upload_docker.sh` command will upload your image to Dockerhub
For more details on building a docker, check official documentation at https://docs.docker.com/engine/reference/commandline/build/


- Kubernetes
There are different ways to set up kubernetes clusters. For testing, you can use MiniKube. Check the official installation guide of Minikube for more details: https://kubernetes.io/docs/tasks/tools/install-minikube/
`./run_kubernetes.sh`
Application listening port => http://localhost:5000

### Making Predictions

While the application is running in any of the environments above, run `./make_predictions.sh` to make calls to the ML API.

### Summary of Files in Project
- *circleci/config.yml:*  
