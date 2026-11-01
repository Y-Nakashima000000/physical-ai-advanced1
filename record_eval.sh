lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM0 \
  --robot.id=my_follower_arm \
  --robot.cameras='{
    "arm": {
      "type": "opencv",
      "index_or_path": "/dev/arm_camera",
      "width": 640,
      "height": 480,
      "fps": 30,
      "fourcc": "MJPG",
      "warmup_s": 5
    },
    "upper": {
      "type": "opencv",
      "index_or_path": "/dev/upper_camera",
      "width": 640,
      "height": 480,
      "fps": 30,
      "fourcc": "MJPG",
      "warmup_s": 5
    }
  }' \
  --dataset.repo_id=Broadbean/eval_so101_pick_tape_test12 \
  --dataset.single_task="Pick a tape" \
  --dataset.num_episodes=10 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=15 \
  --dataset.fps=30 \
  --dataset.push_to_hub=false \
  --policy.type=act \
  --policy.pretrained_path="${MODEL_PATH:?Set MODEL_PATH}" \
  --policy.n_action_steps=100\
  --policy.device=cuda \
  --display_data=false
