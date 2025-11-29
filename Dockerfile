FROM rapidsai/notebooks:25.10-cuda13-py3.13

USER root
RUN apt-get -y update
RUN apt-get -y install git openjdk-17-jdk build-essential
USER rapids

RUN pip install rapids-singlecell
