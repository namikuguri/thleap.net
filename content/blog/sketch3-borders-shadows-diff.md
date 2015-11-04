+++
date = "2015-11-05T01:59:16+09:00"
description = "何重にも枠線をつけたとき、Sketch3 の Borders と Shadows では異なる点が出てくる。"
tags = "design"
title = "Sketch3 の線と影"

[menu]
  [menu.global]
    parent = "blog"

+++

<figure>
  <img src="/images/blog/sketch3-borders-shadows-diff/image.png" alt="">
  <figcaption>左が Borders、右が Shadows を使用した例</figcaption>
</figure>

上の図のように、図形やテキストから波紋状のスタイルを作る際、Sketch3 では Borders（線）と Shadows（影）、どちらの機能を使うかで結果に大きな違いが生じることを発見した。Shadows を使うとあきらかに線が崩れる。

種類や程度は違えど、これらによる違いは Fireworks など他のツールでも見られるが、Sketch3 は Shadows の機能が使い物にならないレベルでひどい。しかも、影をいくつも適用させた場合、アプリケーション上での処理が非常にもたつく。

波紋状のスタイルを Sketch3 で付けたい場合は、Borders の機能を使うのが賢明だろう。

---

この記事の最後の締めとしては、こういったときは影を使うのをやめて線を使おうみたいな話になるのだが、もう少し時間と知識があれば別の締め方もあったかもしれない。

たとえば、同じツールの話でも今日人に教えてもらって読んだ[ぼかし画像とそれに載せるテキストの話](http://design-lab.tuqulore.com/textonblurimage/)は良かった。原理を解説した上で、問題点や使用上の条件が執筆者なりの考えで書かれていた。

問題の報告は価値ある行為だと思うけど、できればそれで終わらせたくない気持ちがある。

---

この 2日間は完全にショートしてて、このブログ以外の活動もろくにできてなかった。

経験的には 3日空けるとマズさを感じてくるので、今日こうやって記事を投稿できてよかった。
