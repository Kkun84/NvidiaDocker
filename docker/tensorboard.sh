#!/bin/bash
docker exec -itd 2021-12-26-patch_sets_rl tensorboard --logdir=. --host=0.0.0.0 --port=${@-6006}
