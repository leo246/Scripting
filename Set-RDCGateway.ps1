function Set-RDCGateway {

<#
.Synopsis
   Create approrpriate Registry keys, and .RDP file.
.DESCRIPTION
   Verify if the Registry key (HKCU:\Software\Microsoft\Terminal Server Client)
   and appropriate DWORD value (RDGClientTransport) exist.  If not, create these accordingly.

   Verify if the .RDP exists on the current user's desktop.  If not,
   create the file with the appropriate setting.

   Change the gateway host name in the $RDP_Defaults variable to your desired gateway address.
.EXAMPLE
   Set-RDCGateway
#>

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$false)]
        $RegPath = "HKCU:\Software\Microsoft\Terminal Server Client",
        $RDG = "RDGClientTransport",
        $Value = "1",
        $rdp = "$env:USERPROFILE\Desktop\test_gateway.rdp"
    )

    Begin {
        $RDP_Defaults = 'screen mode id:i:2
                        use multimon:i:0
                        desktopwidth:i:1366
                        desktopheight:i:768
                        session bpp:i:32
                        winposstr:s:0,3,0,0,800,600
                        compression:i:1
                        keyboardhook:i:2
                        audiocapturemode:i:0
                        videoplaybackmode:i:1
                        connection type:i:7
                        networkautodetect:i:1
                        bandwidthautodetect:i:1
                        displayconnectionbar:i:1
                        enableworkspacereconnect:i:0
                        disable wallpaper:i:0
                        allow font smoothing:i:0
                        allow desktop composition:i:0
                        disable full window drag:i:1
                        disable menu anims:i:1
                        disable themes:i:0
                        disable cursor setting:i:0
                        bitmapcachepersistenable:i:1
                        full address:s:
                        audiomode:i:0
                        redirectprinters:i:1
                        redirectcomports:i:0
                        redirectsmartcards:i:1
                        redirectclipboard:i:1
                        redirectposdevices:i:0
                        autoreconnection enabled:i:1
                        authentication level:i:2
                        prompt for credentials:i:0
                        negotiate security layer:i:1
                        remoteapplicationmode:i:0
                        alternate shell:s:
                        shell working directory:s:
                        gatewayhostname:s:gateway.contoso.com
                        gatewayusagemethod:i:1
                        gatewaycredentialssource:i:4
                        gatewayprofileusagemethod:i:1
                        promptcredentialonce:i:0
                        gatewaybrokeringtype:i:0
                        use redirection server name:i:0
                        rdgiskdcproxy:i:0
                        kdcproxyname:s:'

    }
    Process {
        If (test-path $RegPath) {
            If (Get-ItemProperty -Path $RegPath -name rdgclienttransport -ErrorAction SilentlyContinue) {
                write-output "Reg key & value already exists"
            }
            Else {
                New-ItemProperty -Path $RegPath -Name $RDG -Value $Value -PropertyType DWORD -Force | out-null
                Write-Output "Reg value created"
            }
        }
        Else {
            New-Item -Path $RegPath -force | out-null
            New-ItemProperty -Path $RegPath -Name $RDG -Value $Value -PropertyType DWORD -Force | out-null
            Write-Output "Reg key and value created"
        }
    }
    End {
        If (!(test-path $rdp)) {
            $RDP_Defaults | Out-File $rdp
        }
        Else {
            Write-Output "RDP file already exists on Desktop"
        }
    }
}