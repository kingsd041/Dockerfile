FROM microsoft/windowsservercore:ltsc2016
RUN powershell -Command \
        Invoke-WebRequest -uri 'https://github.com/PowerShell/Win32-OpenSSH/releases/download/0.0.24.0/OpenSSH-Win64.zip' -OutFile 'C:\Program Files\OpenSSH-Win64.zip'; \
		Expand-Archive -Path 'C:\Program Files\OpenSSH-Win64.zip' -DestinationPath 'C:\Program Files\'
 
WORKDIR 'C:\Program Files\OpenSSH-Win64'

RUN powershell -Command \
        powershell.exe -ExecutionPolicy Bypass -File install-sshd.ps1; \
		.\ssh-keygen.exe -A; \
		powershell.exe -ExecutionPolicy Bypass -Command '. .\FixHostFilePermissions.ps1 -Confirm:$false' ;\
		net user /add rancher; \
		net user rancher WWW.163.com; \
		Set-Service sshd -startupType automatic


