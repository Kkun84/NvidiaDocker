#!/bin/bash
docker run \
    -d \
    --init \
    --rm \
    -p 15000:5000 \
    -p 16006:6006 \
    -p 18501-18600:8501-8600 \
    -p 18888:8888 \
    -it \
    --gpus=all \
    --ipc=host \
    --name=2021-12-26-patch_sets_rl \
    --env-file=.env \
    --volume=$PWD:/workspace \
    2021-12-26-patch_sets_rl:latest \
    ${@-fish}
