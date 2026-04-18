# 松鹤·智语（songhe-online）

静态单页站点，与线上演示一致：[https://songhe-online.vercel.app](https://songhe-online.vercel.app)

## 仓库里有什么

- `index.html`：主页面（由演示源文件同步生成，见下文）
- `songhe-built.css`：Tailwind 构建产物（也可本地重新生成）
- `tw-input.css`、`tailwind.config.js`：样式源码与配置
- `songhe-logo.png`、`gastro-demo-*.png`、`demo-bp-report.png`：图片资源
- `vercel.json`：Vercel 部署配置

## 本地开发

```bash
npm install
npm run build:css
```

在浏览器中直接打开 `index.html`，或用任意静态服务器（例如 `npx serve .`）预览。

## 从演示 HTML 更新 `index.html`

若你在上一级目录维护 `松鹤智语-移动端演示.html`，可在本目录执行：

```powershell
.\sync-from-demo.ps1
```

脚本会以 UTF-8 写入 `index.html`，并把资源路径从 `./songhe-online/...` 改为当前目录相对路径。**不要用资源管理器直接复制 HTML**，否则可能出现编码错误导致页面白屏或乱码。

## 部署到 Vercel

在项目根目录（本文件夹）执行：

```bash
npx vercel deploy --prod --yes
```

首次使用需按提示登录并关联项目。

## 推送到 GitHub

本目录**已初始化 Git** 并完成首次提交，默认分支为 `main`。若你尚未配置全局 Git 用户名与邮箱，可在本仓库内设置（与 GitHub 账号一致，或使用 GitHub 提供的 `noreply` 邮箱）：

```bash
git config user.name "你的名字"
git config user.email "你的邮箱"
```

关联你已创建的远程仓库并推送（将 URL 换成你的仓库地址）：

```bash
git remote add origin https://github.com/<你的用户名>/<仓库名>.git
git push -u origin main
```

若远程仓库已有 README 等初始提交，可先 `git pull origin main --allow-unrelated-histories` 合并再推送。

说明：`node_modules` 与 `.vercel` 已在 `.gitignore` 中忽略；克隆后请执行 `npm install` 再改样式并 `npm run build:css`。
