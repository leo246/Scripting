#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 9835288d-3b42-45d3-9bb6-a7510c8c2012
# Source File: My_Project2.pfproj
#------------------------------------------------------------------------
#region Project Recovery Data (DO NOT MODIFY)
<#RecoveryData:
/QQAAB+LCAAAAAAABACNlE1P4zAQhu8r8R+i3EPalLJFSiPtpoB6KKC24lq5zgS8OLblOED+PQ5x
UuejaG+eZ76cmdcJt4D5O8hyhRSKLn45Tvgk+T/A6tvQ5jPInHAWTUO/ORrPHaGwXkU3i9k8WCwS
b3a8CryreTLzbo7Haw/9nk8neIGDyTQIfRNsUk2PfSkgmoS+bVrFc2MY09lCChIYhgeUwdJ1nb8F
ocnSnbjRTiGpCnEp0rzu9XNqjCj1NoiwOy6zg0hTu1bDdbH0v4vdU35E9CDyqVXKiXmWIZbcfipg
1eiW7l4W4EZ1dH6pwzsdaqP+7nYsZi0Iv6EXkE3kPTCQiJ6uZgKqO52gP0oNXON2mVZol24QIynk
KpaAlNHBgLXRcZErnjV+q/Y5xxNFKtWzjjxdtzVa97Zgu/2fSiLmdErkHyB3r0Bpo0otsiFsxtqd
VrgDXEiiSsfvy7yz6QH0R6neU1JgNYw+5zC8v6oxuoIcSyK6Y/ZHqRabQKy0p94nMRelJC+vndUM
2ZopkAzR3gXH8aNOJppWo+klnHdVDwNY9xo26f5sWm3W6h+23JQH81gC/WqFPo421zKyf3df0WVp
1f0EAAA=#>
#endregion
#========================================================================
# Code Generated By: SAPIEN Technologies, Inc., PowerShell Studio 2012 v3.1.26
# Generated On: 19/03/2017 22:51
# Generated By: 
#========================================================================


#region Source: Startup.pfs
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
CwcAAB+LCAAAAAAABAC9VW1vmzAQ/j5p/4EfkGEYIWklByki6lRN26JSbfvqOEdq1djINo3493MY
r4G0VT9EfOGee3nOZ98dfgAqX0CVG2JI9PmT4+Bfih2YIPyOcfhJMogSQ5QpcjdPNUYjbeVzkn6D
0kyKyHe/YtQHKou11pDtOANdyR1SRkmpDWTuDyLIATIQxl0XRmbEWOeZU0dZ+a53+mZOXHBTKFgJ
KIwifOZsCxuXfofyUT6DWAX+Lg1uwgXZB4s5BCFGLdM0c8cxfy/HbrkkIQ0X/m0wB+/m9k0O9w8T
e3nU7p1Umb4K40aRIxOHj3B5QRqmy9T396FHAvIKV6apVJztrnMi+0avQvQ349c5EFNAjVRlAuqF
UfjQw3j9slqx6Ty8JfTZNppqkvoGAmzgWuwM2u6uQDSJ1uA9rdt8YDpEbXuzFLSJFVSdHfkYjbDW
Oi60HQGNvhf7kmLLiUltb0VfbNxWaNUPhUge15GHUf3XOcojqOQJOG/mlR1fY7AuFhpWCydAC8VM
6aAGGTqczcbuHJPoVsl9Qc3Y+pKixs+vagrdgKaK5cMyo0k0lllORNmv+jkSy7y0m+BpcDVj7F4Y
UHZbnCU4DU+ulv8Ol1U2s9PKGObaQzAarCHUe/32LfSX3z/Ct23ECwcAAA==#>
#endregion
#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load("System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
[void][Reflection.Assembly]::Load("System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
[void][Reflection.Assembly]::Load("System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")
[void][Reflection.Assembly]::Load("mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
[void][Reflection.Assembly]::Load("System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
[void][Reflection.Assembly]::Load("System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
[void][Reflection.Assembly]::Load("System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")
#endregion Import Assemblies

#Define a Param block to use custom parameters in the project
#Param ($CustomParameter)

function Main {
	Param ([String]$Commandline)
	#Note: This function starts the application
	#Note: $Commandline contains the complete argument string passed to the packager 
	#Note: To get the script directory in the Packager use: Split-Path $hostinvocation.MyCommand.path
	#Note: To get the console output in the Packager (Forms Mode) use: $ConsoleOutput (Type: System.Collections.ArrayList)
	#TODO: Initialize and add Function calls to forms
	
	if((Call-MainForm_pff) -eq "OK")
	{
		
	}
	
	$global:ExitCode = 0 #Set the exit code for the Packager
}







#endregion Source: Startup.pfs

#region Source: MainForm.pff
function Call-MainForm_pff
{
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
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#>
#endregion
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load("System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
	[void][reflection.assembly]::Load("System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
	[void][reflection.assembly]::Load("System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")
	[void][reflection.assembly]::Load("mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
	[void][reflection.assembly]::Load("System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
	[void][reflection.assembly]::Load("System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089")
	[void][reflection.assembly]::Load("System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a")
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$MainForm = New-Object 'System.Windows.Forms.Form'
	$groupbox3 = New-Object 'System.Windows.Forms.GroupBox'
	$buttonKillProcess = New-Object 'System.Windows.Forms.Button'
	$buttonProcesses = New-Object 'System.Windows.Forms.Button'
	$groupbox2 = New-Object 'System.Windows.Forms.GroupBox'
	$buttonStartService = New-Object 'System.Windows.Forms.Button'
	$buttonRestartService = New-Object 'System.Windows.Forms.Button'
	$buttonServices = New-Object 'System.Windows.Forms.Button'
	$buttonStopService = New-Object 'System.Windows.Forms.Button'
	$datagridview1 = New-Object 'System.Windows.Forms.DataGridView'
	$buttonEXIT = New-Object 'System.Windows.Forms.Button'
	$statusbar1 = New-Object 'System.Windows.Forms.StatusBar'
	$labelComputerName = New-Object 'System.Windows.Forms.Label'
	$Computername = New-Object 'System.Windows.Forms.TextBox'
	$groupbox1 = New-Object 'System.Windows.Forms.GroupBox'
	$buttonDisks = New-Object 'System.Windows.Forms.Button'
	$buttonOperatingSystem = New-Object 'System.Windows.Forms.Button'
	$buttonComputerSystem = New-Object 'System.Windows.Forms.Button'
	$buttonNetworking = New-Object 'System.Windows.Forms.Button'
	$statusbarpanel1 = New-Object 'System.Windows.Forms.StatusBarPanel'
	$statusbarpanel2 = New-Object 'System.Windows.Forms.StatusBarPanel'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$OnLoadFormEvent={
	#TODO: Initialize Form Controls here
	
	}
	
	#region Control Helper Functions
	function ConvertTo-DataTable {
		<#
			.SYNOPSIS
				Converts objects into a DataTable.
		
			.DESCRIPTION
				Converts objects into a DataTable, which are used for DataBinding.
		
			.PARAMETER  InputObject
				The input to convert into a DataTable.
		
			.PARAMETER  Table
				The DataTable you wish to load the input into.
		
			.PARAMETER RetainColumns
				This switch tells the function to keep the DataTable's existing columns.
			
			.PARAMETER FilterWMIProperties
				This switch removes WMI properties that start with an underline.
		
			.EXAMPLE
				$DataTable = ConvertTo-DataTable -InputObject (Get-Process)
		#>
		[OutputType([System.Data.DataTable])]
		param(
		[ValidateNotNull()]
		$InputObject, 
		[ValidateNotNull()]
		[System.Data.DataTable]$Table,
		[switch]$RetainColumns,
		[switch]$FilterWMIProperties)
		
		if($Table -eq $null)
		{
			$Table = New-Object System.Data.DataTable
		}
	
		if($InputObject-is [System.Data.DataTable])
		{
			$Table = $InputObject
		}
		else
		{
			if(-not $RetainColumns -or $Table.Columns.Count -eq 0)
			{
				#Clear out the Table Contents
				$Table.Clear()
	
				if($InputObject -eq $null){ return } #Empty Data
				
				$object = $null
				#find the first non null value
				foreach($item in $InputObject)
				{
					if($item -ne $null)
					{
						$object = $item
						break	
					}
				}
	
				if($object -eq $null) { return } #All null then empty
				
				#Get all the properties in order to create the columns
				foreach ($prop in $object.PSObject.Get_Properties())
				{
					if(-not $FilterWMIProperties -or -not $prop.Name.StartsWith('__'))#filter out WMI properties
					{
						#Get the type from the Definition string
						$type = $null
						
						if($prop.Value -ne $null)
						{
							try{ $type = $prop.Value.GetType() } catch {}
						}
	
						if($type -ne $null) # -and [System.Type]::GetTypeCode($type) -ne 'Object')
						{
			      			[void]$table.Columns.Add($prop.Name, $type) 
						}
						else #Type info not found
						{ 
							[void]$table.Columns.Add($prop.Name) 	
						}
					}
			    }
				
				if($object -is [System.Data.DataRow])
				{
					foreach($item in $InputObject)
					{	
						$Table.Rows.Add($item)
					}
					return  @(,$Table)
				}
			}
			else
			{
				$Table.Rows.Clear()	
			}
			
			foreach($item in $InputObject)
			{		
				$row = $table.NewRow()
				
				if($item)
				{
					foreach ($prop in $item.PSObject.Get_Properties())
					{
						if($table.Columns.Contains($prop.Name))
						{
							$row.Item($prop.Name) = $prop.Value
						}
					}
				}
				[void]$table.Rows.Add($row)
			}
		}
	
		return @(,$Table)	
	}
	
	function Load-DataGridView {
		<#
		.SYNOPSIS
			This functions helps you load items into a DataGridView.
	
		.DESCRIPTION
			Use this function to dynamically load items into the DataGridView control.
	
		.PARAMETER  DataGridView
			The ComboBox control you want to add items to.
	
		.PARAMETER  Item
			The object or objects you wish to load into the ComboBox's items collection.
		
		.PARAMETER  DataMember
			Sets the name of the list or table in the data source for which the DataGridView is displaying data.
	
		#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.DataGridView]$DataGridView,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Item,
		    [Parameter(Mandatory=$false)]
			[string]$DataMember
		)
		$DataGridView.SuspendLayout()
		$DataGridView.DataMember = $DataMember
		
		if ($Item -is [System.ComponentModel.IListSource]`
		-or $Item -is [System.ComponentModel.IBindingList] -or $Item -is [System.ComponentModel.IBindingListView] )
		{
			$DataGridView.DataSource = $Item
		}
		else
		{
			$array = New-Object System.Collections.ArrayList
			
			if ($Item -is [System.Collections.IList])
			{
				$array.AddRange($Item)
			}
			else
			{	
				$array.Add($Item)	
			}
			$DataGridView.DataSource = $array
		}
		
		$DataGridView.ResumeLayout()
	}
	
	function Load-ListBox {
	<#
		.SYNOPSIS
			This functions helps you load items into a ListBox or CheckedListBox.
	
		.DESCRIPTION
			Use this function to dynamically load items into the ListBox control.
	
		.PARAMETER  ListBox
			The ListBox control you want to add items to.
	
		.PARAMETER  Items
			The object or objects you wish to load into the ListBox's Items collection.
	
		.PARAMETER  DisplayMember
			Indicates the property to display for the items in this control.
		
		.PARAMETER  Append
			Adds the item(s) to the ListBox without clearing the Items collection.
		
		.EXAMPLE
			Load-ListBox $ListBox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Load-ListBox $listBox1 "Red" -Append
			Load-ListBox $listBox1 "White" -Append
			Load-ListBox $listBox1 "Blue" -Append
		
		.EXAMPLE
			Load-ListBox $listBox1 (Get-Process) "ProcessName"
	#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.ListBox]$ListBox,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Items,
		    [Parameter(Mandatory=$false)]
			[string]$DisplayMember,
			[switch]$Append
		)
		
		if(-not $Append)
		{
			$listBox.Items.Clear()	
		}
		
		if($Items -is [System.Windows.Forms.ListBox+ObjectCollection])
		{
			$listBox.Items.AddRange($Items)
		}
		elseif ($Items -is [Array])
		{
			$listBox.BeginUpdate()
			foreach($obj in $Items)
			{
				$listBox.Items.Add($obj)
			}
			$listBox.EndUpdate()
		}
		else
		{
			$listBox.Items.Add($Items)	
		}
	
		$listBox.DisplayMember = $DisplayMember	
	}
	
	function Load-ComboBox {
	<#
		.SYNOPSIS
			This functions helps you load items into a ComboBox.
	
		.DESCRIPTION
			Use this function to dynamically load items into the ComboBox control.
	
		.PARAMETER  ComboBox
			The ComboBox control you want to add items to.
	
		.PARAMETER  Items
			The object or objects you wish to load into the ComboBox's Items collection.
	
		.PARAMETER  DisplayMember
			Indicates the property to display for the items in this control.
		
		.PARAMETER  Append
			Adds the item(s) to the ComboBox without clearing the Items collection.
		
		.EXAMPLE
			Load-ComboBox $combobox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Load-ComboBox $combobox1 "Red" -Append
			Load-ComboBox $combobox1 "White" -Append
			Load-ComboBox $combobox1 "Blue" -Append
		
		.EXAMPLE
			Load-ComboBox $combobox1 (Get-Process) "ProcessName"
	#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.ComboBox]$ComboBox,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Items,
		    [Parameter(Mandatory=$false)]
			[string]$DisplayMember,
			[switch]$Append
		)
		
		if(-not $Append)
		{
			$ComboBox.Items.Clear()	
		}
		
		if($Items -is [Object[]])
		{
			$ComboBox.Items.AddRange($Items)
		}
		elseif ($Items -is [Array])
		{
			$ComboBox.BeginUpdate()
			foreach($obj in $Items)
			{
				$ComboBox.Items.Add($obj)	
			}
			$ComboBox.EndUpdate()
		}
		else
		{
			$ComboBox.Items.Add($Items)	
		}
	
		$ComboBox.DisplayMember = $DisplayMember	
	}
	#endregion
	
	# Functions
	Function Get-ServiceInfo {
		[Cmdletbinding()]
		Param(
			[Parameter(Mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Services..."
			$array = New-Object System.Collections.ArrayList
			$Script:Services = Get-WmiObject Win32_Service -ComputerName $Computername -ErrorAction 'Stop' | Select-Object Name,DisplayName,State
			foreach ($Service in $script:Services) {
				$array.Add($Service)
			}
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message
		}
	}
	
	function Get-ProcessInfo {
		[Cmdletbinding()]
		Param(
			[Parameter(Mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Processes..."
			$array = New-Object System.Collections.ArrayList
			$Script:Processes = Get-WmiObject Win32_Process -ComputerName $Computername -ErrorAction 'Stop' | Select-Object Name,ProcessID,Path | sort Name
			foreach ($Process in $script:Processes) {
				$array.Add($Process)
			}
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	function Get-NetworkInfo {
		[Cmdletbinding()]
		Param(
			[Parameter(Mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Network Info..."
			$Network =  Get-WmiObject Win32_NetworkAdapterConfiguration -ComputerName $Computername -ErrorAction 'Stop' | where {$_.IPEnabled -eq $true}  
			$Nic = Get-NetAdapter | where {$_.interfaceindex -match $Network.interfaceindex}
			$IP = $Network.IPaddress
			$hash = @{
				IPAddress      		= [string] $IP
				MacAddress     		= $Network.Macaddress
				DHCPEnabled    		= $Network.DHCPEnabled
				DefaultGateway		= [string]$Network.DefaultIPGateway
				SubnetMask 			= [string]$Network.IPSubnet
				Adaptor 			= $NIC.Name
	            Speed               = $Nic.Linkspeed
				Status              = $Nic.Status
	 		}
			#$NIC = Get-Wmiobject Win32_NetworkAdapter -ComputerName $Computername.Text  #| where {$_.MACAddress -match $($Network.Macaddress)}
			
			$array = New-Object System.Collections.ArrayList	
			$array.AddRange((($hash.GetEnumerator() | select Name,Value | sort name) ))
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	function Get-CompInfo {
		[Cmdletbinding()]
		Param(
			[Parameter(Mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Computer System Info..."
			$CS = Get-WmiObject win32_computersystem -ComputerName $Computername -ErrorAction 'Stop' 
			$VGA = Get-WmiObject Win32_DisplayControllerConfiguration -ComputerName $Computername -ErrorAction 'Stop' 
			$Bios = Get-WmiObject Win32_BIOS -ComputerName $Computername -ErrorAction 'Stop' 
			$CPU = Get-Wmiobject Win32_Processor -ComputerName $Computername -ErrorAction 'Stop' 
			#$DiskWinSAT = Get-Wmiobject -Query 'Select DiskScore from Win32_WinSAT' -ComputerName $Computername -ErrorAction 'Stop' 
			#$CPUWinSAT = Get-Wmiobject -Query 'Select CPUScore from Win32_WinSAT' -ComputerName $Computername -ErrorAction 'Stop' 
			#$GPUWinSAT = Get-Wmiobject -Query 'Select GraphicsScore from Win32_WinSAT' -ComputerName $Computername -ErrorAction 'Stop' 
			#$MemWinSAT = Get-Wmiobject -Query 'Select MemoryScore from Win32_WinSAT' -ComputerName $Computername -ErrorAction 'Stop' 
				$hash = @{
				    
					Hostname              = $CS.DNSHostName
					Domain                = $CS.domain
				    Manufacturer          = $CS.Manufacturer
				    Model                 = $CS.model
				    Chassis               = $CS.ChassisSKUNumber
				    SystemType            = $CS.SystemType
				    PhysicalMemory        = "{0:N2}" -f ($CS.TotalPhysicalMemory/1GB)
					DisplayCard 		  = $VGA.Name
					DisplayResolution 	  = $VGA.VideoMode
					SerialNumber 		  = $Bios.SerialNumber
					BIOSVersion 		  = $Bios.SMBIOSBIOSVersion
					CPU					  = $CPU.Name
					LogicalProcessors     = $CPU.NumberOfLogicalProcessors
					ProcessorID    	      = $CPU.ProcessorId
					#"WinSAT - HDD score"  = $DiskWinSAT.DiskScore
					#"WinSAT - CPU score"  = $CPUWinSAT.CPUScore
					#"WinSAT - GPU score"  = $GPUWinSAT.GraphicsScore
					#"WinSAT - RAM score"  = $MemWinSAT.MemoryScore
					}
			$array = New-Object System.Collections.ArrayList
			$array.AddRange((($hash.GetEnumerator() | select Name,Value | sort name) ))
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message
		}
	}
	
	function Get-OSInfo {
		[CmdletBinding()]
		Param(
			[parameter(mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Operating System Info..."
			$OS = Get-WmiObject Win32_OperatingSystem -ComputerName $Computername -ErrorAction 'Stop' 
			$hash = @{
				OperatingSystem           = $OS.Caption
				BuildNumber               = $OS.Buildnumber
				InstallDate               = [Management.ManagementDateTimeConverter]::ToDateTime($OS.InstallDate)
				LastBootUpTime            = [Management.ManagementDateTimeConverter]::ToDateTime($OS.LastBootUpTime)
				OSArchitecture            = $OS.OSArchitecture
				SystemDrive				  = $OS.SystemDrive
			}
			$array = New-Object System.Collections.ArrayList
			$array.AddRange((($hash.GetEnumerator() | select Name,Value | sort name) ))
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message
		}
	}
	
	function Get-DiskInfo {
		[cmdletbinding()]
		Param(
			[parameter(mandatory=$true)]
			[string] $Computername
		)
		Try {
			$statusbarpanel2.text = "Getting Disk Info..."
			$disks = Get-WmiObject Win32_LogicalDisk -ComputerName $Computername -Filter "drivetype = 3" -ErrorAction 'Stop' 
			Foreach ($disk in $disks) {
				#$hash = @{}
				$FreeSpace = "{0:N2}" -f($disk.freespace/1GB)
				$size = "{0:N2}" -f($disk.size/1GB)
				$Used = $size - $FreeSpace
				$hash = [ordered] @{
					DriveLetter			= $Disk.name
					VolName 			= $Disk.VolumeName
					Size 				= $size
					Freespace			= $freespace
					Used				= $Used
					Compressed 			= [string] $disk.Compressed
					Description			= $disk.Description
					#""					= "####################"
				}
				$array = New-Object System.Collections.ArrayList
				$array.AddRange((($hash.GetEnumerator() | select Name,Value | sort name) ))
			}
			
			#$array = New-Object System.Collections.ArrayList
			#$array.AddRange((($hash.GetEnumerator() | select Name,Value | sort name) ))
			$datagridview1.DataSource = $array
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message
		}
	}
	
	# Buttons
	$buttonServices_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-ServiceInfo -computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error 
		}
	}
	
	$buttonStartService_Click={
		#TODO: Place custom script here
		Try {
			$SelectedRow = $datagridview1.CurrentCell.RowIndex
			If (($servid = $script:Services[$SelectedRow].Name)) {
				$statusbarpanel2.Text = "Starting Service..."
				(Get-WmiObject -class Win32_service -ComputerName $Computername.Text -ErrorAction 'Stop' | where {$_.name -match $servid}).startservice()
			}
			Start-Sleep -Seconds 2
			$datagridview1.Rows.Clear
			Get-ServiceInfo -ComputerName $Computername.Text
			$statusbarpanel2.Text = "Ready"
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	$buttonStopService_Click={
		#TODO: Place custom script here
		Try {
			$SelectedRow = $datagridview1.CurrentCell.RowIndex
			If (($servid = $script:Services[$SelectedRow].Name)) {
				$statusbarpanel2.Text = "Stopping Service..."
				(Get-WmiObject -class Win32_service -ComputerName $Computername.Text -ErrorAction 'Stop' | where {$_.name -match $servid}).stopservice()
			}
			Start-Sleep -Seconds 2
			$datagridview1.Rows.Clear
			Get-ServiceInfo -ComputerName $Computername.Text
			$statusbarpanel2.Text = "Ready"
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	$buttonRestartService_Click={
		#TODO: Place custom script here
		Try {
			$SelectedRow = $datagridview1.CurrentCell.RowIndex
			If (($servid = $script:Services[$SelectedRow].Name)) {
				$statusbarpanel2.Text = "Stopping Service..."
				(Get-WmiObject -class Win32_service -ComputerName $Computername.Text -ErrorAction 'Stop' | where {$_.name -match $servid}).stopservice()
				Start-Sleep -Seconds 2
				$statusbarpanel2.Text = "Starting Service..."
				(Get-WmiObject -class Win32_service -ComputerName $Computername.Text -ErrorAction 'Stop' | where {$_.name -match $servid}).startservice()
			}
			Start-Sleep -Seconds 2
			$datagridview1.Rows.Clear
			Get-ServiceInfo -ComputerName $Computername.Text
			$statusbarpanel2.Text = "Ready"
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	$buttonProcesses_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-ProcessInfo -Computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error
		}
	}
	
	$buttonKillProcess_Click={
		#TODO: Place custom script here
		Try {
			$SelectedRow = $datagridview1.currentcell.RowIndex
			If (($procid = $Script:Processes[$SelectedRow].ProcessId)){
				$statusbarpanel2.Text = "Stopping Process..."
				(Get-WmiObject -class Win32_Process -Computername $ComputerName.Text | where { $_.ProcessID -match $procid}).terminate()
			}
			$datagridview1.Rows.clear
			Start-Sleep -Seconds 2
			Get-ProcessInfo -ComputerName $Computername.Text
			$statusbarpanel2.Text = "Ready"
		}
		Catch {
			$statusbarpanel2.Text = $_.Exception.Message	
		}
	}
	
	$buttonNetworking_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-NetworkInfo -Computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error
		}
	}
	
	$buttonComputerSystem_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-CompInfo -Computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error
		}
	}
	
	$buttonOperatingSystem_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-OSInfo -Computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}	
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error
		}
	}
	
	$buttonDisks_Click={
		#TODO: Place custom script here
		Try {
			If (Test-Connection -ComputerName $Computername.Text -Count 1 -ErrorAction 'Stop') {
				Get-DiskInfo -Computername $Computername.Text
				$statusbarpanel2.Text = "Ready"
			}
		}
		Catch {
			$error = "The computer, " + $Computername.Text + " could not be reached!"
			$statusbarpanel2.Text = $error
		}
	}
		# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$MainForm.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:MainForm_Computername = $Computername.Text
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonKillProcess.remove_Click($buttonKillProcess_Click)
			$buttonProcesses.remove_Click($buttonProcesses_Click)
			$buttonStartService.remove_Click($buttonStartService_Click)
			$buttonRestartService.remove_Click($buttonRestartService_Click)
			$buttonServices.remove_Click($buttonServices_Click)
			$buttonStopService.remove_Click($buttonStopService_Click)
			$buttonDisks.remove_Click($buttonDisks_Click)
			$buttonOperatingSystem.remove_Click($buttonOperatingSystem_Click)
			$buttonComputerSystem.remove_Click($buttonComputerSystem_Click)
			$buttonNetworking.remove_Click($buttonNetworking_Click)
			$MainForm.remove_Load($OnLoadFormEvent)
			$MainForm.remove_Load($Form_StateCorrection_Load)
			$MainForm.remove_Closing($Form_StoreValues_Closing)
			$MainForm.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	#
	# MainForm
	#
	$MainForm.Controls.Add($groupbox3)
	$MainForm.Controls.Add($groupbox2)
	$MainForm.Controls.Add($datagridview1)
	$MainForm.Controls.Add($buttonEXIT)
	$MainForm.Controls.Add($statusbar1)
	$MainForm.Controls.Add($labelComputerName)
	$MainForm.Controls.Add($Computername)
	$MainForm.Controls.Add($groupbox1)
	$MainForm.BackColor = 'Desktop'
	$MainForm.CancelButton = $buttonEXIT
	$MainForm.ClientSize = '1117, 508'
	$MainForm.FormBorderStyle = 'FixedSingle'
	$MainForm.MaximizeBox = $False
	$MainForm.MinimizeBox = $False
	$MainForm.Name = "MainForm"
	$MainForm.StartPosition = 'CenterScreen'
	$MainForm.Text = "My Project 2"
	$MainForm.add_Load($OnLoadFormEvent)
	#
	# groupbox3
	#
	$groupbox3.Controls.Add($buttonKillProcess)
	$groupbox3.Controls.Add($buttonProcesses)
	$groupbox3.ForeColor = 'ButtonHighlight'
	$groupbox3.Location = '13, 236'
	$groupbox3.Name = "groupbox3"
	$groupbox3.Size = '257, 88'
	$groupbox3.TabIndex = 10
	$groupbox3.TabStop = $False
	$groupbox3.Text = "Process"
	#
	# buttonKillProcess
	#
	$buttonKillProcess.BackColor = 'HotTrack'
	$buttonKillProcess.Font = "Courier New, 9.75pt, style=Bold"
	$buttonKillProcess.Location = '173, 19'
	$buttonKillProcess.Name = "buttonKillProcess"
	$buttonKillProcess.Size = '77, 48'
	$buttonKillProcess.TabIndex = 8
	$buttonKillProcess.Text = "Kill Process"
	$buttonKillProcess.UseVisualStyleBackColor = $False
	$buttonKillProcess.add_Click($buttonKillProcess_Click)
	#
	# buttonProcesses
	#
	$buttonProcesses.BackColor = 'HotTrack'
	$buttonProcesses.Font = "Courier New, 9.75pt, style=Bold"
	$buttonProcesses.Location = '7, 29'
	$buttonProcesses.Name = "buttonProcesses"
	$buttonProcesses.Size = '134, 29'
	$buttonProcesses.TabIndex = 1
	$buttonProcesses.Text = "Processes"
	$buttonProcesses.UseVisualStyleBackColor = $False
	$buttonProcesses.add_Click($buttonProcesses_Click)
	#
	# groupbox2
	#
	$groupbox2.Controls.Add($buttonStartService)
	$groupbox2.Controls.Add($buttonRestartService)
	$groupbox2.Controls.Add($buttonServices)
	$groupbox2.Controls.Add($buttonStopService)
	$groupbox2.ForeColor = 'ButtonHighlight'
	$groupbox2.Location = '12, 330'
	$groupbox2.Name = "groupbox2"
	$groupbox2.Size = '257, 135'
	$groupbox2.TabIndex = 9
	$groupbox2.TabStop = $False
	$groupbox2.Text = "Services"
	#
	# buttonStartService
	#
	$buttonStartService.BackColor = 'HotTrack'
	$buttonStartService.Font = "Courier New, 9.75pt, style=Bold"
	$buttonStartService.Location = '8, 81'
	$buttonStartService.Name = "buttonStartService"
	$buttonStartService.Size = '77, 48'
	$buttonStartService.TabIndex = 9
	$buttonStartService.Text = "Start Service"
	$buttonStartService.UseVisualStyleBackColor = $False
	$buttonStartService.add_Click($buttonStartService_Click)
	#
	# buttonRestartService
	#
	$buttonRestartService.BackColor = 'HotTrack'
	$buttonRestartService.Font = "Courier New, 9.75pt, style=Bold"
	$buttonRestartService.ForeColor = 'ButtonHighlight'
	$buttonRestartService.Location = '174, 81'
	$buttonRestartService.Name = "buttonRestartService"
	$buttonRestartService.Size = '77, 48'
	$buttonRestartService.TabIndex = 7
	$buttonRestartService.Text = "Restart Service"
	$buttonRestartService.UseVisualStyleBackColor = $False
	$buttonRestartService.add_Click($buttonRestartService_Click)
	#
	# buttonServices
	#
	$buttonServices.BackColor = 'HotTrack'
	$buttonServices.Font = "Courier New, 9.75pt, style=Bold"
	$buttonServices.Location = '7, 28'
	$buttonServices.Name = "buttonServices"
	$buttonServices.Size = '134, 29'
	$buttonServices.TabIndex = 0
	$buttonServices.Text = "Services"
	$buttonServices.UseVisualStyleBackColor = $False
	$buttonServices.add_Click($buttonServices_Click)
	#
	# buttonStopService
	#
	$buttonStopService.BackColor = 'HotTrack'
	$buttonStopService.Font = "Courier New, 9.75pt, style=Bold"
	$buttonStopService.Location = '91, 81'
	$buttonStopService.Name = "buttonStopService"
	$buttonStopService.Size = '77, 48'
	$buttonStopService.TabIndex = 6
	$buttonStopService.Text = "Stop Service"
	$buttonStopService.UseVisualStyleBackColor = $False
	$buttonStopService.add_Click($buttonStopService_Click)
	#
	# datagridview1
	#
	$datagridview1.AllowUserToDeleteRows = $False
	$datagridview1.AutoSizeColumnsMode = 'Fill'
	$datagridview1.AutoSizeRowsMode = 'AllCells'
	$datagridview1.BackgroundColor = 'GradientActiveCaption'
	$datagridview1.ColumnHeadersHeightSizeMode = 'AutoSize'
	$datagridview1.Location = '287, 39'
	$datagridview1.MultiSelect = $False
	$datagridview1.Name = "datagridview1"
	$datagridview1.SelectionMode = 'FullRowSelect'
	$datagridview1.Size = '810, 426'
	$datagridview1.TabIndex = 8
	#
	# buttonEXIT
	#
	$buttonEXIT.BackColor = 'Red'
	$buttonEXIT.DialogResult = 'Cancel'
	$buttonEXIT.Font = "Courier New, 9.75pt, style=Bold"
	$buttonEXIT.Location = '179, 39'
	$buttonEXIT.Name = "buttonEXIT"
	$buttonEXIT.Size = '75, 23'
	$buttonEXIT.TabIndex = 7
	$buttonEXIT.Text = "EXIT"
	$buttonEXIT.UseVisualStyleBackColor = $False
	#
	# statusbar1
	#
	$statusbar1.Location = '0, 486'
	$statusbar1.Name = "statusbar1"
	[void]$statusbar1.Panels.Add($statusbarpanel1)
	[void]$statusbar1.Panels.Add($statusbarpanel2)
	$statusbar1.ShowPanels = $True
	$statusbar1.Size = '1117, 22'
	$statusbar1.TabIndex = 6
	#
	# labelComputerName
	#
	$labelComputerName.Font = "Courier New, 9.75pt, style=Bold"
	$labelComputerName.ForeColor = 'ButtonHighlight'
	$labelComputerName.Location = '13, 13'
	$labelComputerName.Name = "labelComputerName"
	$labelComputerName.Size = '159, 23'
	$labelComputerName.TabIndex = 3
	$labelComputerName.Text = "ComputerName:"
	#
	# Computername
	#
	$Computername.Location = '13, 39'
	$Computername.Name = "Computername"
	$Computername.Size = '159, 20'
	$Computername.TabIndex = 2
	#
	# groupbox1
	#
	$groupbox1.Controls.Add($buttonDisks)
	$groupbox1.Controls.Add($buttonOperatingSystem)
	$groupbox1.Controls.Add($buttonComputerSystem)
	$groupbox1.Controls.Add($buttonNetworking)
	$groupbox1.ForeColor = 'ButtonHighlight'
	$groupbox1.Location = '13, 68'
	$groupbox1.Name = "groupbox1"
	$groupbox1.Size = '257, 162'
	$groupbox1.TabIndex = 0
	$groupbox1.TabStop = $False
	$groupbox1.Text = "Information"
	#
	# buttonDisks
	#
	$buttonDisks.BackColor = 'HotTrack'
	$buttonDisks.Font = "Courier New, 9.75pt, style=Bold"
	$buttonDisks.Location = '7, 124'
	$buttonDisks.Name = "buttonDisks"
	$buttonDisks.Size = '134, 29'
	$buttonDisks.TabIndex = 5
	$buttonDisks.Text = "Disks"
	$buttonDisks.UseVisualStyleBackColor = $False
	$buttonDisks.add_Click($buttonDisks_Click)
	#
	# buttonOperatingSystem
	#
	$buttonOperatingSystem.BackColor = 'HotTrack'
	$buttonOperatingSystem.Font = "Courier New, 9.75pt, style=Bold"
	$buttonOperatingSystem.Location = '6, 54'
	$buttonOperatingSystem.Name = "buttonOperatingSystem"
	$buttonOperatingSystem.Size = '134, 29'
	$buttonOperatingSystem.TabIndex = 4
	$buttonOperatingSystem.Text = "OperatingSystem"
	$buttonOperatingSystem.UseVisualStyleBackColor = $False
	$buttonOperatingSystem.add_Click($buttonOperatingSystem_Click)
	#
	# buttonComputerSystem
	#
	$buttonComputerSystem.BackColor = 'HotTrack'
	$buttonComputerSystem.Font = "Courier New, 9.75pt, style=Bold"
	$buttonComputerSystem.Location = '7, 19'
	$buttonComputerSystem.Name = "buttonComputerSystem"
	$buttonComputerSystem.Size = '134, 29'
	$buttonComputerSystem.TabIndex = 3
	$buttonComputerSystem.Text = "ComputerSystem"
	$buttonComputerSystem.UseVisualStyleBackColor = $False
	$buttonComputerSystem.add_Click($buttonComputerSystem_Click)
	#
	# buttonNetworking
	#
	$buttonNetworking.BackColor = 'HotTrack'
	$buttonNetworking.Font = "Courier New, 9.75pt, style=Bold"
	$buttonNetworking.Location = '7, 89'
	$buttonNetworking.Name = "buttonNetworking"
	$buttonNetworking.Size = '134, 29'
	$buttonNetworking.TabIndex = 2
	$buttonNetworking.Text = "Networking"
	$buttonNetworking.UseVisualStyleBackColor = $False
	$buttonNetworking.add_Click($buttonNetworking_Click)
	#
	# statusbarpanel1
	#
	$statusbarpanel1.AutoSize = 'Contents'
	$statusbarpanel1.MinWidth = 100
	$statusbarpanel1.Name = "statusbarpanel1"
	$statusbarpanel1.Text = "LEON.NELL@STFC.AC.UK"
	$statusbarpanel1.Width = 155
	#
	# statusbarpanel2
	#
	$statusbarpanel2.AutoSize = 'Contents'
	$statusbarpanel2.MinWidth = 100
	$statusbarpanel2.Name = "statusbarpanel2"
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $MainForm.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$MainForm.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$MainForm.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$MainForm.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $MainForm.ShowDialog()

}
#endregion Source: MainForm.pff

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{ 
		if($hostinvocation -ne $null)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	
	
#endregion Source: Globals.ps1

#Start the application
Main ($CommandLine)
