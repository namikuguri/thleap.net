+++
date = "2015-05-18T00:34:17+09:00"
description = "特定のコンテンツだけが持つデータを使って要素の出し分けをする。"
tags = "dev"
title = "Params の有無による条件分岐"

[menu]
  [menu.global]
    parent = "blog"

+++

本題の前に、[一つ前](/blog/girl-with-book/)の最後で言ってたやつ、文章と画像を左右に並べるための CSS を直すのはやめた。これを直す上手い方法が思いつかないってのと、縦長の画像を載せることがそんなに頻繁じゃ無いだろうと思ったから。

とりあえずこの横並べクラスを使うときは、これらの下に水平線（ `hr` ）を引くか画像の長さ以上の文章を書くかしよう。縦長画像を載せまくるようであればまた考えるけど、そうでなければ放置。問題は認識した。

---

そして、ここからが本題（短いけど）。これとは別のところでさっき直したところがある。

それが[この部分](https://github.com/thleap/thleap.net/commit/25861d5fa4c30a4842298f6ec35ef5a03a8e14e8)で、不必要なところで `.l-partition-sub` を生成してしまっていたからそれをしないようにした。

```
{{ if .Params.work_url }}
  <div class="l-partition-sub">
    <p class="work-description">{{ .Params.work_description }}</p>
    <dl class="work-url">
      <dt>URL</dt>
      <dd>
        <a href="{{ .Params.work_url }}">{{ .Params.work_url }}</a>
      </dd>
    </dl>
  </div>
{{ else if .Params.work_description }}
  <div class="l-partition-sub">
    <p class="work-description">{{ .Params.work_description }}</p>
  </div>
{{ end }}
```

作品コンテンツだけが持ってるデータ（ `.Params.work_description`, `.Params.work_url` ）の有無で他のページとの出し訳をして、作品詳細ページだけで `.l-patition-sub` を出すようにした。

賢くできた感じはしないが、余計なものは削除できたので、うん、まぁ良いんじゃない。
