# Get-AllInventoryTypes
ReadMe File for Get-AllInventoryTypes Example

Tested on: vSphere 5.5 and later releases

Introduction and Purpose

This sample code shows how to retrieve and list the following inventory types: datacenters, datastores, clusters, hosts, and vms

Running This Sample

Before running this sample, you can make sure you have the right version of PowerClI installed and in your path by running this command:
Get-PowerCLIVersion
You should see version 5.5 or later.

You can run this sample code with a command similar to the following:
.\Get-AllInventoryTypes.ps1 -ServerIP <ip-or-domain-name> -UserLogin <user> -UserPassword <password>
for example:
.\Get-AllInventoryTypes.ps1 -ServerIP 10.20.30.40 -UserLogin 'administrator' -UserPassword 'thePassword'
