#!/bin/bash
set -e

DATASET_NAME="${1:-eval_so101_pick_tape_test12}"

python - "$DATASET_NAME" <<'PY'
import sys
from lerobot.datasets.lerobot_dataset import LeRobotDataset

name = sys.argv[1]
repo_id = f"Broadbean/{name}"

dataset = LeRobotDataset(repo_id)
dataset.push_to_hub()

print(f"アップロード完了: https://huggingface.co/datasets/{repo_id}")
PY
