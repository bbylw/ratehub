@echo off
chcp 65001 >nul
echo ========================================
echo    RateHub GitHub 部署脚本
echo ========================================
echo.

REM 检查是否已经是Git仓库
if not exist .git (
    echo 初始化Git仓库...
    git init
    echo.
)

REM 添加所有文件
echo 添加文件到Git...
git add .
echo.

REM 提交更改
echo 提交更改...
git commit -m "Initial commit: RateHub - 专业汇率分析平台"
echo.

REM 设置主分支名称
echo 设置主分支为main...
git branch -M main
echo.

echo ========================================
echo 接下来请手动执行以下步骤：
echo ========================================
echo.
echo 1. 在GitHub上创建新仓库 (建议名称: ratehub)
echo 2. 复制仓库URL
echo 3. 运行以下命令：
echo.
echo    git remote add origin https://github.com/yourusername/ratehub.git
echo    git push -u origin main
echo.
echo 或者如果使用SSH：
echo    git remote add origin git@github.com:yourusername/ratehub.git
echo    git push -u origin main
echo.
echo ========================================
echo 部署完成后，您可以启用GitHub Pages：
echo ========================================
echo.
echo 1. 进入仓库设置 (Settings)
echo 2. 找到 Pages 选项
echo 3. Source 选择 "Deploy from a branch"
echo 4. Branch 选择 "main"
echo 5. 点击 Save
echo.
echo 您的网站将在以下地址可用：
echo https://yourusername.github.io/ratehub
echo.
pause