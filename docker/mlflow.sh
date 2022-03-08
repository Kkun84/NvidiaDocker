#!/bin/bash
docker exec -itd 2021-12-26-patch_sets_rl mlflow server --default-artifact-root=gs://YOUR_GCS_BUCKET/path/to/mlruns --host=0.0.0.0 --port=${@-5000}
