# 🚀 RateHub 部署指南

本文档详细说明如何将RateHub项目部署到各种平台。

## 📋 部署前准备

确保您的项目包含以下文件：
- ✅ `index.html` - 主页面
- ✅ `style.css` - 样式文件
- ✅ `script.js` - JavaScript逻辑
- ✅ `config.js` - 配置文件
- ✅ `README.md` - 项目说明
- ✅ `LICENSE` - 许可证文件
- ✅ `.gitignore` - Git忽略文件
- ✅ `vercel.json` - Vercel配置
- ✅ `netlify.toml` - Netlify配置

## 🐙 GitHub 部署

### 步骤1：创建GitHub仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角的 "+" 按钮，选择 "New repository"
3. 仓库名称建议使用：`ratehub`
4. 描述：`💰 RateHub - 专业汇率分析平台`
5. 选择 "Public"（如果要使用免费的GitHub Pages）
6. **不要**勾选 "Add a README file"（我们已经有了）
7. 点击 "Create repository"

### 步骤2：上传代码

#### 方法一：使用部署脚本（推荐）

**Windows用户：**
```bash
# 双击运行
deploy-to-github.bat
```

**Linux/Mac用户：**
```bash
# 在终端中运行
./deploy-to-github.sh
```

#### 方法二：手动命令

```bash
# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: RateHub - 专业汇率分析平台"

# 设置主分支
git branch -M main

# 添加远程仓库（替换为您的仓库URL）
git remote add origin https://github.com/yourusername/ratehub.git

# 推送到GitHub
git push -u origin main
```

### 步骤3：启用GitHub Pages

1. 进入您的GitHub仓库页面
2. 点击 "Settings" 选项卡
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 部分：
   - 选择 "Deploy from a branch"
   - Branch 选择 "main"
   - Folder 保持 "/ (root)"
5. 点击 "Save"
6. 等待几分钟，您的网站将在以下地址可用：
   `https://yourusername.github.io/ratehub`

## ☁️ Cloudflare Pages 部署

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. 进入 "Pages" 选项
3. 点击 "Create a project"
4. 选择 "Connect to Git"
5. 连接您的GitHub账户
6. 选择 `ratehub` 仓库
7. 配置设置：
   - Project name: `ratehub`
   - Production branch: `main`
   - Build settings: 保持默认（无需构建）
8. 点击 "Save and Deploy"
9. 部署完成后，您将获得一个 `.pages.dev` 域名

## ⚡ Vercel 部署

1. 访问 [Vercel](https://vercel.com/)
2. 使用GitHub账户登录
3. 点击 "New Project"
4. 从GitHub导入 `ratehub` 仓库
5. 配置设置：
   - Project Name: `ratehub`
   - Framework Preset: Other
   - Root Directory: `./`
   - Build and Output Settings: 保持默认
6. 点击 "Deploy"
7. 部署完成后，您将获得一个 `.vercel.app` 域名

## 🌐 Netlify 部署

1. 访问 [Netlify](https://netlify.com/)
2. 点击 "New site from Git"
3. 选择 "GitHub" 并授权
4. 选择 `ratehub` 仓库
5. 配置设置：
   - Branch to deploy: `main`
   - Build command: 留空
   - Publish directory: 留空
6. 点击 "Deploy site"
7. 部署完成后，您将获得一个随机的 `.netlify.app` 域名
8. 可以在站点设置中自定义域名

## 🚀 Surge.sh 部署

1. 安装Surge CLI：
   ```bash
   npm install -g surge
   ```

2. 在项目目录中运行：
   ```bash
   surge
   ```

3. 按提示操作：
   - 确认项目路径
   - 输入域名（或使用默认的随机域名）
   - 登录或注册Surge账户

## 🔧 自定义域名

### GitHub Pages
1. 在仓库根目录创建 `CNAME` 文件
2. 文件内容为您的域名，如：`ratehub.yourdomain.com`
3. 在域名DNS设置中添加CNAME记录指向 `yourusername.github.io`

### Cloudflare Pages
1. 在Cloudflare Pages控制台中选择您的项目
2. 进入 "Custom domains" 选项卡
3. 点击 "Set up a custom domain"
4. 输入您的域名并按提示配置

### Vercel
1. 在Vercel控制台中选择您的项目
2. 进入 "Settings" → "Domains"
3. 添加您的自定义域名
4. 按提示配置DNS记录

### Netlify
1. 在Netlify控制台中选择您的站点
2. 进入 "Site settings" → "Domain management"
3. 点击 "Add custom domain"
4. 按提示配置DNS记录

## 🔍 部署验证

部署完成后，请验证以下功能：

- ✅ 页面正常加载，无JavaScript错误
- ✅ 货币转换器正常工作
- ✅ 汇率卡片正常显示
- ✅ 专业图表链接可以正常跳转
- ✅ 响应式设计在移动端正常显示
- ✅ 所有外部资源（字体、图标）正常加载

## 🐛 常见问题

### 问题1：页面显示404错误
**解决方案：**
- 确保仓库是公开的（对于GitHub Pages免费版）
- 检查GitHub Pages设置中的分支是否正确
- 等待几分钟让部署生效

### 问题2：样式或脚本不加载
**解决方案：**
- 检查文件路径是否正确（使用相对路径）
- 确保所有文件都已正确上传到仓库

### 问题3：API调用失败
**解决方案：**
- 确保使用HTTPS部署（所有推荐平台都默认支持）
- 检查浏览器控制台的错误信息
- 验证API端点是否可访问

### 问题4：自定义域名不工作
**解决方案：**
- 检查DNS记录是否正确配置
- 等待DNS传播（可能需要24-48小时）
- 确保SSL证书已正确配置

## 📞 获取帮助

如果遇到部署问题：

1. 检查浏览器控制台的错误信息
2. 查看平台的部署日志
3. 参考各平台的官方文档
4. 在GitHub仓库中提交Issue

---

🎉 **祝您部署成功！享受您的专业汇率分析平台！** 🎉