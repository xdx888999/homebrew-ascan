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

如果已经在项目根目录里，直接运行 `ascan` 等价于 `ascan .`。如果当前目录是 Xcode 项目，并且目录里也放了 `.ipa`，直接运行 `ascan` 仍然只扫描项目源码和配置；需要项目和 IPA 一起扫时，请显式使用 `--ipa`。

在 Xcode 导出的 IPA 目录里，如果目录不像源码项目且只有一个 `.ipa` 文件，直接运行 `ascan` 也会自动扫描这个 IPA。
