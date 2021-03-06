﻿$Title = "Dynamically Expanding Disks"
$Header ="Dynamically Expanding Disks"
$Comments = "Virtual Disks of type 'DynamicallyExpanding'"
$Display = "Table"
$Author = "Jan Egil Ring"
$PluginVersion = 1.0
$PluginCategory = "SC VMM"

switch -wildcard ($VMMServer.ProductVersion) 
    { 
        "2.*" {foreach ($vm in $vms) {Get-VirtualHardDisk -vm $vm | Where-Object {$_.VHDType -eq "DynamicallyExpanding"} | Select-Object @{Name="VM";Expression={$vm.name}},Name,VMHost,location,@{Name="Size (GB)";Expression={"{0:N0}" -f ($_.size / 1gb)}},@{Name="Maximumsize (GB)";Expression={"{0:N0}" -f ($_.maximumsize / 1gb)}}}} 
        "3.*" {foreach ($vm in $vms) {Get-SCVirtualHardDisk -vm $vm | Where-Object {$_.VHDType -eq "DynamicallyExpanding"} | Select-Object @{Name="VM";Expression={$vm.name}},Name,VMHost,location,@{Name="Size (GB)";Expression={"{0:N0}" -f ($_.size / 1gb)}},@{Name="Maximumsize (GB)";Expression={"{0:N0}" -f ($_.maximumsize / 1gb)}}}} 
        default {break}
    }
