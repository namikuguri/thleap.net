+++
date = "2015-12-09T23:50:35+09:00"
description = "テーブルに列があるのは知っていたが、それで何ができるのかは知らなかった。"
tags = "dev"
title = "テーブルにおける列のあつかい"

[menu]
  [menu.global]
    parent = "blog"

+++

今日は「[HTML5 Advent Calendar 2015](http://qiita.com/advent-calendar/2015/html5)」9日目。明日は @tanikawa さん。

---

今回は CSS のお話。

もう一ヶ月も前になるが、[W3C CSS Module 仕様書もくもく会@東京](http://tokyo-css-module-specs.connpass.com/)という勉強会に参加した。そのときに、[CSS 2.2 テーブルの章](http://momdo.github.io/css2/tables.html)を読んで（聴いて？）テーブルの列の存在を知ったので、そのあたりを少し振り返ろうと思う。

まず、僕は CSS で `display: table-column` を使ったこともなければ、HTML で `colgroup` や `col` 要素を使ったこともなかった。たまたま機会が無かっただけだが、その[指定の方法](http://www.w3schools.com/tags/tag_col.asp)は使い方を知ったいまでも少し不思議な感じがしている。

そんな感じで日本語に訳された仕様書に目を通したわけだが、基本的にテーブルの各セルは行の子孫としてあつかわれるようんだ。じゃあ列はどういうあつかいになるかというと、次のプロパティは列によって操作することが出来る。

- `border` 
- `background`
- `width`
- `visibility`

`background` に関しては次のように書いてある。

> 背景プロパティーは列内のセルの背景を設定するが、セルと行の両方が透明な背景を持つ場合に限る。

これがどういうことかというと... 、こんな感じ。

- 列のみに背景色を指定（tan, lime）: http://jsfiddle.net/thleap/p5af5Ls5/18/
- 行と列に背景色を指定（yellow）: http://jsfiddle.net/thleap/p5af5Ls5/17/

`width` プロパティでは列の最小幅を決めることができるが、これは普段の制作でもよく使われる気がする。

あ、と、これ以上書くことが無くて困ってしまったので、このあたりで。（テーブルの列、いつ使うんだろう）

## おまけ
`caption-side` プロパティも知らなかった。ただ、知っていても HTML を編集すれば良いんじゃないかという感じで、やっぱりどこで使えば良いか思いつかない。

- 指定なし: http://jsfiddle.net/thleap/nwnya6r7/4/
- `caption-side: bottom`: http://jsfiddle.net/thleap/nwnya6r7/3/

列やキャプションの配置以外にも、テーブル関連の仕様は知らないことが多かったけど、それを知ったところで次にどうつなげて良いのかわからずにいる。
