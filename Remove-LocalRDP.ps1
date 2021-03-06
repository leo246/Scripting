Function Remove-LocalRDP {
    <#
    .Synopsis
	    Remove local Remote Desktop Users.
    .DESCRIPTION
	    Remove a member from the local Remote Desktop Users group on a local or remote computers.
    .PARAMETER ComputerName
	    Specify the local or remote computer name, or IP address.
    .PARAMETER UserName
	    Specify the user name which needs to be removed from the Local Administrators group.
    .EXAMPLE
	    Remove-LocalRDP -Computername <computername> -Username <username>
    .EXAMPLE
	    Server1 | Remove-LocalRDP -Username abc12345
    #>
				
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory = $true,
					ValueFromPipelineByPropertyName = $true,
					ValueFromPipeline = $true,
					Position = 0,
					HelpMessage = "Enter the computer name")]
		[ValidateNotNullorEmpty()]
		[Alias('Hostname')]
		[string[]]$ComputerName,
		[Parameter(Mandatory = $true,
					HelpMessage = "Enter the account to be removed")]
		[Alias('FedID')]
		[string]$UserName
	)
				
	Begin {
		Write-Verbose "Begin block..."
	}
	Process {
		$Computer = [ADSI] ("WinNT://$Computername,Computer")
		$Group = $computer.PSBase.Children.Find("Remote Desktop Users")
					
		$Group.Remove("WinNT://$UserName")
		Write-Output "$Username removed from the Local Remote Desktop Users Group on $computername"
	}
	End {
		Write-Verbose "Ending block"
	}
}
