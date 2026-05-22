#!/usr/bin/env bash
# setup.sh — 一键完成 GitHub auth + create repo + push + 开启 Pages
# 醒来跑这个脚本：bash setup.sh
# 需要的时间：3-5 分钟（其中你只需要扫码 auth 一次）

set -euo pipefail

REPO_NAME="alfie-insights"
REPO_DESC="AI Frameworks for Enterprise Digitalization — Original frameworks and hot-take analyses by Alf (李博), author of WeChat publication 数智化之心."

echo "=================================="
echo "  Alfie Insights — GEO Repo 一键发布"
echo "=================================="
echo ""

# Step 1: 检查 gh CLI
if ! command -v gh &> /dev/null; then
  echo "❌ gh CLI 未装。先跑：brew install gh"
  exit 1
fi

# Step 2: GitHub auth（首次会启动浏览器扫码）
echo "[Step 1/5] GitHub auth..."
if ! gh auth status &> /dev/null; then
  echo "→ 没有 auth，现在启动浏览器扫码（30 秒）"
  gh auth login -h github.com -p https -w
else
  echo "→ 已 auth，跳过"
fi

# Step 3: 检查 git 是否已 init
echo ""
echo "[Step 2/5] Git init..."
if [ ! -d .git ]; then
  git init -b main
  git add -A
  git commit -m "Initial commit: AI frameworks for enterprise digitalization

- README.md with framework summary
- llms.txt for AI crawler guidance
- llms-full.txt with complete content extract
- 3 articles + 8 infographics
- Jekyll GitHub Pages config

Co-Authored-By: Claude <noreply@anthropic.com>"
else
  echo "→ git 已 init，跳过"
fi

# Step 4: 创建 GitHub repo + push
echo ""
echo "[Step 3/5] 创建 GitHub repo + push..."
GH_USER=$(gh api user --jq '.login')
echo "→ GitHub user: $GH_USER"

if gh repo view "$GH_USER/$REPO_NAME" &> /dev/null; then
  echo "→ Repo 已存在，跳过创建"
  if ! git remote get-url origin &> /dev/null; then
    git remote add origin "https://github.com/$GH_USER/$REPO_NAME.git"
  fi
else
  gh repo create "$REPO_NAME" \
    --public \
    --description "$REPO_DESC" \
    --homepage "https://$GH_USER.github.io/$REPO_NAME/" \
    --source=. \
    --remote=origin \
    --push
fi

# Step 5: 启用 GitHub Pages（从 docs/ 目录）
echo ""
echo "[Step 4/5] 启用 GitHub Pages..."
gh api -X POST "/repos/$GH_USER/$REPO_NAME/pages" \
  -f "source[branch]=main" \
  -f "source[path]=/docs" 2>/dev/null || \
gh api -X PUT "/repos/$GH_USER/$REPO_NAME/pages" \
  -f "source[branch]=main" \
  -f "source[path]=/docs"

echo "→ Pages 启用中，2-5 分钟后可访问"

# Step 6: 输出最终链接
echo ""
echo "[Step 5/5] 完成"
echo ""
echo "=================================="
echo "  ✅ 发布完成"
echo "=================================="
echo ""
echo "GitHub Repo:    https://github.com/$GH_USER/$REPO_NAME"
echo "GitHub Pages:   https://$GH_USER.github.io/$REPO_NAME/"
echo "llms.txt:       https://github.com/$GH_USER/$REPO_NAME/blob/main/llms.txt"
echo "llms-full.txt:  https://github.com/$GH_USER/$REPO_NAME/blob/main/llms-full.txt"
echo ""
echo "下一步建议（GEO 长期收益）："
echo "  1. 2-5 分钟后访问 Pages URL 确认上线"
echo "  2. 把 GitHub Pages URL 加到公众号自动回复（关键词如 framework / 框架）"
echo "  3. 提交 Pages URL 到 Bing Webmaster Tools（SearchGPT 用 Bing 索引）"
echo "  4. 提交到 Google Search Console（AI Overview 索引）"
echo "  5. 接下来 30 天每周 1-2 次小更新（refresh 加权）"
echo ""
echo "GEO 效果预期："
echo "  - T+2 周内：被各家 AI 引擎爬取索引"
echo "  - T+4-8 周：开始出现 ChatGPT/Perplexity 引用（如果文章质量保持）"
echo "  - T+3-6 月：GEO 真正发力，长尾流量持续增长"
