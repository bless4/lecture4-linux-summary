
## Intro To Docker
# git clone https://github.com/docker/welcome-to-docker
# Check that the 'Dockerfile' do exist

## Tip

To run Docker commands, you must use a terminal. Based on your operating system, you can open a terminal by doing the following:

For Windows, select the Start Menu, specify cmd, and then select Command Prompt.

For Mac, and Linux use the Terminal 

# cd /path/to/welcome-to-docker/

# docker run -d -p 8088:80 --name welcome-to-docker docker/welcome-to-docker


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