# Get-Command -Module PackageManagement
# Get-PackageSource

Set-ExecutionPolicy RemoteSigned -Force
Get-PackageProvider -Force NuGet
Get-PackageProvider -Force chocolatey
Register-PackageSource -Name nuget.org  -Location https://api.nuget.org/v3/index.json -Trusted -Force -ProviderName NuGet
Register-PackageSource -Name chocolatey -Location http://chocolatey.org/api/v2/       -Trusted -Force -ProviderName Chocolatey

# Install-Package -Confirm:$False -ProviderName chocolatey -Name cmake
# Install-Package -Confirm:$False -ProviderName chocolatey -Name 7zip
# Install-Package -Confirm:$False -ProviderName chocolatey -Name tortoisesvn
# Install-Package -Confirm:$False -ProviderName chocolatey -Name notepadplusplus
# Install-Package -Confirm:$False -ProviderName chocolatey -Name potplayer
# Install-Package -Confirm:$False -ProviderName chocolatey -Name fsviewer
# Install-Package -Confirm:$False -ProviderName chocolatey -Name sqlitebrowser
# Install-Package -Confirm:$False -ProviderName chocolatey -Name filezilla
# Install-Package -Confirm:$False -ProviderName chocolatey -Name googlechrome
# Install-Package -Confirm:$False -ProviderName chocolatey -Name adb
# Install-Package -Confirm:$False -ProviderName chocolatey -Name sqlite
# Install-Package -Confirm:$False -ProviderName chocolatey -Name python
# Install-Package -Confirm:$False -ProviderName chocolatey -Name pycharm
# Install-Package -Confirm:$False -ProviderName chocolatey -Name VisualStudio2017Community
# Install-Package -Confirm:$False -ProviderName chocolatey -Name git
# Install-Package -Confirm:$False -ProviderName chocolatey -Name utorrent
# Install-Package -Confirm:$False -ProviderName chocolatey -Name vmware-horizon-client

$kPathChocoFolder = Get-ChildItem -Path C:\Chocolatey\lib -Filter chocolatey.* -Name -Directory | Out-String
$kPathChocoFolder = ($kPathChocoFolder -split '\n')[0]
$kPathChoco = -join("C:\Chocolatey\lib\", $kPathChocoFolder)

# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y 7zip                             "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y tortoisesvn                      "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y sqlitebrowser                    "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y sqlite                           "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y googlechrome                     "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install -y git                              "
# cmd.exe /c "pushd $kPathChoco\tools\chocolateyInstall & choco.exe install --checksum64 -y utorrent            "
