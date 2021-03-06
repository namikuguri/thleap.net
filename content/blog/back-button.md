+++
date = "2015-09-05T17:09:08+09:00"
description = "操作のどの段階でもやり直しができるように、一つ前のステップに確実に戻れるようにしてほしいものだ。"
tags = "design"
title = "Back Button"

[menu]
  [menu.global]
    parent = "blog"

+++

駅の改札付近の機械で定期券を購入をするとき、僕はなんであんなにイライラしたんだろう。

僕が定期券を購入した時を振り返ってみると、イライラした原因の一つは "あるポイントから操作のやり直しができない" （一つ前に戻れない）ことにあった気がする。

乗り換え経路の選択までは右上に「もどる」ボタンが用意されてたんだけど、その次の「新規ICカードを購入して定期券発行/紙で発行/使用中のICカードで発行」の中からICカードの新規購入を選択し、利用規約の「同意/同意しない」画面に進むともどるボタンが画面から消えてしまった。

ここで同意しないを選択すると定期券購入のステップは最初からになる。そして、同意するを選んで次の画面に進んでから、右上に再出現したもどるボタンを押しても「同意/同意する」の画面に戻るので、この画面にたどり着く前に設定した経路を修正するには最初からやり直すしかない。

朝そんなに時間がない中で定期券を購入しようとしたからというのもあるかもしれない。しかし、いくら単純な操作でも無駄にこちらの手間を要求されるとストレスが溜まった。

こういったものでは、**"一つ前の画面（ステップにもどる）" という選択肢を常に提示しておいてほしい**と思った。
