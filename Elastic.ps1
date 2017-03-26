#  Credit:  https://netfxharmonics.com/2015/11/learningelasticps

Function Get-ESCall {
    
    [CmdLetBinding()]
    Param (
        [parameter(mandatory=$false)]
        [string] $Base,

        [parameter(mandatory=$false)]
        [string] $Uri,

        [parameter(mandatory=$true, HelpMessage="Enter search parameters")]
        [string] $params,
        
        [parameter(mandatory=$false, HelpMessage="Enter Method verb")]
        [string] $method,

        [parameter(mandatory=$false)]
        [string] $body
    )

    Begin {
        $Base = "localhost"
        $Uri = "http://$base`:9200"
        #$method = "Get"
    }
    Process {
        Write-verbose "`nCalling [$uri/$params]"
        if($body) {
            if($body) {
                Write-Host "BODY`n--------------------------------------------`n$body`n--------------------------------------------`n" -f Green
            }
            $response = Invoke-WebRequest -Uri "$uri/$params" -method $method -ContentType 'application/json' -Body $body
        }
        else {
            $response = Invoke-WebRequest -Uri "$uri/$params" -method $method -ContentType 'application/json'
        }

        $response.Content
    }
    End {}
}

Get-ESCall -params "bank" -method Get -verbose

Function Get-ESCatalog {
    [CmdLetBinding()]
    Param (
        [parameter(mandatory=$false)]
        [string] $Base,

        [parameter(mandatory=$false)]
        [string] $Uri,

        [parameter(mandatory=$false, HelpMessage="Enter search parameters")]
        [string] $params,
        
        [parameter(mandatory=$false, HelpMessage="Enter Method verb")]
        [string] $method,

        [parameter(mandatory=$false)]
        [string] $body
    )
    
    Begin {
        $Base = "localhost"
        $Uri = "http://$base`:9200"
        $method = "Get"
        $params = "_cat/indices?v"
    }
    Process {
        $response = Invoke-WebRequest -Uri "$uri/$params" -method $method -ContentType 'application/json'
        $response.content
    }
    End {}
}

#  Get-ESCatalog

