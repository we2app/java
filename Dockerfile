FROM we2app/base

RUN apt-get update && \
    apt-get -y install openjdk-17-jdk-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    java -version && \
    export JAVA_HOME=$(dirname $(dirname $(update-alternatives --list java)))
