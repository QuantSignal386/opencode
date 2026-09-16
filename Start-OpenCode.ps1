param(
  [string] $LocalApiKey
)

$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($LocalApiKey)) {
  $LocalApiKey = [Environment]::GetEnvironmentVariable('HERMES_CUSTOM_QWEN_TEST_1_API_KEY', 'User')
}

if ([string]::IsNullOrWhiteSpace($LocalApiKey)) {
  $LocalApiKey = Read-Host 'llama.cpp API key'
}

if ([string]::IsNullOrWhiteSpace($LocalApiKey)) {
  throw 'A llama.cpp API key is required to use the local Swift worker.'
}

try {
  # Kept only in the launcher process; it is never saved to this repository.
  $env:HERMES_CUSTOM_QWEN_TEST_1_API_KEY = $LocalApiKey
  & opencode
}
finally {
  Remove-Item Env:\HERMES_CUSTOM_QWEN_TEST_1_API_KEY -ErrorAction SilentlyContinue
}
