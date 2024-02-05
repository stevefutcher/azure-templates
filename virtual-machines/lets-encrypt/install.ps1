param ([string]$fqdn)

Install-WindowsFeature -name Web-Server -IncludeManagementTools
New-WebBinding -Name 'Default Web Site' -IPAddress '*' -Port 80 -HostHeader $fqdn
New-WebBinding -Name 'Default Web Site' -IPAddress '*' -Port 443 -HostHeader $fqdn -Protocol https

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install win-acme -y

Start-Process C:\tool\win-acme\wacs -ArgumentList "--source iis --siteid s --accepttos --emailaddress someone@example.com"
$binding = Get-WebBinding -Name 'Default Web Site' -Protocol https
$cert = Get-ChildItem cert:\LocalMachine\WebHosting | Select-Object -First 1
$binding.AddSslCertificate($cert.Thumbprint, 'WebHosting')
