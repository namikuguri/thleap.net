+++
date = "2015-10-01T01:13:41+09:00"
description = "CSSで属性セレクタを複数使って条件を詰める。"
tags = "dev"
title = "属性セレクタ.属性セレクタ"

[menu]
  [menu.global]
    parent = "blog"

+++

`http://thleap.net/` という `href` 属性を持つ `.link` というクラスに対して、以下の様なセレクタ指定はうまく適用されるのか !!?

```css
.link[href*="thleap"].link[href*="net"] {
  background: tomato;
}
```

...どうやらこの指定は適用されるようです。

- [Demo](http://jsfiddle.net/thleap/o4ordrLj/1/)

CSS の属性セレクタは他にもいくつかあるので、試してみると面白いのが見つかるかも。

ちなみに僕はこれをユーザースタイルシートを書く時に使ったけど、普段 HTML 側も触れる状況で使うことは無さそう。（それはクラスを振りましょうという話になるので）
