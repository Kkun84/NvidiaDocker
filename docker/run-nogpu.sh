#!/bin/bash
docker run \
    -d \
    --init \
    --rm \
    -p 55000:15000 \
    -p 56006:16006 \
    -p 58501:18501 \
    -p 58502:18502 \
    -p 58503:18503 \
    -p 58504:18504 \
    -p 58888:18888 \
    -it \
    --ipc=host \
    --name=2021-12-26-patch_sets_rl \
    --env-file=.env \
    --volume=$PWD:/workspace \
    2021-12-26-patch_sets_rl:latest \
    ${@-fish}
