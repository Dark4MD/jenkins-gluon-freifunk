FROM jenkins/jenkins:latest
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y git subversion build-essential python gawk unzip libncurses5-dev zlib1g-dev libssl-dev wget time file ecdsautils rsync python3 qemu-utils 
# drop back to the regular jenkins user - good practice 
USER jenkins
