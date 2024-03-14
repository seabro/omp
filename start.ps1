<#
.NOTES
    Author         : seabro @seabro
    Runspace Author: @DeveloperDurp
    Version        : 1
#>


if (Get-Command oh-my-posh -errorAction SilentlyContinue) {
    
}
else {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
    $curUser = ";C:\Users\" + $env:Username + "\AppData\Local\Programs\oh-my-posh\bin"
    $env:Path += $curUser
}

oh-my-posh font install --user
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/seabro/omp/main/customTheme.omp.json' | Invoke-Expression
Add-Content -Path $PROFILE -Value "oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/seabro/omp/main/customTheme.omp.json' | Invoke-Expression"