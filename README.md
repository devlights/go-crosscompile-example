# go-crosscompile-example
This is example that makes cross-compile using golang.

[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/devlights/go-crosscompile-example)

## Go のクロスコンパイルについて

Goでは簡単にクロスコンパイルが行えます。

やり方は ビルド時に以下の2つの環境変数を設定しておくことです。

- GOOS
- GOARCH

GOOSとGOARCHの組み合わせを指定することで各環境向けのビルドモジュールを作ることが出来ます。

組み合わせは以下に記載されています。

[Optional environment variables](https://golang.org/doc/install/source#environment)

2020-11-10 時点だと以下が有効な組み合わせとのこと。

|$GOOS|$GOARCH|
| ---- | ---- |
|aix|ppc64|
|android|386|
|android|amd64|
|android|arm|
|android|arm64|
|darwin|amd64|
|darwin|arm64|
|dragonfly|amd64|
|freebsd|386|
|freebsd|amd64|
|freebsd|arm|
|illumos|amd64|
|js|wasm|
|linux|386|
|linux|amd64|
|linux|arm|
|linux|arm64|
|linux|ppc64|
|linux|ppc64le|
|linux|mips|
|linux|mipsle|
|linux|mips64|
|linux|mips64le|
|linux|s390x|
|netbsd|386|
|netbsd|amd64|
|netbsd|arm|
|openbsd|386|
|openbsd|amd64|
|openbsd|arm|
|openbsd|arm64|
|plan9|386|
|plan9|amd64|
|plan9|arm|
|solaris|amd64|
|windows|386|
|windows|amd64|