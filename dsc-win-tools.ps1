Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable --name=allowGlobalConfirmation  --yes=true
choco install microsoft-edge
choco install firefox
choco install putty.install
choco install winscp.install
choco install 7zip.install
choco install notepadplusplus.install
choco install wireshark
choco install azure-cli
choco install aksctl
choco install dbeaver
(new-object Net.WebClient).DownloadString("https://aka.ms/AzureCT") | Invoke-Expression
Install-LinkPerformance -Force
Install-WindowsFeature -Name Web-Server
