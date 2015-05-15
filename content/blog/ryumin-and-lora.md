+++
date = "2015-05-15T17:48:50+09:00"
description = "サイトの見出しと本文で使うフォントを変更しました。"
tags = "design"
title = "リュウミン R-KL と Lora"

[menu]
  [menu.global]
    parent = "blog"

+++

このサイトの本文や見出しで使うフォントを和文は「[リュウミン](https://www.morisawa.co.jp/font/fontlist/details/fontfamily001.html) R-KL 」に、欧文を「 [Lora](http://www.fontsquirrel.com/fonts/lora) 」に変えた。和文フォントには [TypeSquare](https://typesquare.com) の[無料プラン](https://typesquare.com/service/plan)を利用してる。

```css
/* Before */
font-family: "ヒラギノ明朝 ProN" , "HiraMinProN", "游明朝体", "Yu Mincho", serif;

/* After */
font-family: "Lora", "リュウミン R-KL", "Ryumin Regular KL", "ヒラギノ明朝 ProN" , "Hiragino Mincho ProN", "游明朝体", "Yu Mincho", serif;
```

## Lora
今回フォントを選ぶときは欧文フォントだけを眺めながら長く考えるということはしてなくて、いくつか候補を絞った後はサイトで使ってるフォントと組み合わせたときのバランスを確認するのに時間を長く使った。

何と比較したかというと、やはり一番は見出しや本文で使ってる日本語の明朝体なんだけど、他にもナビゲーション等に使ってるセリフ体やロゴとの比較もした。比較する際に考慮した点は字幅・ウエイト・高さといったところだろうか。

他にも以下のような候補があったけど、クセの強い「 W 」や「 Q 」をここで使うのが嫌だったり、オールドスタイル数字を日本語が基本の文章に混ぜたくなかったので採用しなかった。

- [Droid Serif](http://www.fontsquirrel.com/fonts/droid-serif)
- [Ashbury](http://www.fontsquirrel.com/fonts/ashbury)
- [New Athena Unicode](http://www.fontsquirrel.com/fonts/New-Athena-Unicode)
- [Habibi](http://www.fontsquirrel.com/fonts/habibi)

このフォントに決めた理由の 8割が「名前が気に入ったから」という説もある。

## リュウミン R-KL
元々サイトのデザインに入る前からモリサワの「[明石](https://www.morisawa.co.jp/font/fontlist/details/fontfamily021.html)」を使いたいと考えていた。そのために欧文フォントのサンセリフ体は細いウエイトが用意されている [Roboto](http://www.fontsquirrel.com/fonts/roboto) を採用したし、見出しや本文内の強調箇所でもボールド体を使用しないようにした。

しかし、デザインを Web サイトに表示した後に [TypeSquare Web Font Tryout](https://typesquare.com/tryout/) で明石フォントを適用してみると、細すぎて文章で表示した時に読みにくく感じたのでやめた。あと、ウエイトの細いセリフ体で自分が気に入るような欧文フォントが見つけられなかったのも大きな理由。

明石を使うのをやめることにした後は、先に欧文フォントを Lora にすることを決め、これに合うように TypeSquare 内のフォントや他のサイトをチラチラ見て探した。そうやって最終的にはあまりクセが強くなくて細いウエイトが用意されていたリュウミンを採用した。

TypeSquare は**無料プランだと月 1万 PV を超えると翌月までフォントが配信されない**のが不安といえば不安。配信が停止されるとリュウミンの後に指定してる明朝体か、Android だと見出しと本文は和文がゴシック体の欧文がセリフ体（ Lora ）で表示される。

ただ、サイトのコンテンツが読めないレベルでひどくなることは無いし、向こう 1年くらいはそんなアクセスないだろうと高を括って、実現させたかったデザインを優先させた。

## 他
ヒラギノ明朝体や游明朝体を使ったデザイン且つそれに合わせて欧文フォントをセリフ体の Web フォントで置き換えてる場合、今は Android での表示に困ることも多いと思う。その時は [terkel.jp みたいなアプローチ](http://terkel.jp/)が良いと思った。

今回僕が取った和文フォントを Web フォントに置き換えるという方法は、ページの読み込み速度等のデメリットも多くて正直無理矢理感が強い。あまりオススメは出来ない。

まぁでも、Android では他のサイトで明朝体が使われてない分、このサイトが特別な感じがして良い気分になれたのは良かった。
