+++
date = "2015-06-23T18:59:21+09:00"
description = "左右の線に挟まれた形でテキストを配置したいときの CSS。特にその背景が画像等の場合。"
tags = "dev"
title = "線を分割するテキストの配置"

[menu]
  [menu.global]
    parent = "blog"

+++

<iframe width="100%" height="300" src="//jsfiddle.net/thleap/7u5ksp8x/2/embedded/result%2Ccss/" allowfullscreen="allowfullscreen" frameborder="0"></iframe>

文字が箱を持っているか、背景がベタで塗られているなら簡単で、これらの場合は文字部分の箱を線に被せるようにすれば問題ない。

問題になるのは背景が画像やグラデーションの時などで、上から要素を被せて線を隠すことができないとき。そういった時に上記のような CSS が役立つだろうと思ってる。

ただ、文字と線の余白を `transform: translateX` で空けてるのはなんとも言えない、というかダメだろうけど、他にはグラデーションで `linear-gradient(left, transparent .5em, black .5em)` とする方法しか思いつかなくて、それなら前者でやったほうがまだマシだろうということでこうしてる。
