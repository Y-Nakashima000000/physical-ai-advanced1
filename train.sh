lerobot-train \
  --dataset.repo_id=YOUR_HF_USERNAME/so101_pick_tape \
  --policy.type=act \
  --policy.device=cuda \
  --steps=20000 \
  --output_dir=outputs/train/act_so101_pick_tape \
  --job_name=act_so101_pick_tape \
  --wandb.enable=false