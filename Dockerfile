FROM rapidsai/rapidsai-core:cuda11.8-runtime-ubuntu20.04-py3.9
COPY * /ai/
WORKDIR /ai/

RUN source activate rapids && conda install -c conda-forge ome-types pyvips tifffile
