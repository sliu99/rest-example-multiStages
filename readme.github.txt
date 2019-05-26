
//Push to GitHub, good, used
https://www.codecademy.com/articles/push-to-github
1. In your project, initialize a Git repository:
 $ git init

2. Check the status of which files and folders are new or have been edited:
 $ git status

3. Tell Git to start tracking your files and folders:
 $ git add .

4. Verify that everything was committed correctly:
 $ git status

5. Commit the files that you've staged in your local repository.
   $ git config --global user.email sliu99@yahoo.com
   $ git config --global user.name sliu99
   
6. Save the changes you made, with a message describing what changed:
 $ git commit -m "Initial commit"

7. On GitHub, create a new repository with a short, memorable name: rest-example-multiStages
   https://github.com/
   
8. After creating a repository, copy the git commands under the “…or push an existing repository from the command line”, and paste them into the terminal. These commands will add a remote repository, and then push your local repository to the remote repository.
 $ git remote add origin https://github.com/sliu99/rest-example-multiStages.git
 $ git push -u origin master
