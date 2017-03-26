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

#  Get-ESCall -params "bank?pretty" -method Get -verbose

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

Function Get-ESSearch {
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

        [parameter(mandatory=$True, HelpMessage="Enter Index name")]
        [string] $index #,

        #[parameter(mandatory=$false, "Enter search parameters in JSON format")]
        #[json] $json
    )
    Begin {
        $Base = "localhost"
        $Uri = "http://$base`:9200"
        $method = "Get"
    }
    Process {
        $index = "bank"
        $json = '{
                    "size": 0,
                      "aggs": {
                        "group_by_age": {
                          "range": {
                            "field": "age",
                            "ranges": [
                              {
                                "from": 20,
                                "to": 30
                              },
                              {
                                "from": 30,
                                "to": 40
                              },
                              {
                                "from": 40,
                                "to": 50
                              }
                            ]
                          },
                          "aggs": {
                            "group_by_gender": {
                              "terms": {
                                "field": "gender.keyword"
                              },
                              "aggs": {
                                "average_balance": {
                                  "avg": {
                                    "field": "balance"
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                }'

        $response = Invoke-WebRequest -Uri "$uri/$index/_search?pretty&source=$json" -method $method -ContentType 'application/json'
        $response.content

    }
    End {}
}

Get-ESSearch