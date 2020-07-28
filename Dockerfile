ARG version=ltsc2016
FROM mcr.microsoft.com/windows/servercore:$version

ENV chocolateyUseWindowsCompression false

RUN powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RUN choco install pandoc -y

WORKDIR /data
ENTRYPOINT ["C:\\Program Files\\Pandoc\\pandoc.exe"]