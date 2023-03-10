# Install tools with chocolatey.

Set-ExecutionPolicy Bypass -Scope Process -Force

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco upgrade chocolatey -y

$packages = @(
    "powershell-core",
    "googlechrome",
    "android-sdk",
    "androidstudio",
#    "android-ndk",
    "flutter"
)

foreach ($package in $packages) {
    choco install $package -y
    refreshenv
}
