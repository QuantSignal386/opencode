# OpenCode profile

This is Steven's compact OpenCode profile: Terra is the lead; local Swift Qwen is the constrained worker.

## What is included

- `opencode.jsonc` — global OpenCode configuration and the two agent definitions.
- `Start-OpenCode.ps1` — Windows launcher that reads the local server key from the user environment instead of storing it in this repository.

## Security

Do not commit API keys, `auth.json`, `.env` files, SSH credentials, or provider exports. The local llama.cpp key belongs in the user environment variable `HERMES_CUSTOM_QWEN_TEST_1_API_KEY`.

## Apply on a machine

Copy `opencode.jsonc` to `~/.config/opencode/opencode.jsonc` (Windows: `C:\\Users\\<user>\\.config\\opencode\\opencode.jsonc`). The local model endpoint and model ID are set for Steven's Windows llama.cpp server. On another device, replace the endpoint with the Windows machine's LAN address and preserve the model ID reported by `GET /v1/models`.

OpenCode must be connected to OpenCode Zen and have `gpt-5.6-terra` selected for `terra-lead` to work. Swift uses the existing OpenAI-compatible llama.cpp endpoint.
