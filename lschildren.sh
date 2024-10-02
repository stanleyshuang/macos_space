#!/bin/bash

# 檢查是否提供目錄路徑
if [ -z "$1" ]; then
  echo "請提供要列出子目錄的目錄路徑。"
  echo "用法：$0 <目錄路徑>"
  exit 1
fi

# 列出指定目錄中的子目錄
for dir in "$1"/*/; do
  if [ -d "$dir" ]; then
    echo "$dir"
  fi
done
