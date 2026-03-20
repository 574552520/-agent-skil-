# OpenClaw Agent & Skill Template Pack

这是一个可直接复用的 OpenClaw 模板仓库，用于快速同步：
- 主 agent 行为规则
- agent 风格与人格模板
- 本地工具说明模板
- skills 目录骨架
- 一键安装脚本

## 目录结构

```text
agents/main/
  AGENTS.md
  SOUL.md
  TOOLS.md
skills/
scripts/
examples/
```

## 适合谁
- 想给多个 OpenClaw 实例统一 agent 风格的人
- 想把一套主控 agent 模板分享给别人复用的人
- 想沉淀自己的技能与工作流的人

## 安装方式

### 方式一：直接克隆后安装到当前 workspace

```bash
cd ~/.openclaw/workspace
git clone https://github.com/574552520/-agent-skil-.git shared-pack
bash shared-pack/scripts/install-agent-template.sh
```

### 方式二：只手动复制 agent 配置

```bash
cp shared-pack/agents/main/AGENTS.md ~/.openclaw/workspace/
cp shared-pack/agents/main/SOUL.md ~/.openclaw/workspace/
cp shared-pack/agents/main/TOOLS.md ~/.openclaw/workspace/
```

## 默认会安装什么
- `AGENTS.md`
- `SOUL.md`
- `TOOLS.md`

## 不会覆盖什么
这个模板不会自动写入：
- `MEMORY.md`
- `memory/`
- `.env`
- `USER.md`
- 私钥、密码、token

这些都需要每个使用者自己配置。

## Skill 使用说明
把你自己的可分享 skill 放到 `skills/` 目录，每个 skill 一个文件夹，例如：

```text
skills/
  nginx-domain-cutover/
    SKILL.md
  supabase-recovery/
    SKILL.md
```

## 安全提醒
这是脱敏模板仓库，不应该包含：
- 密钥
- 用户数据
- 真实记忆文件
- 域名私配
- 服务器私有信息

## 推荐做法
- 把这个仓库作为“公共模板仓库”
- 每个龙虾实例各自补本地 `USER.md`、`.env`、记忆文件
- 把通用能力持续沉淀进 `skills/`
