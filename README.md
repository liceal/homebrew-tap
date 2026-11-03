# homebrew-tap 🍁

Official Homebrew Tap for **[Maple](https://github.com/liceal/Maple)** — 原生极速 macOS 多窗格双栏访达文件管理器。

---

## 🚀 安装指南 (Installation)

### 方式一：一步直达安装（推荐）

无需事先手动添加 tap，直接运行：

```bash
brew install liceal/tap/maple
```

> 💡 如果之前使用的是 `liceal/maple`，也可以直接执行：
> ```bash
> brew install liceal/maple
> ```

### 方式二：先 Tap 后安装

```bash
brew tap liceal/tap
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

# 彻底清理应用及偏好设置文件
brew uninstall --zap maple
```

---

## 💡 特性与说明

- **双架构原生适配**：根据用户 Mac 芯片架构自动匹配下载 Apple Silicon（M系列 `arm64`）或 Intel（`x86_64`）专属构建。
- **Gatekeeper 隔离净化**：配置中内置 `postflight_steps` 自动清除 macOS 隔离属性（`com.apple.quarantine`），安装后直接在启动台/访达点击即可秒开，解决未签名 App 提示拦截或需要去“隐私与安全性”点“仍要打开”的问题。
- **官方主页**：[maple.linxianao.com](https://maple.linxianao.com)
- **主项目源码**：[liceal/Maple](https://github.com/liceal/Maple)
