+++
date = "2016-07-04T04:01:36+09:00"
description = "このサイトのリニューアルデザインについて、昨日に続いてブログと作品ページを考えた。"
tags = "design"
title = "thleap.net v2.1 のアイデア 2日目"

[menu]
  [menu.global]
    parent = "blog"

+++

全体的に「キモいレイアウト」を狙ってる。表現がよくないかもしれないけど、他の Web サイトでは見ないようなレイアウト、という意味だ。これをこのサイトの個性にしたい。

また、デザインのムードとして、このサイトではクラシックな雰囲気と大胆さをを狙いにいってる。

## ブログページ

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/blog.png" alt="">
  <figcaption>ブログ一覧ページ</figcaption>
</figure>

一覧ページには、カテゴリーとシリーズで絞り込むナビゲーションをつけた。「カテゴリーが Design、シリーズが hogehoge」みたいな感じで、2つの条件が重なった場合のことを考えるとすこし面倒そうだが。

ブログ一覧ページには、そのカテゴリーのすべての記事を載せる予定だ。（ページネーションを用意しない）

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/blog-article.png" alt="">
  <figcaption>ブログ記事ページ</figcaption>
</figure>

詳細ページは中央揃えで配置するようにした。左右どちらかに配置するのと比べて、画像の配置とか、いろいろ自由度が高そうだから。


## 作品ページ

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/sketch.png" alt="">
  <figcaption>作品一覧ページ</figcaption>
</figure>

作品を単調に並べて落ち着いた雰囲気にしたくなかったのでこのような形に。また、作品によって最適な向きやサイズも異なるので、できるだけ自由度の高いレイアウトにしようと考えている。

作品の絞り込みには製作時期を使うことにした。単純だけど、作品ページは成長の記録として残したかったので、これに一番合う絞り込みをつけた。

年代別のページには、その年のすべての作品を載せる予定だ。（ページネーションを用意しない）

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/sketch-article.png" alt="">
  <figcaption>作品記事ページ</figcaption>
</figure>

一枚絵などに使うレイアウト。

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/sketch-article-pj--x-rect.png" alt="">
  <figcaption>作品記事ページ、プロジェクトなどで関連した画像が複数ある場合、かつ横長の画像が多い場合</figcaption>
</figure>

<figure>
  <img src="/images/blog/thleap-net-v2-1-idea02/sketch-article-pj--y-rect.png" alt="">
  <figcaption>作品記事ページ、プロジェクトなどで関連した画像が複数ある場合、かつ縦長の画像が多い場合</figcaption>
</figure>

プロジェクトなどになると、作品を複数載せるページも出てくる。そういった場合に、単調に画像を建てに並べていくだけではおもしろさがなく、作品ページを訪れた人は最後まで見る気になれないかもしれない。

複雑なレイアウトになるので Markdown 記法だけでなく HTML を使うことになるだろう。プロジェクトの作品ページはいくつかパターンをつくって、がんばってレイアウトを組む予定。
