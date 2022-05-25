# Introduction
I have prepared a simple react application with a "I'm Tony Chan. Hello World!". For suggested software of this project, they are Node, Nginx, Docker and Minikube.

Please pull the repository for your testing.

# Containerization
You can run the Dockerfile in the root directory for building the docker image by,
```
docker build -t <image name with tag> <directory of the Dockerfile>

Example:
docker build -t react-app:1 .
```

For Dockerfile, it includes two stages. One is the build stage to produce the neccessary files or dependencies of the application. The other one is nginx stage, which I have used to host the react web application.

# Deployment
To simplify the preparation, I have chosen Minikube which is a local Kubernetes. Please prepare your minikube cluster and start it before executing below steps.

In the folder "deployment", you can find two YAML files, and run below command,
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

For deployment.yaml, it will create pods which includes the react application container.
For service.yaml, it will create a service to expose the pods created.

To access the app, you can simply run,
```
minikube service react-app
```
