$env:EDITOR = "code"
Set-PSReadLineOption -PredictionSource History

if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
  oh-my-posh init pwsh --config "$HOME/.config/ohmyposh/centa.omp.json" | Invoke-Expression
}
