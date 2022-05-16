#Prompts
Import-Module oh-my-posh
Import-Module posh-git
Set-PoshPrompt -Theme paradox

#Icons
Import-Module Terminal-Icons

#PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

#Load prompt configs
oh-my-posh --init --shell pwsh --config ~/.config/powershell/ady.omp.json | Invoke-Expression

#Alias
Set-Alias vim nvim
