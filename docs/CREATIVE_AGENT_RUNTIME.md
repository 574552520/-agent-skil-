# Creative Agent Runtime Guide

这个文档说明：为什么 creative-agent 模板同步过去后，未必能立刻生图/生视频，以及怎样把它真正接成可运行能力。

## 先说结论
creative-agent 本身只是角色模板，不自带真实图像/视频生成后端。
要让它真正运行，需要同时满足：

1. 有图像生成 API 或服务
2. 有视频生成 API 或服务（如果你要生视频）
3. 有可调用的 tool / skill / server route
4. 有结果存储与返回链路
5. 有可公网访问的 URL（如果结果要回到网页或聊天）

---

## 最低运行条件

### A. 图像生成
至少需要：
- `IMAGE_API_KEY`
- `IMAGE_API_BASE_URL`
- 一个明确的调用入口（skill / script / API route）

### B. 视频生成
至少需要：
- `VIDEO_API_KEY`
- `VIDEO_API_BASE_URL`
- 一个明确的调用入口（skill / script / API route）

### C. 返回结果
至少需要：
- 文件存储位置或对象存储
- 一个可返回给前端/聊天的 URL
- 如果是网页，需要公网可访问 URL，而不是 127.0.0.1

---

## 为什么“模板同步了还是不能生图”
因为仓库里同步的是：
- creative-agent 角色
- 能力边界
- 模型/能力模板

但没有自动同步：
- 你的真实 API key
- 你的真实图像服务
- 你的真实视频服务
- 你的站点存储与域名回传配置

所以 creative-agent 可能“会写 prompt”，但不一定“真的能出图”。

---

## 推荐接线方式

### 方案一：接业务后端
适合已有网站或服务：
- creative-agent 输出 prompt
- 调用你的网站后端 `/api/generations` 或等效接口
- 由后端统一处理模型调用、存储、signed URL 返回

### 方案二：接独立 skill
适合 OpenClaw 内部复用：
- 做一个 image-generation skill
- creative-agent 调 skill
- skill 内部再调图像 API / 视频 API

### 方案三：接脚本/网关工具
适合快速实验：
- 使用 shell script / node script
- 接第三方图像与视频接口
- 返回结果 URL 给 creative-agent

---

## 推荐环境变量模板
参考仓库中的：
- `examples/CREATIVE_AGENT_CAPABILITIES.example.md`
- `examples/CREATIVE_AGENT_RUNTIME.env.example`

常见变量：
- `IMAGE_API_KEY`
- `IMAGE_API_BASE_URL`
- `VIDEO_API_KEY`
- `VIDEO_API_BASE_URL`
- `PUBLIC_ASSET_BASE_URL`
- `STORAGE_BUCKET`
- `RESULT_CALLBACK_BASE_URL`

---

## 最小落地步骤
1. 配置图像/视频 API key
2. 选定调用方式：skill / API / script
3. 配置结果存储
4. 确保返回 URL 可被用户访问
5. 在 creative-agent 说明中写清调用约定

---

## 推荐仓库演进方向
如果你想让 creative-agent 真正变成“拿过去就能跑”：
- 下一步应该补一个 image/video generation starter skill
- 再补统一调用接口说明
- 再补一套最小示例实现
