+++
date = "2015-12-03T02:02:16+09:00"
description = "解決までひどく遠回りをした気がするが、wercker はできるだけ知識を身につけずに使っていたいというのがある。"
tags = "dev"
title = "wercker で再びビルドが成功するまで"

[menu]
  [menu.global]
    parent = "blog"

+++

## 怒られ、ビルドに失敗する
```
// arjen/hugo-build

cd $WERCKER_SOURCE_DIR
$ export WERCKER_STEP_ROOT="/wercker/steps/arjen/hugo-build/1.8.0"
$ export WERCKER_STEP_ID="82c22bbe-a946-45d4-9a7d-cd743502e86e"
$ export WERCKER_STEP_NAME="hugo-build"
$ export WERCKER_REPORT_NUMBERS_FILE="$WERCKER_REPORT_DIR/$WERCKER_STEP_ID/numbers.ini"
$ export WERCKER_REPORT_MESSAGE_FILE="$WERCKER_REPORT_DIR/$WERCKER_STEP_ID/message.txt"
$ export WERCKER_REPORT_ARTIFACTS_DIR="$WERCKER_REPORT_DIR/$WERCKER_STEP_ID/artifacts"
$ mkdir -p $WERCKER_REPORT_ARTIFACTS_DIR
$ export WERCKER_STEP_TEMP="/tmp/$WERCKER_STEP_ID"
$ source '/wercker/wercker-build-essentials/init.sh'
$ mkdir -p $WERCKER_STEP_TEMP
$ export WERCKER_HUGO_BUILD_VERSION="0.14"
$ export WERCKER_HUGO_BUILD_DISABLE_PYGMENTS="false"
$ export WERCKER_HUGO_BUILD_FORCE_INSTALL="false"
$ export WERCKER_HUGO_BUILD_PROD_BRANCHES=""
$ export WERCKER_HUGO_BUILD_DEV_BRANCHES=""
$ export WERCKER_HUGO_BUILD_DEV_FLAGS=""
$ export WERCKER_HUGO_BUILD_FLAGS=""
$ export WERCKER_HUGO_BUILD_CONFIG=""
$ export WERCKER_HUGO_BUILD_THEME=""
$ source "$WERCKER_STEP_ROOT/run.sh"
E: List directory /var/lib/apt/lists/partial is missing. - Acquire (13: Permission denied)
E: Could not open lock file /var/lib/dpkg/lock - open (13: Permission denied)
E: Unable to lock the administration directory (/var/lib/dpkg/), are you root?
```

[Issue with wercker/default (HTTP 404) · Issue #8 · ArjenSchwarz/wercker-step-hugo-build](https://github.com/ArjenSchwarz/wercker-step-hugo-build/issues/8) を見ると、「バージョン番号を引用符でくくり、box は debian 使って」みたいに言ってるので、それに。

`wercker.yml` をこのようにした:

```
box: debian
build:
  steps:
    - arjen/hugo-build:
        version: "0.14"

deploy:
  steps:
    - lukevivier/gh-pages@0.2.1:
        token: $GIT_TOKEN
        domain: thleap.net
        basedir: _public
```

## 叱られる
```
Setting up environment...

Using wercker.yml:
box: debian
build:
  steps:
    - arjen/hugo-build:
        version: "0.14"
deploy:
  steps:
    - lukevivier/gh-pages@0.2.1:
        token: $GIT_TOKEN
        domain: thleap.net
        basedir: _public
Setup environment failed:
Box debian defined in wercker.yml not found

Sentinel: production-sentinel-12
```

[wercker - docs - Migration Tips to wercker v2](http://devcenter.wercker.com/docs/faq/migration-tips-v2.html) を参考に wercker のサイト内で設定を変えることに。

以下のメニューの設定リンクを選択。

![](/images/blog/recovering-wercker/header-setting-link.png)

Infrastructure stack を変更（変更前はClassicになってた）。

![](/images/blog/recovering-wercker/infrastructure-stack-select.png)

これで以前のようにビルドに成功した。めでたし (?) 。

## まだダメだった（デプロイに失敗）
フォーラムを見ているとまさに[同じようなエラー](https://discuss.gohugo.io/t/automated-hugo-deployments-anywhere-using-wercker/539/39)を出している人がいた。それに対して、次の人がコメントで `wercker.yml` の `deploy: steps:` の後に2行ほど足せば何とかなるでみたいなこと言ってるので、その通りに。

```
deploy:
  steps:
    - install-packages:
        packages: git ssh-client
...
```

Done.
