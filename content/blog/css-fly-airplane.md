+++
date = "2015-05-22T19:53:01+09:00"
description = "CSS アニメーションで飛行機を飛ばす。"
tags = "dev"
title = "Fly Airplane"

[menu]
  [menu.global]
    parent = "blog"

+++

<iframe width="100%" height="300" src="//jsfiddle.net/thleap/q1m0r1w3/7/embedded/result%2Ccss/" allowfullscreen="allowfullscreen" frameborder="0"></iframe>

Hマークに着陸しない飛行機の CSS アニメーション。

## 移動方向・距離と回転を分ける
```css
@-webkit-keyframes move {
  ...
  25% {
    transform: translate($moveDistance, 0);
  }
  25.5% {
    transform:  translate($moveDistance, 0) rotate(angle(1));
  }
  ...
}
```

アニメーションの 4分の 1のタイミングで移動距離と方向を指定し、その次の 0.5% で飛行機を進む方向に回転させている。移動距離・方向・回転（ `transform: translate(x, y) rotate(r)`  ）を同じタイミングで指定すると、飛行機が回りながら指定した移動方向に進む。

あと、変数名はなんかアレです。

## 他
- [Moving an element along a circle | Lea Verou](http://lea.verou.me/2012/02/moving-an-element-along-a-circle/)
    - CSS アニメーションで円周上をまわすにはこうする方法があるみたい。
- [CSS Transitions, Transforms & Animations – Perspective](http://callmenick.com/post/css-transitions-transforms-animations-perspective)
    - Transition とアニメーションの勉強に良い。

---

ついに JSFiddle 貼り付けちゃった :-P
