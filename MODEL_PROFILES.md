# Model & Capability Profiles

这个文件定义“可同步的 agent 能力参数模板”。

## 说明
这里记录的是：
- 推荐模型
- 推荐推理强度
- 推荐 runtime
- 推荐能力边界
- 推荐的生图/生视频调用约定

这里不存放真实密钥。

---

## main
- role: orchestration
- recommended_model: default high-quality general model
- reasoning: medium
- runtime: main session
- strengths:
  - 需求理解
  - 任务拆分
  - specialist 委派
  - 结果验收
  - 最终输出

## deep-researcher
- role: research
- recommended_model: strong research model
- reasoning: high
- runtime: subagent or dedicated session
- strengths:
  - 外部信息调研
  - 对比分析
  - 证据整理
  - 不确定性标记

## code-dev
- role: engineering
- recommended_model: coding-focused model or ACP runtime
- reasoning: medium/high
- runtime: ACP preferred for real coding work
- strengths:
  - 代码实现
  - 调试
  - 配置修改
  - 验证

## daily-ops-agent
- role: operations
- recommended_model: stable and efficient model
- reasoning: low/medium
- runtime: main or lightweight subagent
- strengths:
  - 固定流程
  - 巡检
  - 周期性任务
  - 汇总状态

## creative-agent
- role: creativity
- recommended_model: strong multimodal / creative generation capable model
- reasoning: medium
- runtime: main or subagent
- strengths:
  - 创意方向发散
  - 图像 prompt 设计
  - 视频创意脚本
  - 品牌表达
  - 视觉概念设计

### creative-agent recommended capability wiring
- image_generation:
  enabled: yes
  requires_user_config: yes
  config_needed:
    - IMAGE_API_KEY
    - IMAGE_API_BASE_URL
    - optional storage / callback settings
- video_generation:
  enabled: yes
  requires_user_config: yes
  config_needed:
    - VIDEO_API_KEY
    - VIDEO_API_BASE_URL
    - optional storage / callback settings

### creative-agent prompt workflow
1. 接收用户创意目标
2. 澄清风格 / 比例 /时长 / 平台 / 受众
3. 输出多个创意方向
4. 产出可直接执行的 prompt 或 storyboard
5. 调用图像/视频生成能力
6. 返回结果并给出可迭代建议
