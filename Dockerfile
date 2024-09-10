FROM  nvcr.io/nvidia/rapidsai/notebooks:24.08-cuda12.5-py3.10

USER root
RUN apt-get -y update
RUN apt-get -y install git openjdk-17-jdk build-essential
USER rapids

ENV JAVA_HOME /usr/lib/jvm/java-1.17.0-openjdk-amd64/

RUN pip install ome-types pyvips tifffile python-bioformats
RUN pip install git+https://github.com/vdsukhov/image_processing_py.git

