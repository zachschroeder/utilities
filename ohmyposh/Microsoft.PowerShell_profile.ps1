oh-my-posh init pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\zps.omp.json | Invoke-Expression

if ($env:TERM_PROGRAM -eq "vscode") {
  Set-PSReadLineKeyHandler -Chord 'Ctrl+w' -Function BackwardKillWord
}
