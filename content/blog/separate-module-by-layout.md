+++
date = "2015-07-02T22:42:55+09:00"
description = "異なる場所でも使うモジュールには配置に関するスタイルをできるだけ含まないようにしよう。"
tags = "dev"
title = "配置に関するスタイルを別モジュールで定義する"

[menu]
  [menu.global]
    parent = "blog"

+++

例えばこんな HTML と CSS があったとする。

```html
<div class="block">
  <div class="block-card">
    <p class="block-card-title">タイトル<small class="block-card-title-note">（注意書き的な）</small></p>
    <p class="block-card-summary">ウンタラカンタラかんたらうんたらウンタラカンタラかんたらうんたら</p>
  </div>
  <div class="block-card"> ... </div>
  <div class="block-card"> ... </div>
</div>
```

```css
.block { ... }
.block-card {
  margin: 1em 0;
  padding: 1em;
  ...
}
.block-card-title { ... }
.block-card-title-note { ... }
.block-card-summary { ... }
```

すべての場合において同じように言えるわけではないけど、この場合 `.card` は独立したモジュールとして管理できる。

そして、他の場所でも `.card` のスタイルを使う機会があり、それに配置的なプロパティ（ ここでは `margin: 1em 0` ）を必要としないのであれば、 `.block` と `.card` のモジュールは分けたほうが良いと思う。

```
<!-- better -->
<div class="block">
  <div class="block-item card">
    <p class="card-title">タイトル<small class="card-title-note">（注意書き的な）</small></p>
    <p class="card-summary">ウンタラカンタラかんたらうんたらウンタラカンタラかんたらうんたら</p>
  </div>
  <div class="block-item card"> ... </div>
  <div class="block-item card"> ... </div>
</div>
```

```css
.block { ... }
.block-item {
  margin: 1em 0;
}

.card {
  padding: 1em;
  ...
}
.card-title { ... }
.card-title-note { ... }
.card-summary { ... }
```

何度か自分で振り返って同じことを書いてる気がするけど、さぁやるぞ！とコーディングを開始した時は勢いで前者のように書いてしまうことが多い。作業が進むにつれて `margin` は邪魔になってきて、最後になって後者に書きなおすことになる。

色やサイズもそうなんだけど、モジュールを組む際は `margin`, `float`, `position` などの配置に関わるプロパティは特に気をつけていこう。
