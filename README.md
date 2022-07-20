# zenn-cli-docker
zenn-cliをdocker上で使うためのリポジトリ
## 初期設定
### GithubとZennの連携
[GitHubリポジトリでZennのコンテンツを管理する](https://zenn.dev/zenn/articles/connect-to-github)に従って、GitHubリポジトリとZennを連携する
### リポジトリをcloneして、Zennと連携させるリポジトリの名前(`<zenn-repo>`)に変更する
```
$ git clone git@github.com:pitekusu/zenn-docker.git
$ mv zenn-cli-docker <zenn-repo>
$ cd <zenn-repo>
```
### `<zenn-repo>`をGitHubと連携する
```
$ git init
$ git add .
$ git commit -m 'first commit'
$ git branch -M main
$ git remote add origin git@github.com:<user>/<zenn-repo>.git
```
### zenn-cliの初期設定
参考：[Zenn CLIをインストールする](https://zenn.dev/zenn/articles/install-zenn-cli)
```
$ docker-compose run web npx zenn init
```
### GitHubにpush
```
$ git push -u origin main
```

## 使い方
[Zenn CLIで記事・本を管理する方法](https://zenn.dev/zenn/articles/zenn-cli-guide)を参考にすること。

## previewページの見方
1. `$ docker-compose up`
1. http://zenn.your.domain にアクセス
