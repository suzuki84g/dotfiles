#!/bin/bash

# Cask一覧を取得してJSON配列に変換
casks=$(brew list --cask)
echo -n '[' 
first=true
for cask in $casks; do
  if [ $first = true ]; then
    first=false
  else  
    echo -n ','
  fi
  echo -n '"'"$cask"'"' 
done
echo -n ']' > casks.json

# JSON配列からCask一覧を取得
cask_list=($(jq -r '.[]' casks.json))

# 各Caskのバージョン比較
for cask in "${cask_list[@]}"; do

  cask_name="$cask"

  latest=$(brew info --json=v1 "$cask_name" | jq -r '.[0].versions.stable')

  current=$(brew info --cask "$cask_name" | grep -E 'version:|バージョン:' | awk '{print $2}')

  if [ "$latest" != "$current" ]; then
    echo "$cask_name : $current -> $latest"
  fi

done