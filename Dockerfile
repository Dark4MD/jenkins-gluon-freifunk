FROM jenkins/jenkins:latest
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y --no-install-recommends git ca-certificates subversion build-essential lua-check shellcheck python gawk unzip libncurses5-dev zlib1g-dev libelf-dev libssl-dev wget time file ecdsautils rsync python3 qemu-utils gcc-multilib flex gettext python3-distutils 
# drop back to the regular jenkins user - good practice 
USER jenkins
