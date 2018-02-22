FROM microsoft/windowsservercore

LABEL Description="Nginx" Vendor="Nginx" Version="1.0.13"
RUN powershell -Command \
        $ErrorActionPreference = 'Stop'; \
        Invoke-WebRequest -Method Get -Uri http://nginx.org/download/nginx-1.9.13.zip -OutFile c:\nginx-1.9.13.zip ; \
        Expand-Archive -Path c:\nginx-1.9.13.zip -DestinationPath c:\ ; \
        Remove-Item c:\nginx-1.9.13.zip -Force
WORKDIR /nginx-1.9.13
ADD run.ps1 'C:\'
ADD nginx.conf 'C:\nginx-1.9.13\conf\'
EXPOSE 443/tcp 80/tcp 81/tcp 82/tcp 83/tcp 84/tcp 85/tcp 86/tcp 87/tcp 88/tcp 89/tcp 90/tcp 91/tcp
ENTRYPOINT ["powershell.exe","-file","/run.ps1"]
CMD ["/nginx-1.9.13/nginx.exe"]
