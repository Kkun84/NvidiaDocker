# NvidiaDocker

Python3.9とGPUが利用できるDockerイメージ。
コンテナ内のユーザー名は`hoge`、パスワードは`fuga`。
PythonやCUDAのバージョンなどの変更はDockerfileを弄れば可能。

Dockerに関するシェルスクリプトを`docker/`フォルダにまとめた。
拡張子が`.sh`のファイルを実行すれば簡単にDockerを利用できる。

| ファイル | 説明 | 引数（デフォルト値） |
| --- | --- | --- |
| `./docker/build.sh` | DockerfileからDockerイメージを作る。 |
| `./docker/run.sh` | コンテナを起動する。このシェルスクリプトを実行したディレクトリがコンテナ内の`/workspace/`に**マウントされ、ファイルが同期されます**。また、5000,6006,8888などのポートをホストに割り当てる。環境変数は`.env`ファイルから読み込む。 | コンテナで常時実行するコマンド (fish) |
| `./docker/attach.sh`| `run`で実行したコマンドに復帰する。このコマンドを終了させるとコンテナは停止する。 |
| `./docker/exec.sh` | コンテナ内で新しいコマンドを実行する。 | 実行するコマンド (fish) |
| `./docker/stop.sh` | コンテナを停止させる。 | 実行するコマンド (fish) |
| `./docker/tensorboard.sh` | コンテナ内でtensorboardを実行する。 | サーバーのポート (6006) |
| `./docker/mlflow.sh` | コンテナ内でmlflowを実行する。 | サーバーのポート (5000) |
| `./docker/jupyter.sh` | コンテナ内でjupyter-labを実行する。同一LAN内からなら誰でもアクセスできるため**非常にセキュアでない**、実行には注意すること。 | サーバーのポート (8888) |

`.env`の作成には`.env.default`を参考にすること。
