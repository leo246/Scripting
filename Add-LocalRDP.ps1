Function Add-LocalRPD {
    <#
    .Synopsis
	    Add an account to local Remote Desktop Users.
    .DESCRIPTION
	    Add an account to the local Remote Desktop Users group on a local or remote computer.
    .PARAMETER ComputerName
	    Specify the local or remote computer name, or IP address.
    .PARAMETER UserName
	    Specify the user name which needs to be added to the Local Remote Desktop Users group.
    .PARAMETER Domain
	    Specify the domain in which the account resides.
    .EXAMPLE
	    Add-LocalRPD -Computername server1 -FunctionalID abc12345
    .EXAMPLE
	    server1 | Add-LocalRPD -Username abc12345
    #>
				
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory = $true,
					HelpMessage = "Enter the computer name")]
		[ValidateNotNullorEmpty()]
		[Alias('Hostname')]
		[string] $Computername,
		[Parameter(Mandatory = $true,
					HelpMessage = "Enter the account to be added")]
		[Alias('03')]
		[string] $UserID,
		
		[Parameter(Mandatory = $true)]
		[string]$Domain = "Contoso.com"
	)
				
	Begin {
		Write-Verbose "Begin block"
	}
	Process {
        $length = ($FunctionalID.length-2)
        $Username = $FunctionalID.Substring(0,$length)
		$RDU =  "remote desktop users"
        $RDU_Add = [ADSI]"WinNT://$Computername/$RDU,group"
        $RDU_Add.psbase.invoke("Add", ([ADSI]"WinNT://$domain/$UserName").path)
        Write-Output "$Username added to the Local Remote Desktop Users Group on $computername"
	}
	End {
		Write-Verbose "Ending block"
	}
}
