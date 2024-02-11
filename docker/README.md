
## Intro To Docker
# git clone https://github.com/docker/welcome-to-docker
# Check that the 'Dockerfile' do exist

## Tip

To run Docker commands, you must use a terminal. Based on your operating system, you can open a terminal by doing the following:

For Windows, select the Start Menu, specify cmd, and then select Command Prompt.

For Mac, and Linux use the Terminal 

# cd /path/to/welcome-to-docker/

# To build the container 'docker build -t welcome-to-docker .'  # To build an image

# docker run -d -p 8088:80 --name welcome-to-docker docker/welcome-to-docker   #To run the container


```
This docker run command is used to create and start a Docker container based on an image named docker/welcome-to-docker. <br>
Let's  break down the command and its options: <br>

docker run: This command is used to run a Docker container from an image.    <br>
-d: This option runs the container in detached mode, meaning it runs in the background and you get control of your terminal back. <br>
-p 8088:80: This option maps port 8088 on the host machine to port 80 inside the container.   <br>
It means that you can access the  container's service running on port 80 from your host machine's port 8088.  <br>
--name welcome-to-docker: This option assigns a name to the container, in this case, welcome-to-docker.   <br>
docker/welcome-to-docker: This is the name of the Docker image from which to create the container.  <br>
 In this case, it's pulling an image named docker/welcome-to-docker from the Docker Hub repository.  <br>
So, when you run this command, Docker will start a new container named welcome-to-docker based on the docker/welcome-to-docker image. <br>
 This container will run a service accessible on port 8088 of your host machine, which forwards requests to port 80 inside the container. <br>
  The container runs in the background (detached mode), allowing you to continue using your terminal for other tasks. <br>
```
# On your local machine visit  http://localhost:8088  if it is on a virtual machine make sure you have open port 8088 
# and visit  http://IP-Address:8088 <br>

#  ===============================================================================================

# Run multi-container applications

A typical application will have a frontend, backend(app) and a database  <br>
If you've already completed the How do I run a container using 'welcome-to-docker' walkthrough, you learned that you must start each container individually. <br>
 Imagine how great it would be if a tool could start multiple containers with a single command. That tool is Docker Compose.<br>
 # Step 1: Get the sample application
 `git clone https://github.com/docker/multi-container-app`  <br>

 The sample application is a simple todo application built using ExpressJS and Node.js. The application saves all todos in a MongoDB database. You don't need to know any of these technologies to continue with the walkthrough. <br>

 Web Browser <==========> backend(NodeJS) + database(MongoDB)

 ![alt text](image.png)

# Step 2: Dig into the Compose file
view the Compose.yaml file using your code editor in our case pls open it with VSCode

# Step 3 Run the application
cd /path/to/multi-container-app/

    docker compose up -d

    In the previous command, the -d flag tells Docker Compose to run in detached mode. <br>
  
# step 4, Open app/views/todos.ejs in a text or code editor, then change the text on line 18
Save the changes in app/views/todos.ejs. <br>
View your application at http://localhost:3000 to see the changes in real-time. <br>
# Step 5: Develop in your containers
cd /path/to/multi-container-app/
docker compose watch
Save the changes in app/views/todos.ejs.
View your application at http://localhost:3000 to see the changes in real-time.

# Step 6: Delete everything and start over
# Project 2
# Persist container data
Docker isolates all content, code, and data in a container from your local filesystem. When you delete a container, Docker deletes all the content within that container.
![alt text](image-1.png)

`git clone https://github.com/docker/multi-container-app` to clone the app

Sometimes, you may want to persist the data that a container generates. To do this, you can use volumes. <br>

![alt text](image-2.png)

To persist data after you delete a container, use a volume. A volume is a location in your local filesystem, automatically managed by Docker Desktop. <br>

To add a volume to this project, open the compose.yaml file in a code or text editor, and then uncomment the following lines.<br>
```
todo-database:
    # ...
    volumes:
      - database:/data/db

# ...
volumes:
  database:
```

The volumes element that is nested under todo-database tells Compose to mount the volume named database to /data/db in the container for the todo-database service.

The top-level volumes element defines and configures a volume named database that can be used by any of the services in the Compose file.

 # Run the application 
 `cd /path/to/multi-container-app/`
 `docker compose up -d`

open ` http://localhost:3000`

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Access a local folder from a container

Docker isolates all content, code, and data in a container from your local filesystem. <br>
By default, containers can't access directories in your local filesystem. <br>

![alt text](image-3.png)

# Step 1: Get the sample application

`git clone https://github.com/docker/bindmount-apps`

---->Add a bind mount to access data on your system from a container. 
---->A bind mount lets you share a directory from your host's filesystem into the container.
----> open ` the compose.yaml`

----> uncomment the following lines.

```
todo-app:
    # ...
    volumes:
      - ./app:/usr/src/app
      - /usr/src/app/node_modules
```

# Take Note
The volumes element tells Compose to mount the local folder ./app to /usr/src/app in the container for the todo-app service. This particular bind mount overwrites the static contents of the /usr/src/app directory in the container and creates what is known as a development container. The second instruction, /usr/src/app/node_modules, prevents the bind mount from overwriting the container's node_modules directory to preserve the packages installed in the container. <br>


# Step 3: Run the application
---> cd /path/to/bindmount-apps/
---> docker compose up -d
---> ` http://localhost:3000`

### Project 4

# Containerize your application


When working with containers, you typically need to create a Dockerfile to define your image and a compose.yaml file to define how to run it. <br>

To help you create these files, Docker Desktop has the `docker init` command. Run this command in a terminal within your project folder. `docker init` creates all the required files to containerize your application. <br>

---> `cd /path/to/your/project/`
---> `docker compose up`

The docker init command tries its best to do the heavy lifting for you, but sometimes there's some assembly require.

# Step 4: Update the Docker assets


# Docker Life Cycle

We can use the below Image as a reference to understand the lifecycle of Docker.
There are three important things,
docker build -> builds docker images from Dockerfile
docker run -> runs container from docker images
docker push -> push the container image to public/private regestries to share the docker images.
[15:33] martin sone

![alt text](image-4.png)










To be continue `https://docs.docker.com/guides/walkthroughs/access-local-folder/`
# Third Project.
# Deploying a Java application using docker.


# Understanding the terminology (Inspired from Docker Docs)
# Docker daemon
The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

# Docker client
The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

# Docker Desktop
Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (dockerd), the Docker client (docker), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper. For more information, see Docker Desktop.

# Docker registries
A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.

When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry. Docker objects

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.

# Dockerfile
Dockerfile is a file where you provide the steps to build your Docker Image.

# Images
An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a `Dockerfile` with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.

# More Info
https://github.com/iam-veeramalla/Docker-Zero-to-Hero