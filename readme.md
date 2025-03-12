# 📝 ClipNote - 极速笔记增强工具 ✨

> 无缝连接阅读与记录，让学习笔记的流程前所未有的顺畅

![GitHub stars](https://img.shields.io/github/stars/yourusername/ClipNote?style=social)
![GitHub license](https://img.shields.io/github/license/yourusername/ClipNote)
![Raycast Extension](https://img.shields.io/badge/Raycast-Extension-blue)

<p align="center">
  <img src="assets/clipnote-demo.gif" alt="ClipNote 使用演示" width="80%">
</p>

## 🪄 阅读与笔记的完美融合

学习过程中，你是否曾经遇到这样的情况？

- 📚 阅读文章时发现精彩的段落需要记录
- ⏱️ 在浏览器和笔记应用之间来回切换浪费宝贵时间
- 😓 复制、切换、粘贴的繁琐循环影响学习体验和效率

**ClipNote** 彻底改变了这一切！只需一个快捷键，即可将选中的内容直接送入您的笔记应用，让思维不再被打断，让灵感畅通无阻。

## ✨ 主要特点

- ⚡️ **一键操作**：选中文本，触发命令，立即插入笔记
- 🔄 **无缝集成**：无需手动切换应用窗口
- 📌 **精准定位**：直接粘贴到当前光标位置
- 🛠️ **高度可定制**：支持自定义目标笔记应用
- 🧠 **专注学习**：减少操作干扰，保持思维连贯
- 🎯 **提升效率**：学习和记录同步进行，效率倍增
- 💻 **原生体验**：基于AppleScript，流畅运行于macOS系统

## 🚀 安装指南

### 前提条件

- [Raycast](https://raycast.com/) 已安装
- macOS 系统

### 安装步骤

1. 在 Raycast 中搜索 "Store"
2. 搜索 "ClipNote"
3. 点击 "安装"

或者手动安装:

```bash
git clone https://github.com/yourusername/ClipNote.git
cd ClipNote
npm install
npm run dev
```

## 🎯 使用方法

### 基本操作流程

1. 在阅读时，先打开您的备忘录应用并定位光标到需要插入内容的位置
2. 回到浏览器或其他阅读应用中，选中您想添加到笔记的文本
3. 触发 Raycast（默认快捷键 ⌘+Space）
4. 输入 "ClipNote" 并按回车
5. 瞬间，选中的文本就会出现在您的备忘录中的光标位置！

<p align="center">
  <img src="assets/clipnote-workflow.png" alt="使用流程" width="70%">
</p>

### 自定义目标应用

喜欢使用其他笔记应用？ClipNote 完全支持自定义！只需简单修改脚本：

1. 在 Raycast 中找到 ClipNote 扩展
2. 点击 "Edit Command"
3. 在 AppleScript 部分，将 `Notes` 替换为您喜欢的应用名称，如：
   - `Obsidian`
   - `Evernote` 
   - `Notion`
   - `Bear`
   - 任何支持 AppleScript 的文本编辑器

```applescript
# 示例：修改为 Obsidian
tell application "Obsidian"
  activate
  tell application "System Events"
    keystroke "v" using command down
  end tell
end tell
```

## 💡 使用场景

- 📚 **研究学术论文**：快速收集引用和关键概念
- 🌐 **浏览技术文档**：边学习编程边记录代码片段
- 📰 **阅读新闻文章**：收集重要事实和数据
- 🎓 **在线课程学习**：记录课程要点和个人见解
- 📝 **写作研究**：积累素材和灵感片段

## ⚙️ 技术细节

ClipNote 利用 Raycast 扩展框架和 AppleScript，实现了简单而强大的功能：

1. 使用系统剪贴板作为中间媒介
2. 自动复制当前选中内容
3. 无缝切换到目标笔记应用
4. 模拟键盘命令执行粘贴操作
5. 可选择性地返回原应用

整个过程通常在不到1秒的时间内完成，给用户带来流畅的体验。

## 🔮 未来计划

我们正在规划以下功能增强：

- 📊 添加格式化选项（如引用块、代码块）
- 🔖 支持添加自动标签或来源引用
- 🌈 多应用场景预设配置
- 🖼️ 支持图片和富文本内容复制
- 🔄 双向同步功能
- 🌐 多设备支持

## 🤝 贡献指南

欢迎贡献！无论是功能请求、bug修复还是文档改进：

1. Fork 此仓库
2. 创建您的功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交您的更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 开一个 Pull Request

## 📜 许可证

该项目采用 MIT 许可证 - 详情请参阅 [LICENSE](LICENSE) 文件

## 🙏 致谢

- [Raycast Team](https://raycast.com/) 提供强大而灵活的扩展平台
- 所有测试和提供反馈的用户

---

<p align="center">
  用 ❤️ 打造，为热爱学习的人们
</p>

<p align="center">
  <a href="https://twitter.com/yourusername">Twitter</a> •
  <a href="https://github.com/yourusername">GitHub</a> •
  <a href="mailto:your-email@example.com">联系我</a>
</p>