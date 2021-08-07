# ssh-keygen_spawn

spawnコマンドを使用してssh-keygenでed25519の鍵を空のパスワードを自動で入力するスクリプトです。
パスワード指定（あり、なし）はssh-keygenの-fオプションでできますが、spawnコマンドの例として作成しました。

### 使い方
* ssh-keygen_ed25519_nopasswd [-h|--help]
* ssh-keygen_ed25519_nopasswd [comment] [private/public key path] 

引数の情報をssh-keygenに渡して実行します。  
ssh-keygenについてはこちらに記載していますので参照ください。  
https://qiita.com/7rikaz_h785/items/2734649855610cfff1a7

### 引数について
* [comment] :公開鍵のコメントを追加します  
* [private/public key path] :パスを指定するとそのパスに鍵（秘密鍵と公開鍵）を作成します。
