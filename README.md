# CI-CD-Pipeline-Project
This is a project to create a Jenkins CI-CD pipeline using docker and maven. This is a pipeline built from scratch.

##
Scripts:
- mvn.sh : This script is used to build the jar file. The jar file is put in the /app/target folder in the java-app
- build.sh : This script creates a docker image using the jar file that was generated.

###
In this project I created a pipeline that builds, tests, pushes and deploys code at commit. Here I used Jenkinsfile to create the pipeline and used custom hooks to trigger the build job at code commit. Basically, the code can be updated and pushed to a version control server (here it's GitLab) and this will trigger the job.

BUILD:
The build job builds the maven job, here it was a simple java app to display the hello world.

TEST:
The test job tested the built code with pre supplied test cases and send it to push job if it's a success.

PUSH:
The push job pushes the code to docker hub using docker images wirh a BUILD_TAG environment variable.

DEPLOY:
This job deploys the docker image on the deployement or production server.

The job can be tested using "docker ps" command.
