Import-Module oh-my-posh
Import-Module posh-git

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function prompt {
  $prompt = Write-Prompt "[$(Get-Date -Format 'HH:mm:ss')] " -ForegroundColor ([ConsoleColor]::Green)
  $prompt += & $GitPromptScriptBlock
  $prompt += Write-Prompt "`n"
  if ($prompt) { "$prompt" } else { " " }
}
