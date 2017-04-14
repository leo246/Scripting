Function New-HyperV_VM {
 <#
.Synopsis
   Creating Virtual Manchines in Hyper-V.
.DESCRIPTION
   Firstly, verify the name of the virtual switch defined in Hyper-V.  Secondly, verify the path of where the
   VHD/VHDX and VM config files will be saved.
   When running the script, if the hostname already exist on the system, it 
   WILL DELETE THE VM, AND FORCEFULLY DELETE THE VHD/VHDX.

   The script will create the new VM, with 2 CPU cores, a 40GB VHD/VHDX and 4GB RAM, and proceed to mount the
   desired OS ISO.  This can be changed by editing the appropriate variabled.
   Once created, the script will start the new VM, and open the VM Connect console.
.PARAMETER Srv
   Specify the hostname of the newly created VM.
.PARAMETER Gen
   Specify the Generation (either by 1 or 2) of the new VM.
.PARAMETER Network
   Specify the virtual switch name defined in Hyper-V.
.PARAMETER VMLoc
   Specify the path of where the VM and VHD/VHDX files will be saved.
.PARAMETER ISO
   Specify the path of the ISO which will be mounted for the new VM.
.EXAMPLE
   New-HyperV_VM -computername "es1" -gen "2" -switch "external" -vmloc "d:\vhd" -ISO "D:\ISO\SW_DVD5_WIN_ENT_10_1607_64BIT_English_MLF_X21-07102.ISO"


#>   
    [CmdletBinding()]
    Param (
        [Parameter(mandatory=$true,HelpMessage="Enter the VM hostname")]
        [Alias("Computername")]
        $Srv,

        [Parameter(Mandatory=$true,HelpMessage="Enter the required Generation")]
        [Validateset('1','2')]
        $Gen,

        [Parameter(Mandatory=$true,HelpMessage="Enter the HyperV Network switch name")]
        [Alias("Switch")]
        $Network,

        [Parameter(Mandatory=$true,HelpMessage="Enter the location for the VHDX")]
        $VMLoc,

        [Parameter(Mandatory=$true,HelpMessage="Enter the path to the ISO")]
        $ISO
    )

    Begin {
        Write-Verbose "Checking if VM already exist"
        If (Get-Vm -Name $Srv -ErrorAction SilentlyContinue) {
            Write-Warning "Existing VM detected.  Deleting VM and VHDX!"
            Stop-VM $Srv -force -turnoff -ea Continue
            Remove-VM $Srv -force 
            Remove-Item ($VMLOC + '\' + $Srv) -Recurse -force
            Write-Warning "VM deleted, exiting script"
            exit
        }

        $SRAM= 4GB
        $SrvVHD= 40GB
        $CPU= 2
    }
    Process {
        If ($Gen -eq "1"){
            Write-Verbose "Generation 1 specified, Creating VM."
            new-vm $Srv -path $VMLoc -Generation $Gen
            new-vhd -path "$VMLoc\$Srv\$Srv.vhdx" -Dynamic -Sizebytes (Invoke-expression $SrvVHD)
            Add-VMHardDiskDrive -VMname $Srv -path "$VMLoc\$Srv\$Srv.vhdx"
        
            get-vm $Srv | set-vmmemory -DynamicMemoryEnabled $true -MinimumBytes (Invoke-expression $SRAM) -StartupBytes (Invoke-expression $SRAM) -MaximumBytes (Invoke-expression $SRAM)
            get-vm $Srv | Set-VMProcessor -count $CPU -CompatibilityForMigrationEnabled $true
            get-vm $Srv | Get-VMNetworkAdapter | Remove-VMNetworkAdapter
            get-vm $Srv | Add-VMNetworkAdapter -IsLegacy $true
            get-vm $Srv | Get-VMNetworkAdapter | Connect-VMNetworkAdapter -Switchname $Network
            get-vm $Srv | Add-VMDvdDrive
            Set-VMDvdDrive -VMName $Srv -Path $ISO

            Set-VMBios $Srv -StartupOrder @("CD", "IDE", "LegacyNetworkAdapter", "Floppy")
        }

        Elseif ($Gen -eq "2"){
            Write-Verbose "Generation 2 specified, Creating VM."
            new-vm $Srv -path $VMLoc -Generation $Gen
            new-vhd -path "$VMLoc\$Srv\$Srv.vhdx" -Dynamic -Sizebytes (Invoke-expression $SrvVHD)
            Add-VMHardDiskDrive -VMname $Srv -path "$VMLoc\$Srv\$Srv.vhdx"
        
            get-vm $Srv | set-vmmemory -DynamicMemoryEnabled $true -MinimumBytes (Invoke-expression $SRAM) -StartupBytes (Invoke-expression $SRAM) -MaximumBytes (Invoke-expression $SRAM)
            get-vm $Srv | Set-VMProcessor -count $CPU -CompatibilityForMigrationEnabled $true
            get-vm $Srv | Get-VMNetworkAdapter | Connect-VMNetworkAdapter -Switchname $Network
            Get-vm $Srv | Add-VMDvdDrive
            Set-VMDvdDrive -VMName $Srv -Path $ISO
            
            $hdd = Get-VMHardDiskDrive $Srv
            $nic = Get-VMNetworkAdapter $Srv
            $dvd = Get-VMDvdDrive $Srv
            $bootorder = @()
            $bootorder = $bootorder + $dvd + $hdd + $nic 
            Set-VMFirmware $srv -BootOrder $bootorder -EnableSecureBoot off
        }
    }
    End {
        start-vm $Srv
        vmconnect.exe localhost $Srv
    }
}
