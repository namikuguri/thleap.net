+++
date = "2015-06-12T19:04:45+09:00"
description = "セレクタはややこしいねという話。大した話ではない。"
tags = "dev"
title = "隣接セレクタの罠"

[menu]
  [menu.global]
    parent = "blog"

+++

グリッド内のアイテムを横並べにしようとして躓いた。以前書いた[この方法](/blog/list-separation-border/)でアイテムに余白をもたせようとしたんだけど、下のコードでは意図した表示にはならなかった。

- [Demo](http://jsfiddle.net/thleap/2pftphqe/5)

```
.grid .item + .grid .item {
  margin-left: 20px;
}
```

これでは「 `.grid` の子孫の `.item` 」と隣接する「 `.grid .item` 」にスタイルが適用されてしまい、`.grid .item` 同士は隣り合っていてもスタイルが適用されない。

隣接する `.grid .item` にスタイルを適用したいのであれば、正しくは以下のように指定する。

- [Demo](http://jsfiddle.net/thleap/2pftphqe/4/)

```
.grid .item + .item {
  margin-left: 20px;
}
```

このへんがややこしい。というか、問題が発見されにくく、`.grid .item + .grid .item` と `.grid .item + .item` の違いが一目ではわからない。

自分で書くときは `.item` を `.grid-item` とし、以下のように書いておくのが良さそうだ。

```
.grid-item + .grid-item {
  margin-left: 20px;
}
```

今回書いた隣接セレクタの件は、他人が書いたコードを見て指定内容が把握できれば良い、くらいで考えておこうか。  
自分では書かないようにする（書いても忘れるから）のがベストだろう。
