# Multi-Agent Template Guide

这个仓库提供的是“多-agent 体系模板”，不是已经运行中的 agent 实例数据库。

## 包含的角色
- `main`：主控与对外输出
- `deep-researcher`：调研与分析
- `code-dev`：开发与调试
- `daily-ops-agent`：固定流程和巡检
- `creative-agent`：创意、生图、生视频能力模板

## 使用方式
1. 复制 `agents/main` 的模板到目标 workspace 根目录
2. 阅读 `agents/*/README.md`，在你的 OpenClaw 体系中为这些角色建立约定
3. 按你的运行环境决定：
   - 用 `sessions_spawn` 对接 ACP 或 subagent
   - 用 skills 给每个角色提供专长
   - 在主 agent 的 AGENTS.md 中引用这些角色分工

## 关键认知
这些文件提供的是：
- 角色分工模板
- 行为约定
- 多 agent 架构说明

它们不会自动创建远程 session、也不会自动注册 gateway 级 agent 实例。
这些部分仍需要在具体运行环境中接线。
