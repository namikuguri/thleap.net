+++
date = "2015-05-24T06:13:53+09:00"
description = "CSS でドアを開くようなアニメーション。"
tags = "dev"
title = "OPEN THE DOOR"

[menu]
  [menu.global]
    parent = "blog"

+++

<iframe width="100%" height="300" src="//jsfiddle.net/thleap/66wkzn6a/2/embedded/result%2Ccss/" allowfullscreen="allowfullscreen" frameborder="0"></iframe>

ドアが開く（ような）アニメーションを CSS で作ろうと奮闘。

後ろから前に来てるのか、前から後ろに行ってるのかよくわからない感じに。アニメーション中盤、文字が前から後ろに倒れていく感じが少しだけはっきりしてくる。

これでも[一番初めに作ったもの](http://jsfiddle.net/thleap/66wkzn6a/)よりは大分マシで、少し "らしく" なったのは `translateX(-.5em)` で変形させる文字を左に寄せて、`perspective(120px)` で手前から奥行きを出しているから。

ただ、この奥行きというやつが僕はあまりわかってなくて、雰囲気で数値を指定してるのがこのように微妙な結果を生んだ原因かと思う。

---

作りたかったものに合わせて後から適当にタイトルつけたけど、ドアを閉じてるようにも見えるし、そもそもドアに見えないし、変な感じ。
