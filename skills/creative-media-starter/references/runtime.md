# Runtime Wiring

## Goal
Make a creative-agent actually usable for image/video generation, not just descriptively capable.

## Minimum wiring
1. A backend endpoint or callable script for image generation
2. A backend endpoint or callable script for video generation
3. API keys in private env files
4. Public asset base URL for returning results
5. Storage or file hosting that can return public or signed URLs

## Recommended flow
1. creative-agent receives user intent
2. creative-agent expands it into structured prompt fields
3. backend call is made to image/video provider
4. result file is stored
5. public/signed URL is returned to the user

## Common failure modes
- API key missing
- backend URL missing
- result file stored locally but URL returned as 127.0.0.1
- no public asset host
- no storage/signing layer
