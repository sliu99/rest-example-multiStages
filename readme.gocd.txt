
5/26/2019


//Adding an existing project to GitHub using the command line
https://help.github.com/en/articles/adding-an-existing-project-to-github-using-the-command-line
1. Create a new repository.
https://github.com/login
Click + on top right, 
repository name: rest-example-multiStages

click "Create repository" button.

2. Open Terminal.
3. Change the current working directory to your local project.
   cd ~/book_code/docker_and_kubernetes_for_java_developers_2017/Docker-and-Kubernetes-for-Java-Developers-master/rest-example-multiStages
4. Initialize the local directory as a Git repository.
   $ git init

5. Add the files in your new local repository. This stages them for the first commit.
   $ git add .
   # Adds the files in the local repository and stages them for commit. To

6. Commit the files that you've staged in your local repository.
   $ git config --global user.email sliu99@yahoo.com
   $ git config --global user.name sliu99

   $ git commit -m "First commit"
   # Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again. 

7. At the top of your GitHub repository's Quick Setup page, click copy icon to copy the remote repository URL. 
   Right click "sliu99/rest-example-multiStages" and copy the link (https://github.com/sliu99/rest-example-multiStages)

8. In Terminal, add the URL for the remote repository where your local repository will be pushed.
   $ git remote add origin https://github.com/sliu99/rest-example-multiStages.git
   // Sets the new remote
   $ git remote -v
   // Verfies the new remote URL

9. Push the changes in your local repository to GitHub.
   $ git push -u origin master

==========================================================

5/26/2019

//create pipeline
//run gocd dashboard
http://localhost:8153/go/admin/pipeline
Step1 Basic Settings:
Pipeline Name: rest-example-multiStages
Pipeline Group Name: dev            

Step2 Materials:
Material Type: Git
URL: https://github.com/sliu99/rest-example-multiStages.git

Step3 stage/Job:
Stage Name: BuildDockerImage

Job Name: buildDockerImage
Task Type: More
Command: /bin/sh
Target: compile
Arguments: build_docker_image.sh



target (with jar files) is created at /var/lib/go-agent/pipelines/rest-example-multiStages

======================================================

When running build_docker_image.sh, get error:
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock


search for "Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock"

//Solving Docker permission denied while trying to connect to the Docker daemon socket
https://techoverflow.net/2017/03/01/solving-docker-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket/
sudo usermod -a -G docker sliu
sudo usermod -a -G docker go
bounce vm




When running run_docker_container.sh in gocd, get error:
the input device is not a TTY

//Error “The input device is not a TTY”
https://stackoverflow.com/questions/43099116/error-the-input-device-is-not-a-tty
Remove the -it from your cli to make it non interactive and remove the TTY.


















