oh-my-posh init pwsh --config C:\Users\Zach\AppData\Local\Programs\oh-my-posh\themes\zps.omp.json | Invoke-Expression

if ($env:TERM_PROGRAM -eq "vscode") {
  Set-PSReadLineKeyHandler -Chord 'Ctrl+w' -Function BackwardKillWord
}

function git-delete-branches-gone-from-remote
{
	git fetch -p; git branch -vv | Where-Object{$_ -match 'origin/.*: gone]'} | ForEach-Object { ($_ -split '\s')[2] } | ForEach-Object { git branch -D $_ }
}

function search
{
	param (
		[Parameter(Mandatory=$true)]
		[string]$filter
	)

	Get-ChildItem -Path . -Filter *$filter* -Recurse -ErrorAction SilentlyContinue -Force
}
