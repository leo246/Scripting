function Get-LocalRDP {
    <#
    .Synopsis
	    Get local Remote Desktop Users.
    .DESCRIPTION
	    Get a member list of the local Remote Desktop Users group on local or remote computers.
	    The data is retrieved via a Windows Instrumentation Management (WNI) query.
    .PARAMETER ComputerName
	    Specify the local, or multiple remote computer names, or IP addresses.  Also accepts pipeline
	    input (via a text file), or pipeline input from Active Directory.
    .PARAMETER GroupName
	    This script targets the Local Administrators group.
    .PARAMETER LogErrors
	    Specify this switch to create a text log file of computers that could not be queried.
    .PARAMETER ErrorLog
	    When used with -LogErrors, specifies the file path and name to which failed computer names will be written.
	    Defaults to "c:\Ad_localadmins_error.txt"
    .EXAMPLE
	    Get-LocalRPD -Computername server1
    .EXAMPLE
	    server1 | Get-LocalRDP
    .EXAMPLE
	    Get-Content c:\computerlist.txt | Get-LocalRDP
    .EXAMPLE
	    (Get-Adcomputer -Server dc1.contoso.com -SearchBase "ou=test,dc=contoso,dc=com" -filter *).name | Get-LocalRDP
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
		[string[]]$Computername,
		[string[]]$GroupName = "Remote Desktop Users",
		[string]$ErrorLog = "c:\Ad_localrdp_error.txt",
		[switch]$LogErrors
	)
				
	Begin {
		Write-Verbose "Errors will be logged to $ErrorLog"
	}
	Process {
		Write-Verbose "Beginning PROCESS block"
					
		Foreach ($Computer in $ComputerName) {
			Write-Verbose "Querying $Computer"
			Try {
				$Ok = $true
				$wmi = Get-WmiObject -ComputerName $Computer -Query "SELECT * FROM Win32_GroupUser WHERE GroupComponent=`"Win32_Group.Domain='$Computer',Name='$GroupName'`"" -ErrorAction stop
			}
			Catch {
				$Ok = $false
				Write-Warning "$Computer has failed"
				If ($LogErrors) {
					$Computer | Out-File $ErrorLog -Append
					Write-Warning "Logged to $ErrorLog"
				}
			}
			If ($Ok) {
				foreach ($acc in $wmi) {
					$props = @{
						Computer = $Computer;
						Member = $acc.PartComponent.Substring($acc.PartComponent.IndexOf(',') + 1).replace('Name=', ' ').replace("`"", '')
					}
					$Obj = New-Object -TypeName psobject -Property $props
					Write-Output $Obj
				}
			}
		}
	}
	End {
		Write-Verbose "Ending block"
	}
}
