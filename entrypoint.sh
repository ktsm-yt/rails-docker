# Rails s でエラーを引き起こす server.pid を削除するためのシェル

#!/bin/bash
set -e     # set -e は「エラーが発生するとスクリプトを終了する」オプション

rm -f /myapp/tmp/pids/server.pid

exec "$@"    # コンテナーのプロセスを実行する。（Dockerfile 内の CMD に設定されているもの）