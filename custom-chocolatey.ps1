Write-Host "$((Get-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\' -Name 'PATH').Path); $((Get-ItemProperty -Path 'HKCU:\Environment' -Name 'PATH').Path)"
Exit 1
$packageName = 'opencover'
$installerType = 'msi'
$silentArgs= ''
$url = 'https://github.com/OpenCover/opencover/releases/download/4.7.922/opencover.4.7.922.msi'
$checkSum = "87EBF6C0172BE019238C615431F916B8905C17632EF55A9796980C777499F94A"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes @(0) -ChecksumType "sha256" -Checksum $checkSum