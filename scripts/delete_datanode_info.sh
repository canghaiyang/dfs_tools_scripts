#!/bin/bash

# 定义要删除的目录路径
dfs_directory="/home/ych/hadoopData/dfs"

# 循环遍历主机列表，执行命令
for i in {101..105}; do
    host="192.168.7.$i"
    ssh root@"$host" "rm -r $dfs_directory"
done

