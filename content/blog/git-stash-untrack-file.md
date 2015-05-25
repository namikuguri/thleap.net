+++
date = "2015-05-25T17:21:48+09:00"
description = "git stash -u で未追跡ファイルも退避させる。"
tags = "dev"
title = "未追跡ファイルの stash"

[menu]
  [menu.global]
    parent = "blog"

+++

- [How do you stash an untracked file?](http://stackoverflow.com/questions/835501/how-do-you-stash-an-untracked-file)
- [gitで未追跡（untracked)なファイルもまとめて退避(stash)する | Qiita](http://qiita.com/muran001/items/f5746c518bf663f86a79)

Git で追跡されてない新規のファイルもまとめて `stash` したいときには `-u` オプションが便利。`-u` は `--include-untracked` の省略形。

これまでは `stash` する際に新規ファイルがかなり邪魔で、他のブランチに移動したいときは一旦新規ファイルをリポジトリから除外しておいたり、すべてのファイルをステージング・エリアにあげてから `git stash` してた。元のブランチに戻ってきたらどけてた新規ファイルをリポジトリに戻して `git stash pop` ... 。

`git stash -u` はとても賢い。
