# Antes de executar este script, abra o powershell como admin e execute:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Renomeia a máquina
Rename-Computer X240

# Instala o Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Instala softwares básicos
choco install -y chromium firefox 7zip vlc irfanview 

# Instala softwares dev
choco install -y git python notepadplusplus vscode winmerge sql-server-management-studio

# Instala ferramentas administrativas
choco install -y sysinternals putty winscp curl wget conemu windirstat 

# Instala outros softwares úteis
choco install -y youtube-dl qbittorrent rufus irfanviewplugins cpu-z speccy revo-uninstaller 

# Adiciona %USERPRODILFE%\bin no %PATH%
cmd.exe /c "setx /M PATH=%PATH%;%USERPROFILE%\bin"

# Reinicia a máquina
Restart-Computer