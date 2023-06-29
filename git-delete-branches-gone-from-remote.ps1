# I put this function into my profile.ps1

function git-delete-branches-gone-from-remote
{
        git fetch -p; git branch -vv | Where-Object{$_ -match 'origin/.*: gone]'} | ForEach-Object { ($_ -split '\s')[2] } | ForEach-Object { git branch -D $_ }
}
