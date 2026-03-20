---
name: creative-media-starter
description: Starter skill for wiring a creative agent to image generation and video generation backends. Use when setting up or replicating a creative-agent that should directly call image/video generation capabilities, including prompt-to-image, prompt-to-video, API-key-based media backends, result URL handling, and minimal runtime wiring.
---

Provide a minimal, reusable starter for creative media generation.

## Do
- Read `references/runtime.md` when wiring a new environment.
- Read `references/env-vars.md` when preparing environment variables.
- Use `scripts/validate_env.sh` to check whether required variables are present.
- Use `scripts/example_request.json` as the minimal request shape reference.

## Expected outcome
Set up an environment where a creative agent can:
1. accept a creative prompt,
2. send it to an image or video backend,
3. obtain a result URL,
4. return a publicly usable result URL instead of localhost-only addresses.

## Notes
- Do not commit real API keys.
- Replace all example URLs and keys with local private configuration.
- If the result is intended for a web app, ensure the returned asset URL is publicly reachable.
