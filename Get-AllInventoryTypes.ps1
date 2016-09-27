<#
.SYNOPSIS
   Connect to Server and list all inventory types
.DESCRIPTION
   This script perform three major actions:
   1. Connect to server
   2. Retrieve and list all the inventory types
   3. Disconnect from server
.PARAMETER ServerIP
   Specifies the IP address or the DNS name of the vSphere server to which you want to connect
.PARAMETER UserLogin
   Specifies the user name you want to use for authenticating with the server
.PARAMETER UserPassword
   Specifies the password you want to use for authenticating with the server
.PARAMETER Protocol
   Specifies the internet protocol you want to use for the connection (usually 'https' or 'http')
.EXAMPLE
   .\Get-AllInventoryTypes.ps1 -ServerIP 10.20.30.40 -UserLogin 'administrator' -UserPassword 'thePassword'
.EXAMPLE
   .\Get-AllInventoryTypes.ps1 -ServerIP 10.20.30.40 -UserLogin 'administrator' -UserPassword 'thePassword' -Protocol 'https'
.LINK
    ** TBD: https://pa-dptest-vm.eng.vmware.com:8443/samples/
.NOTES
 Copyright VMware, Inc. 2010-2013.  All Rights Reserved.
#>

Param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$ServerIP,

    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$UserLogin,

    [Parameter(Mandatory=$true)]
    [string]$UserPassword,

    [Parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [string]$Protocol= 'https'
)

"Connect to Server [$ServerIP]"
$Server = Connect-VIServer -Server $ServerIP -Protocol $Protocol -User $UserLogin -Password $UserPassword

"Import module Get-AllInventoryTypes"
Import-Module ..\Get-AllInventoryTypes

# Call function to list all inventory types
Get-AllInventoryTypes

"Remove module Get-AllInventoryTypes"
Remove-Module -Name Get-AllInventoryTypes

"Disconnect to [$ServerIP]"
Disconnect-VIServer -Server $Server -Confirm:$false
