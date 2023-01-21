FROM we2app/base

RUN apt-get update && \
    apt-get -y install openjdk-11-jdk-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    java -version
