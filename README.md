# homebrew-ascan

这是 [AScan](https://github.com/xdx888999/AScan) 的 Homebrew tap。

AScan 是一个本地运行的 iOS App Store 提审合规初筛 CLI。它不能代替 Apple 官方审核，也不保证过审，只用于提交前发现部分静态风险。

## 安装

```bash
brew tap xdx888999/ascan
brew install ascan
```

一行安装：

```bash
brew install xdx888999/ascan/ascan
```

## 升级

```bash
brew update
brew upgrade ascan
```

## 卸载

```bash
brew uninstall ascan
```

## 使用

```bash
ascan .
ascan . --format json --output report.json
ascan . --ipa build/MyApp.ipa
ascan build/MyApp.ipa --only ipa
ascan . --only ipa
```
