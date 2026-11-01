lerobot-record \
  --robot.type=so101_follower \
  --robot.port=/dev/ttyACM1 \
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
  --teleop.type=so101_leader \
  --teleop.port=/dev/ttyACM0 \
  --teleop.id=my_leader_arm \
  --dataset.repo_id=YOUR_HF_USERNAME/so101_pick_tape \
  --dataset.single_task="Pick a tape" \
  --dataset.num_episodes=50 \
  --dataset.episode_time_s=30 \
  --dataset.reset_time_s=15 \
  --dataset.fps=30 \
  --dataset.push_to_hub=false \
  --display_data=true