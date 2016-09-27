Function Get-AllInventoryTypes {
    <#
    .SYNOPSIS
        List all inventory types
    .DESCRIPTION
        This function retrieve and list the following inventory types: datacenters, datastores, clusters, hosts, and vms
    .EXAMPLE
        Get-AllInventoryTypes
    .NOTES
        Copyright VMware, Inc. 2010-2013.  All Rights Reserved.
    #>

    "List of all datacenters on inventory service"
    Get-Datacenter | Format-Table -Property Name,Id -AutoSize -Wrap | Out-String

    "List of all Datastore on inventory service:"
    Get-Datastore | Format-Table -Property Name,Id -AutoSize -Wrap | Out-String

    "List of all clusters on inventory service:"
    Get-Cluster | Format-Table -Property Name,Id -AutoSize -Wrap | Out-String

    "List of all hosts on inventory service:"
    Get-VMHost | Format-Table -Property Name,Id -AutoSize -Wrap | Out-String

    "List of all vms on inventory service:"
    Get-VM | Format-Table -Property Name,Id -AutoSize -Wrap | Out-String
}
