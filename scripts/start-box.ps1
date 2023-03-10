$ProjectRoot = (Split-Path $PSScriptRoot -Parent)

$configuration = (@"
<Configuration>
    <MappedFolders>
        <MappedFolder>
            <HostFolder>{0}</HostFolder>
            <SandboxFolder>C:\shared</SandboxFolder>
            <ReadOnly>false</ReadOnly>
        </MappedFolder>
    </MappedFolders>
    <LogonCommand>
        <Command>powershell.exe -ExecutionPolicy Unrestricted -Command "start powershell {{ -NoExit -File C:\shared\scripts\install-requirements.ps1 }}"</Command>
    </LogonCommand>
</Configuration>
"@ -F $ProjectRoot)

$configuration | Out-File .\box.wsb -Encoding utf8
Start-Process .\box.wsb
