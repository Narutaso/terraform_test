# aws-terraform

### Requirements

- terraform ~> 1.5.4
- tfcmt     = v4.4.3
- tflint    = v0.47.0

### Description

- aws環境のインフラ構成をテストするterraformです
- AWSのUserIDはCodeBUildの環境変数に定義します
- codebuildでCI/CDを組んでいます
- 手動実行/自動実行の2通りです
- tfcmtを使用してPRにCI/CD結果を通知する実装です
- tfcmt使用のため SSM Parameter Storeで `codebuild-github-token` を定義しaccess tokenを保存する
- tflintで一部ルールを設けてルールを破るとエラーを出す実装にしています

### execution method

- 自動実行(CI/CD)
  - Plan実行方法:main ブランチへのPRの作成・変更
  - Apply実行方法:main ブランチへのPRのMerge
- 手動実行
  - 基本的には使わないけどCI/CDだと要件にあわない時に実行
  - Requirementsに記載のある terraform ver が必要

### Directory Layout

```text
aws-terraform
│  .gitignore
│  .tflint.hcl
│  backend.tf
│  codebuild.tf
│  README.MD
│  ※その他のtfファイル
│  terraform.tfvars(ignoreします)
│
├─codebuild
│  buildspec-apply.yml
│  buildspec-dryrun.yml
│
├─module
│  └─※その他のtfファイル等から参照されるファイル
│
└─scripts
    apply.sh
    dryrun.sh
    install.sh
```# terraform_test
# terraform_test2
# terraform_test2
