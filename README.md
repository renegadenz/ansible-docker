# Docker Build

Quick and dirty deployment of ansible in a container.

```
docker build -t my-ansible-image .

```

This command will build an image named my-ansible-image using the Dockerfile in the current directory.

Run the container: Once the image is built, you can use the docker run command to start a container from the image. The command should look like this:

```
docker run -it my-ansible-image
```

This command starts a container from the my-ansible-image image, and runs the command specified in the CMD instruction in the Dockerfile.

You can also mount your ansible files and cloud formation templates in the container to make it able to access them.

```
docker run -it -v /path/to/ansible/directory:/ansible -v /path/to/cloudformation/templates:/templates  my-ansible-image
```

You should replace the "/path/to/ansible/directory" and "/path