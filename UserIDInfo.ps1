function Get-UserIDAccount {
	<#
	.Synopsis
		Get AD account
	.DESCRIPTION
		Verify if an account has been created in Active Directory by searching against the UserID.
	.EXAMPLE
		Get-UserIDAccount -UserID abc12345
	#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true,
		            ValueFromPipelineByPropertyName=$true,
		            Position=0)]
		[Alias('ID')]
		[string] $UserID,
	    
		[parameter(mandatory=$true)]					
        [string] $DCServer
	)
		
	Begin {
		Write-Verbose "Begin Block"
	    Import-module ActiveDirectory
	}
	Process {
        Write-Verbose "Getting account information"
		Try {
            $Acc = Get-aduser $UserID -server $DCServer -Properties * -ErrorAction Stop

            $hash = @{
                    'User ID'                                 = $Acc.SamAccountName;
                    'UPN'                                     = $Acc.UserPrincipalName;
                    'Display Name'                            = $Acc.DisplayName;
                    'Description'                             = $Acc.Description;
                    'Email Address'                           = $Acc.EmailAddress;
                    'Telephone Number'                        = $Acc.TelephoneNumber;
                    'Office'                                  = $Acc.Office;
                    'Company'                                 = $Acc.Company;
                    'Directorate'                             = $Acc.extensionAttribute8;
                    'Department'                              = $Acc.Department;
                    'Division'                                = $Acc.Division;
                    'Group'                                   = $Acc.extensionAttribute4;
                    'OU'                                      = $Acc.DistinguishedName;
                    'UserAccountControl'                      = $Acc.userAccountControl;
                    'Hide From Address Book'                  = $Acc.msExchHideFromAddressLists;
                    'Account Created'                         = $Acc.whenCreated;
                    'Account Modified'                        = $Acc.Modified;
                    'Password Last Set'                       = $Acc.PasswordLastSet;
            }
        }
        Catch {
            $msg = "The search has failed for $Acc.  $($_.Exception.Message)"
            Write-Error $msg
        }

        If ($hash) {
            $obj = New-Object -TypeName PSObject -Property $hash
            $obj.PSObject.TypeNames.Insert(0,'UserIDTool')
            Write-Output "========================================================================================="
            Write-Output ($obj | out-string).trim()
            Write-Output "========================================================================================="
        }
	}
	End {
        Write-Verbose "Ending Get-UserIDAccount function"
	}
}

Function Get-UserIDLastName {
	<#
	.Synopsis
		Get UserID account
	.DESCRIPTION
		Verify if a UserID account has been created in Active Directory by searching against the lastname.
	.EXAMPLE
		Get-UserIDLastName -Lastname <surname>
	#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true,
		            ValueFromPipelineByPropertyName=$true,
		            Position=0)]
		[Alias('Surname')]
		[string] $Lastname,
	    
		[Parameter(Mandatory=$true)]
        [string] $DCServer
	)
		
	Begin {
		Write-Verbose "Begin Block"
	    Import-module ActiveDirectory
	}
	Process {
		Write-Verbose "Getting account information"
		Try {
            $Fed = Get-aduser -filter {Surname -eq $Lastname} -server $DCServer -Properties * -ErrorAction Stop

            $hash = @{
                    'User ID'                                 = $Fed.SamAccountName;
                    'UPN'                                     = $Fed.UserPrincipalName;
                    'Display Name'                            = $Fed.DisplayName;
                    'Description'                             = $Fed.Description;
                    'Email Address'                           = $Fed.EmailAddress;
                    'Telephone Number'                        = $Fed.TelephoneNumber;
                    'Office'                                  = $Fed.Office;
                    'Company'                                 = $Fed.Company;
                    'Directorate'                             = $Fed.extensionAttribute8;
                    'Department'                              = $Fed.Department;
                    'Division'                                = $Fed.Division;
                    'Group'                                   = $Fed.extensionAttribute4;
                    'OU'                                      = $Fed.DistinguishedName;
                    'UserAccountControl'                      = $Fed.userAccountControl;
                    'Hide From Address Book'                  = $Fed.msExchHideFromAddressLists;
                    'Account Created'                         = $Fed.whenCreated;
                    'Account Modified'                        = $Fed.Modified;
                    'Password Last Set'                       = $Fed.PasswordLastSet;
            }
        }
        Catch {
            $msg = "The search has failed for $Lastname.  $($_.Exception.Message)"
            Write-Error $msg
        }

        If ($hash) {
            $obj = New-Object -TypeName PSObject -Property $hash
            $obj.PSObject.TypeNames.Insert(0,'UserIDTool')
            Write-Output "========================================================================================="
            Write-Output ($obj | out-string).trim()
            Write-Output "========================================================================================="
        }
	}
	End {
        Write-Verbose "Ending Get-UserIDLastName function"
	}
}

Function Get-UserIDMailAddr {
	<#
	.Synopsis
		Get UserID account
	.DESCRIPTION
		Verify if a UserID account has been created in Active Directory by searching against the email address.
	.EXAMPLE
		Get-UserIDMailAddr -email <email.address>@contoso.com
	#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true,
		            ValueFromPipelineByPropertyName=$true,
		            Position=0)]
		[Alias('mail')]
		[string] $email,
	    
		[Parameter(Mandatory=$true)]
        [string] $DCServer
	)
		
	Begin {
		Write-Verbose "Begin Block"
	    Import-module ActiveDirectory
	}
	Process {
        Write-Verbose "Getting account information"
		Try {
            $Acc = Get-aduser -filter {mail -eq $email} -server $DCServer -Properties * -ErrorAction Stop

            $hash = @{
                'User ID'      		                      = $Acc.SamAccountName;
                'UPN'                                     = $Acc.UserPrincipalName;
                'Display Name'                            = $Acc.DisplayName;
                'Description'                             = $Acc.Description;
                'Email Address'                           = $Acc.EmailAddress;
                'Telephone Number'                        = $Acc.TelephoneNumber;
                'Office'                                  = $Acc.Office;
                'Company'                                 = $Acc.Company;
                'Directorate'                             = $Acc.extensionAttribute8;
                'Department'                              = $Acc.Department;
                'Division'                                = $Acc.Division;
                'Group'                                   = $Acc.extensionAttribute4;
                'OU'                                      = $Acc.DistinguishedName;
                'UserAccountControl'                      = $Acc.userAccountControl;
                'Hide From Address Book'                  = $Acc.msExchHideFromAddressLists;
                'Account Created'                         = $Acc.whenCreated;
                'Account Modified'                        = $Acc.Modified;
                'Password Last Set'                       = $Acc.PasswordLastSet;
            }
        }
        Catch {
            $msg = "The search has failed for $email.  $($_.Exception.Message)"
            Write-Error $msg
        }

        If ($hash) {
            $obj = New-Object -TypeName PSObject -Property $hash
            $obj.PSObject.TypeNames.Insert(0,'UserIDTool')
            Write-Output "========================================================================================="
            Write-Output ($obj | out-string).trim()
            Write-Output "========================================================================================="
        }
	}
	End {
        Write-Verbose "Ending Get-UserIDMailAddr function"
	}
}

Function Get-UserIDUPN {
	<#
	.Synopsis
		Get UserID account
	.DESCRIPTION
		Verify if a UserID account has been created in Active Directory by searching against the UPN (UserPrincipalName).
	.EXAMPLE
		Get-UserIDUPN -upn <email.address>@contoso.com
	#>
	[CmdletBinding()]
	Param (
		[Parameter(Mandatory=$true,
		            ValueFromPipelineByPropertyName=$true,
		            Position=0)]
		[Alias('mail')]
		[string] $upn,
	    
		[Parameter(Mandatory=$true)]
        [string] $DCServer
	)
		
	Begin {
		Write-Verbose "Begin Block"
	    Import-module ActiveDirectory
	}
	Process {
		Write-Verbose "Getting account information"
		Try {
            $Acc = Get-aduser -filter {UserPrincipalName -eq $upn} -server $DCServer -Properties * -ErrorAction Stop

            $hash = @{
                        'User ID'                                 = $Acc.SamAccountName;
                        'UPN'                                     = $Acc.UserPrincipalName;
                        'Display Name'                            = $Acc.DisplayName;
                        'Description'                             = $Acc.Description;
                        'Email Address'                           = $Acc.EmailAddress;
                        'Telephone Number'                        = $Acc.TelephoneNumber;
                        'Office'                                  = $Acc.Office;
                        'Company'                                 = $Acc.Company;
                        'Directorate'                             = $Acc.extensionAttribute8;
                        'Department'                              = $Acc.Department;
                        'Division'                                = $Acc.Division;
                        'Group'                                   = $Acc.extensionAttribute4;
                        'OU'                                      = $Acc.DistinguishedName;
                        'UserAccountControl'                      = $Acc.userAccountControl;
                        'Hide From Address Book'                  = $Acc.msExchHideFromAddressLists;
                        'Account Created'                         = $Acc.whenCreated;
                        'Account Modified'                        = $Acc.Modified;
                        'Password Last Set'                       = $Acc.PasswordLastSet;
            }
        }
        Catch {
            $msg = "The search has failed for $upn.  $($_.Exception.Message)"
            Write-Error $msg
        }

        If ($hash) {
            $obj = New-Object -TypeName PSObject -Property $hash
            $obj.PSObject.TypeNames.Insert(0,'UserIDTool')
            Write-Output "========================================================================================="
            Write-Output ($obj | out-string).trim()
            Write-Output "========================================================================================="
        }
    }
	End {
        Write-Verbose "Ending Get-UserIDUPN function"
	}
}

