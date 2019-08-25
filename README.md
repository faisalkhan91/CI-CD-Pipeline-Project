# CI-CD-Pipeline-Project
This is a project to create a Jenkins CI-CD pipeline using docker and maven. This is a pipeline built from scratch.

##
Scripts:
- mvn.sh : This script is used to build the jar file. The jar file is put in the /app/target folder in the java-app
- build.sh : This script creates a docker image using the jar file that was generated.
