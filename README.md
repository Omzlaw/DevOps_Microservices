[![Omzlaw](https://circleci.com/gh/Omzlaw/DevOps_Microservices.svg?style=svg)](https://github.com/Omzlaw/DevOps_Microservices)

## Project Summary

The main aim of this project is to operationalize a Machine Learning Microservice API

The Machine learning learning API is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

The flask project consists of shell commands for dockerising/containerizing the flask application, and deploying the container on a kubernetes cluster


## Setting up the application

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* Running `make lint` to test your docker file

### Running the application - `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


## Project Structure
* The project consists of a `config.yml` file in the `.circleci` folder for continuous integration using CircleCI's built in CI tools
* The data models used for the prediction are stored in the `model_data` folder
* The main entry point of the application is found in `app.py`
* A `Dockerfile` for containerizing the application
* A `Makefile` for running the setup, installation, testing and linting commands
* A `requirements.txt` file for specify all the project's dependencies
* The project also consists of shell command files `run_docker.sh`, `run_kubernetes.sh`, `upload_docker.sh` for running the containerized application in docker, running the containerized application in a kubernetes cluster and uploading the container to a remote docker repository