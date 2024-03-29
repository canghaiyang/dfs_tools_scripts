#!/bin/bash

# 检查参数是否正确
if [ $# -ne 3 ]; then
    echo "Usage: $0 <start_node> <end_node> <dfs_directory>"
    exit 1
fi

# 获取参数
start_node="$1"
end_node="$2"
dfs_directory="$3"

# 循环遍历主机列表，执行命令
for ((i=start_node; i<=end_node; i++)); do
    host="192.168.7.$i"
    ssh root@"$host" "rm -r $dfs_directory"
done

echo "Directories deleted on all nodes successfully"
