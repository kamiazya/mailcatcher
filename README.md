# docker-mailcatcher

[![badge](https://images.microbadger.com/badges/image/kamiazya/mailcatcher.svg)](https://microbadger.com/images/kamiazya/mailcatcher "Get your own image badge on microbadger.com")
[![version badge](https://images.microbadger.com/badges/version/kamiazya/mailcatcher.svg)](https://microbadger.com/images/kamiazya/mailcatcher "Get your own version badge on microbadger.com")
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

Smtp server and Web view for development on Docker.

[Docker hub](https://hub.docker.com/r/kamiazya/mailcatcher/)

## Description

Smtp server and Web view for developing on Docker using [mailcatcher](https://mailcatcher.me/).

It's based on Apline Linux, so it will be the minimum class configuration.

> mailcatcherを利用して、Docker上で開発するためのSmtpサーバーとWebビューを提供します。
>
> Apline Linuxをベースにして軽くしています。

## Requirement

* docker

## Usage

When you execute the following command, a mail server is built in port 25, and you can see mail inbox by accessing port 1080 in browser.

> 下記のコマンドを実行すると、25番ポートにメールサーバーが建ち、ブラウザで1080番ポートにアクセスするとメールの受信ボックスをみることができます。

```bash
docker run -p 1080:1080 -p 25:25 kamiazya/mailcatcher
```

You can customize expose port by environment variable.

> 環境変数で公開ポートをカスタマイズすることができます。

```bash
docker run -p 20000:20000 -p 555:555 \
    -e HTTP_PORT=20000 \
    -e SMTP_PORT=555 \
    kamiazya/mailcatcher
```

## Install

```bash
docker pull kamiazya/mailcatcher
```

## License

[MIT](https://github.com/kamiazya/mailcatcher/blob/master/LICENSE)

## Author

[kamaizya](https://github.com/kamiazya)
