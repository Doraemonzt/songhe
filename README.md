# 松鹤·智语

面向银发群体的**适老化健康咨询辅助**演示站点：用大字号、清晰层级与对话式界面，帮助用户用日常语言理解健康相关困惑。当前为**前端交互演示**（含模拟对话与场景剧本），便于展示产品形态与使用流程。

**在线体验：** [songhe-online.vercel.app](https://songhe-online.vercel.app)

---

## 产品要点

- **首页**：品牌入口，提供「开始咨询」与「首次使用指南」。
- **咨询页**：模拟对话流，支持语音交互示意、图片上传示意、快捷场景与新手引导；界面针对移动端触控与可读性做了优化（安全区、大触控区域等）。
- **表达风格**：强调「大白话」解读，降低医学信息理解门槛。
- **合规提示**：页面内注明内容仅供健康科普与就医参考，不能替代执业医师的诊断与治疗。

---

## 技术说明

| 项目 | 说明 |
|------|------|
| 框架 | Vue 3、Vue Router（Hash 路由） |
| 样式 | Tailwind CSS（源码 `tw-input.css`，构建产物 `songhe-built.css`） |
| 脚本与样式 CDN | 使用国内 BootCDN，减轻境外资源访问压力 |
| 部署 | 静态站点，默认通过 [Vercel](https://vercel.com) 发布（见 `vercel.json`） |

---

## 仓库结构（核心文件）

```
songhe-online/
├── index.html           # 单页应用入口
├── songhe-built.css     # 构建后的样式（提交仓库便于直接打开或部署）
├── tw-input.css         # Tailwind 输入文件
├── tailwind.config.js
├── postcss.config.js
├── package.json
├── songhe-logo.png      # 品牌图
├── gastro-demo-*.png    # 演示用配图
├── sync-from-demo.ps1   # 从上级「松鹤智语-移动端演示.html」同步生成 index.html（UTF-8）
└── vercel.json          # 部署与缓存头配置
```

修改样式后请在项目根目录执行 `npm run build:css` 重新生成 `songhe-built.css`。

若你在本仓库**上一级目录**维护完整演示页 `松鹤智语-移动端演示.html`，可在本目录运行 `.\sync-from-demo.ps1` 更新 `index.html`（请勿用资源管理器直接复制 HTML，以免编码错误导致乱码或白屏）。

---

## 本地运行

```bash
npm install
npm run build:css
```

用浏览器直接打开 `index.html`，或使用 `npx serve .` 等静态服务预览。

---

## 许可证与声明

本项目展示界面与文案用于产品与学术交流；医学与健康相关内容不构成诊疗建议。正式产品需遵循医疗广告、个人信息保护及医疗器械/算法等相关法规。
