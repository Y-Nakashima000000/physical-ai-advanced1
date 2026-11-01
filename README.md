# ACTを用いたSO-101によるテープ把持・搬送タスク

## 概要
SO-101ロボットアームと模倣学習手法ACT（Action Chunking with Transformers）を用い、ランダムな初期位置に配置したテープを把持して中央の皿へ搬送するタスクに取り組んだ。

作業スペースには無地の板を設置した。皿は中央に固定し、テープは皿の右側の範囲内でランダムに配置した。2台のUSBカメラで作業環境を観測した。

## 実行環境
- ロボット：SO-101 Leader / Follower
- カメラ：InnoMaker UVCカメラ2台（`arm`、`upper`）、640×480、30 fps、MJPG
- データ収集・実機推論：Ubuntu
- 学習：Windows + WSL2（GPU使用）
- フレームワーク：LeRobot / PyTorch
- 学習モデル：ACT
- データ・モデル管理：Hugging Face Hub

