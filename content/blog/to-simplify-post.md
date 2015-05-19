+++
date = "2015-05-19T22:31:38+09:00"
description = "make コマンドを使って HUGO での新規記事作成をちょっとだけ手軽にします。"
tags = "dev"
title = "make を使って HUGO の記事作成を楽にする"

[menu]
  [menu.global]
    parent = "blog"

+++

記事を作成する度に `hugo new blog/title.md` を打って `vi content/blog/title.md` って打つのが怠い。もう少し楽に記事を作成したい。

せっかく `Makefile` も用意してることだし、`make blog title` とかで記事を作成できたら良いなと思った。そこで、今回は `Makefile` に必要なコマンドを羅列して、`make` を叩く時に変数に値を代入するようにした。

Makefile:

```make
# post to blog section
blog:
  hugo new blog/$(var).md
  vim content/blog/$(var).md
# post to wok section
work:
  hugo new work/$(var).md
  vim content/work/$(var).md
```

実行:

```
$ make blog var=title
hugo new blog/title.md
/Users/thleap/projects/thleap/thleap.net/content/blog/title.md created
vim content/blog/title.md
```

理想が `make blog title` だったので `make blog var=title` はちょっと長いけど、今日はここまで！

---

ちなみに `Makefile` 内でエディタを開くコマンドを `vi content/blog/$(var).md` にしてたら次のエラーが出てた。`vi` と `vim` の違いなんだけど、この違いでなぜエラーがでるのかわかってない。ここで差が出る `vi` と `vim` の違いってなんだ... 。

```
$ make blog var=title
hugo new blog/title.md
/Users/thleap/projects/thleap/thleap.net/content/blog/title.md created
vi content/blog/title.md
make: *** [blog] Error 1
```
