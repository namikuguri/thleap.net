+++
date = "2015-10-22T01:54:57+09:00"
description = "「第二回 W3C CSS Module 仕様書もくもく会@東京」に参加したので感想とメモを残そう。"
tags = "dev"
title = "仕様書を読む 1.5時間"

[menu]
  [menu.global]
    parent = "blog"

+++

みんなで仕様書読もうの会に参加してきた。

- [第二回 W3C CSS Module 仕様書もくもく会@東京](http://tokyo-css-module-specs.connpass.com/event/21413/)

僕は約 1時間半で [CSS Color Module Level 3（日本語訳）](http://standards.mitsue.co.jp/resources/w3c/TR/css3-color/)をちょうど読みきった。Web ドキュメント 1ページ読むには時間がかかりすぎたかもしれないけど、最後には達成感があって良かった。この勉強会は次回があるようなので是非参加したい。

今日読んだ仕様書に関して言えば、CSS の話だけど色に関することなのでその方面の知識も当然必要で、特にモニター上での色の表現というのを勉強しておく必要がありそうだ。色彩検定の本を一度読み直すか、[誰かが紹介](https://twitter.com/momdo_/status/656820498035159040)していた「[徹底図解 色のしくみ―初期の光学理論から色彩心理学・民族の色彩まで](http://goo.gl/3aST8d)」に新しく目を通してみても良いかもしれない。

あと、あまり仕様書とは関係ないところで思いついたんだけど、そばの色を基準に色相/明度/彩度の指定ができるとおもしろそうだ。背景色より "暗い" 色で枠線指定ができるとか、背景色に対して "アクセシビリティ基準をクリアした" 色を文字に指定できるとか。

多分今でも Sass とか使えば出来るんだろうけど、全然使えてなくて... 。うん、これ以上言うこと無いな！

## メモ
- case-insensitive とは、大文字小文字を区別しないという意味
- `rgb(255,255,255)` = `rgb(100%,100%,100%)`
- RGBa 値をサポートしてないUAは、この値を無視する必要がある。RGB 値に変換してはならない
- fuchsia はホクシア（フクシア）という植物の名前だけど、「赤紫色の」という意味もある。
- \<color\> の定義に `transparent` キーワードが加えられたのは CSS3 からで、これにより \<color\> を値にとるプロパティすべてで `transparent` キーワードが使えるようになった
- HSL の色相値は、円の角度による指定であるため `-120 = 240` や `480 = 120` という対応関係になる。（気を抜くと `-120 = 0`、`480 = 360` と覚えてしまいそうな）
- CSS2 システムカラー値（ `ActiveBorder`, `ActiveCaption`, etc ）は、 CSS3 UI の `appearance` プロパティの導入により廃止された。（当時どういった場面で使ってたんだろう）

## 参考
- [CSS カラーモジュール Level 3](http://standards.mitsue.co.jp/resources/w3c/TR/css3-color/)
- [第二回 W3C CSS Module 仕様書もくもく会@東京 - Color Module Level 3 を読む - Togetterまとめ](http://togetter.com/li/889862)
- [ご存じですか？colorプロパティ](http://geckotang.github.io/presentation-BacktoBasics-20150830/)
- [\<color\> - CSS | MDN](https://developer.mozilla.org/ja/docs/Web/CSS/color_value)

## これからの調べ物
- `opacity` プロパティ、 \<alphavalue\> の扱い
    - 説明の意味が上手く理解できない
    - スタッキングコンテキストを調べる必要がありそう
- ガモット
    - [ひとまず](http://home.a02.itscom.net/color/gamut/gamut.html)
- CRT
- sRGB
- foreground color
- HSL と HSV の違い
    - "HSL の利点に明るさと暗さが対称であること (これはたとえば HSV にはあてはまらない)" の意味が理解できない
- 削除された機能、 `@color-profile` at-rule とは
- 削除された機能、 `flavor` system color とは
