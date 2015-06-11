+++
date = "2015-06-11T20:07:13+09:00"
description = "text-shadow でフォントを太く見せることはできるけど、ジャギるのであまり使わないほうが良いかもねという話。"
tags = "dev"
title = "text-shadow で太字にするとジャギる"

[menu]
  [menu.global]
    parent = "blog"

+++

`text-shadow` でフォントを太くするという表現がある。こういう感じの:

```css
.shadow-bold {
  text-shadow: .1px .1px 0 black,
               -.1px .1px 0 black,
               .1px -.1px 0 black,
               -.1px -.1px 0 black,
               0 0 .1px rgba(0, 0, 0, .1);
}
```

ただ、これをすると文字の輪郭ががたつき、少しピクセルの粗が目だつ。それが気になったというだけの話。

それだけの話なんだけど、JSFiddle で書いたサンプルと、それを Mac PC の各ブラウザで撮ったスクリーンショットだけ載っけておこう。赤丸がついてるのが `text-shadow` を使って太くしたとこ。

<iframe width="100%" height="300" src="//jsfiddle.net/thleap/tnrsw5un/4/embedded/result%2Ccss/" allowfullscreen="allowfullscreen" frameborder="0"></iframe>

![](/images/blog/font-bold-by-text-shadow/shots.png)

---

書いてる途中で何書こうとしてたか忘れた... 。

あと、誤った `font-family` の指定を直してスクリーンショットを撮り直すの最大限のダルみがあった。

- だめ: `font-family: "Yu Gothic"`
- おっけー: `font-family: "YuGothic"`

Firefox は `Yu Gothic` の指定でも効いてたけど。
