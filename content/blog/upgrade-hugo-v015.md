+++
date = "2015-12-03T04:26:34+09:00"
description = "HUGO のバージョンを 0.15 にした。"
tags = "dev"
title = "Upgrade HUGO v0.15"

[menu]
  [menu.global]
    parent = "blog"

+++

v0.15 にした。`brew upgrade hugo` を実行しても v0.14 までしかインストールされなかったので一瞬悩んだ。少し調べた結果、`brew update` を忘れていた（ https://github.com/spf13/hugo/issues/1633 ）。

アップデートの内容は、他の静的サイトジェネレーターからのインポートが簡単にできるようになったとか、さらに早くなったとか、いろいろトピックスはあるみたいだけど、個人的にはバグフィックスで `page.HasMenuCurrent()` と `node.HasMenuCurrent()` が修正されたのが嬉しかったりする。期待していた修正かどうかはこれからチェックしてみないとわからないけど。

あと、`.Url` じゃなくて `.URL` 使えみたいなことを v0.13 のときから言われてたんだけど、それを今まで無視して v0.15 にアップデートしたらこれでもかというくらい怒られた。エラーが大量に出た。

こんな感じで:

```
ERROR: 2015/12/03 template: partials/meta.html:3:9: executing "partials/meta.html" at <.Url>: Url is not a field of struct type *hugolib.Node in partials/meta.html
...
```

`git gsub \.Url \.URL` で置換を行ったらエラーは消えた。
