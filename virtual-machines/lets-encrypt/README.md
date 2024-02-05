---
description: This template allows you to deploy a Windows VM and run a custom PowerShell script to install IIS and obtain a Let's Encrypt Certificate
page_type: sample
products:
- azure
- azure-resource-manager
urlFragment: vm-custom-script-windows
languages:
- json
---
# Install IIS Windows VM with HTTPS


[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fstevefutcher%2Fazure-templates%2Fmain%2Fvirtual-machines%2Flets-encrypt%2Fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fstevefutcher%2Fazure-templates%2Fmain%2Fvirtual-machines%2Flets-encrypt%2azuredeploy.json)

Template allows you to deploy a simple Windows VM with a Network Security group permitting inbound HTTP access and execute a custom PowerShell script using the custom script extension. The PowerShell script installs IIS and Win-Acme then adds an HTTPS certificate to the web server

`Tags: Microsoft.Network/publicIPAddresses, Microsoft.Network/networkSecurityGroups, Microsoft.Network/virtualNetworks, Microsoft.Network/networkInterfaces, Microsoft.Compute/virtualMachines, extensions, CustomScriptExtension`

https://raw.githubusercontent.com/stevefutcher/azure-templates/main/README.md