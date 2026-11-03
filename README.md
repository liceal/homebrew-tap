# homebrew-maple 🍁

Official [Homebrew](https://brew.sh/) Tap for **[Maple](https://github.com/liceal/Maple)** — 原生极速 macOS 多窗格双栏访达文件管理器。

---

## 🚀 安装指南 (Installation)

### 方式一：一步直达安装（推荐）

无需事先手动添加 tap，直接运行：

```bash
brew install liceal/maple
```

或者显式指定 cask 安装：

```bash
brew install --cask liceal/maple/maple
```

### 方式二：先 Tap 后安装

```bash
brew tap liceal/maple
brew install --cask maple
```

---

## 🔄 升级应用 (Upgrade)

```bash
brew upgrade maple
```

---

## 🗑️ 卸载应用 (Uninstall)

```bash
# 常规卸载
brew uninstall maple

# 彻底清理配置文件与状态
brew uninstall --zap maple
```

---

## 💡 特性说明

- **全架构支持**：自动识别 Apple Silicon (M系列架构 `arm64`) 与 Intel (`x86_64`)。
- **Gatekeeper 隔离净化**：配置内置 `postflight` 净化属性，避免未签名应用弹出拦截提示。
- **官方主页**：[maple.linxianao.com](https://maple.linxianao.com)
- **源码仓库**：[liceal/Maple](https://github.com/liceal/Maple)
