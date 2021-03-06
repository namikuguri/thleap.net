+++
date = "2015-06-17T16:10:36+09:00"
description = "いろいろ見てたら作りたくなった。"
tags = "design"
title = "Type DISCO"

[menu]
  [menu.global]
    parent = "blog"

+++

![幅の異なる線を数本組み合わせて作られた「DISCO」という太い文字。グラデーションとロングシャドウで少し文字が浮き立つように置かれている](/images/blog/type-disco/image.png)

本日は[こういうの](https://dribbble.com/shots/2063405-Ampersand)と[こういうの](https://dribbble.com/shots/2104243-Com-poot-er)を Dribbble で拝見いたしまして、気持ちが高ぶってきたところでこちらのものを作りました。

文字の部分は [Dazzle](http://www.fonts.com/font/device-fonts/dazzle/regular/web-font) や [Monoton](http://www.fontsquirrel.com/fonts/monoton) というフォントを見ながら作りましたが、中央に置かれる「S」にはただの文字以上の印象を持たせたかったので、[ターンテーブル](https://goo.gl/FM3W87)のような雰囲気が出るように少し特殊な形にしています。

文字に付いている影は[こちらのブログ](http://brilliantsketch.com/make-long-shadow-effect-sketch/)で紹介されてるのと同じような感じで Motion Blur を使っておりますが、矩形を 45度傾けたて Blur の角度を -45度傾けた後は、マスクを用意するのが面倒だったのでグラデーションの開始位置を文字の中央に移動させて透明度 0 から色付けを開始するようにしています。

![Sketch上でグラデーションの開始位置を変更した後、alpha値0の白色からalpha値50の黒色でグラデーションをかける様子](/images/blog/type-disco/shot-setting-shadow-style.png)

これはそこそこ使えそうだと思っています。しかし、「D」の左下を見てもらうと分かりますが影が少し手前に飛び出てしまうので、これには注意しましょう。

![影が文字の右下だけでなく別の方向にも出てしまっている様子](/images/blog/type-disco/shot-type-d.png)

それでは、バイビー。
