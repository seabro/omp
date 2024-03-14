<#
.NOTES
    Author         : seabro @seabro
    Runspace Author: @DeveloperDurp
    Version        : 1
#>


<#
$progressPreference = 'silentlyContinue'
$latestWingetMsixBundleUri = $(Invoke-RestMethod https://api.github.com/repos/microsoft/winget-cli/releases/latest).assets.browser_download_url | Where-Object {$_.EndsWith(".msixbundle")}
$latestWingetMsixBundle = $latestWingetMsixBundleUri.Split("/")[-1]
Write-Information "Downloading winget to artifacts directory..."
Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile "./$latestWingetMsixBundle"
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage $latestWingetMsixBundle
#>

#Set-ExecutionPolicy Bypass -Scope Process -Force;
#Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

if (Get-Command oh-my-posh -errorAction SilentlyContinue) {
    #oh-my-posh font install --user
    #Write-Host $PROFILE
    #oh-my-posh init pwsh | Invoke-Expression

    Add-Content -Path $PROFILE -Value "oh-my-posh init pwsh | Invoke-Expression"

}
else {
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
    $curUser = ";C:\Users\" + $env:Username + "\AppData\Local\Programs\oh-my-posh\bin"
    $env:Path += $curUser
}

#$curUser = ";C:\Users\" + $env:Username + "\AppData\Local\Programs\oh-my-posh\bin"
#$env:Path += $curUser
