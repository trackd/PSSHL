#
# Öppet API för SHL
# Version: 1.0
# Contact: support@shl.se
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER FirstName
The first name of the person
.PARAMETER LastName
The last name of the person
.PARAMETER Nationality
The nationality of the person
.PARAMETER ShortDescription
A short description of the person
.OUTPUTS

AbstractPerson<PSCustomObject>
#>

function Initialize-AbstractPerson {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Nationality},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ShortDescription}
    )

    Process {
        'Creating PSCustomObject: PSSHL => AbstractPerson' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'first_name'        = ${FirstName}
            'last_name'         = ${LastName}
            'nationality'       = ${Nationality}
            'short_description' = ${ShortDescription}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AbstractPerson<PSCustomObject>

.DESCRIPTION

Convert from JSON to AbstractPerson<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AbstractPerson<PSCustomObject>
#>
function ConvertFrom-JsonToAbstractPerson {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => AbstractPerson' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AbstractPerson
        $AllProperties = ('first_name', 'last_name', 'nationality', 'short_description')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'first_name'))) {
            #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties['first_name'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'last_name'))) {
            #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties['last_name'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'nationality'))) {
            #optional property not found
            $Nationality = $null
        } else {
            $Nationality = $JsonParameters.PSobject.Properties['nationality'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'short_description'))) {
            #optional property not found
            $ShortDescription = $null
        } else {
            $ShortDescription = $JsonParameters.PSobject.Properties['short_description'].value
        }

        $PSO = [PSCustomObject]@{
            'first_name'        = ${FirstName}
            'last_name'         = ${LastName}
            'nationality'       = ${Nationality}
            'short_description' = ${ShortDescription}
        }

        return $PSO
    }

}

