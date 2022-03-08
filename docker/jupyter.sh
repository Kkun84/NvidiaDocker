#!/bin/bash
docker exec -itd 2021-12-26-patch_sets_rl jupyter-lab --no-browser --port=${@-8888} --ip=0.0.0.0 --allow-root --NotebookApp.token=''
