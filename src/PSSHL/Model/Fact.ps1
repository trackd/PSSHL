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

.PARAMETER Golds
The golds the team have won
.PARAMETER Founded
The year the team was founded
.PARAMETER Finals
A list of the finals the team have played
.PARAMETER Holy
A list of holy numbers in the team
.PARAMETER Chairman
Chairman of the team
.PARAMETER President
President of the team
.PARAMETER TeamCode
The team code of the team
.PARAMETER Fact
No description available.
.PARAMETER Contact
No description available.
.PARAMETER Accreditation
No description available.
.OUTPUTS

Fact<PSCustomObject>
#>

function Initialize-Fact {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Golds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Founded},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Finals},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Holy},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Chairman},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${President},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TeamCode},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fact},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Contact},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Accreditation}
    )

    Process {
        'Creating PSCustomObject: PSSHL => Fact' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Golds) {
            throw "invalid value for 'Golds', 'Golds' cannot be null."
        }

        if ($null -eq $Founded) {
            throw "invalid value for 'Founded', 'Founded' cannot be null."
        }

        if ($null -eq $Finals) {
            throw "invalid value for 'Finals', 'Finals' cannot be null."
        }

        if ($null -eq $Holy) {
            throw "invalid value for 'Holy', 'Holy' cannot be null."
        }

        if ($null -eq $Chairman) {
            throw "invalid value for 'Chairman', 'Chairman' cannot be null."
        }

        if ($null -eq $President) {
            throw "invalid value for 'President', 'President' cannot be null."
        }

        if ($null -eq $TeamCode) {
            throw "invalid value for 'TeamCode', 'TeamCode' cannot be null."
        }

        if ($null -eq $Contact) {
            throw "invalid value for 'Contact', 'Contact' cannot be null."
        }

        if ($null -eq $Accreditation) {
            throw "invalid value for 'Accreditation', 'Accreditation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'golds'         = ${Golds}
            'founded'       = ${Founded}
            'finals'        = ${Finals}
            'holy'          = ${Holy}
            'chairman'      = ${Chairman}
            'president'     = ${President}
            'team_code'     = ${TeamCode}
            'fact'          = ${Fact}
            'contact'       = ${Contact}
            'accreditation' = ${Accreditation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Fact<PSCustomObject>

.DESCRIPTION

Convert from JSON to Fact<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Fact<PSCustomObject>
#>
function ConvertFrom-JsonToFact {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => Fact' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Fact
        $AllProperties = ('golds', 'founded', 'finals', 'holy', 'chairman', 'president', 'team_code', 'fact', 'contact', 'accreditation')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq '{}') {
            # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'golds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'golds'))) {
            throw "Error! JSON cannot be serialized due to the required property 'golds' missing."
        } else {
            $Golds = $JsonParameters.PSobject.Properties['golds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'founded'))) {
            throw "Error! JSON cannot be serialized due to the required property 'founded' missing."
        } else {
            $Founded = $JsonParameters.PSobject.Properties['founded'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'finals'))) {
            throw "Error! JSON cannot be serialized due to the required property 'finals' missing."
        } else {
            $Finals = $JsonParameters.PSobject.Properties['finals'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'holy'))) {
            throw "Error! JSON cannot be serialized due to the required property 'holy' missing."
        } else {
            $Holy = $JsonParameters.PSobject.Properties['holy'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'chairman'))) {
            throw "Error! JSON cannot be serialized due to the required property 'chairman' missing."
        } else {
            $Chairman = $JsonParameters.PSobject.Properties['chairman'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'president'))) {
            throw "Error! JSON cannot be serialized due to the required property 'president' missing."
        } else {
            $President = $JsonParameters.PSobject.Properties['president'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'team_code'))) {
            throw "Error! JSON cannot be serialized due to the required property 'team_code' missing."
        } else {
            $TeamCode = $JsonParameters.PSobject.Properties['team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'contact'))) {
            throw "Error! JSON cannot be serialized due to the required property 'contact' missing."
        } else {
            $Contact = $JsonParameters.PSobject.Properties['contact'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'accreditation'))) {
            throw "Error! JSON cannot be serialized due to the required property 'accreditation' missing."
        } else {
            $Accreditation = $JsonParameters.PSobject.Properties['accreditation'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'fact'))) {
            #optional property not found
            $Fact = $null
        } else {
            $Fact = $JsonParameters.PSobject.Properties['fact'].value
        }

        $PSO = [PSCustomObject]@{
            'golds'         = ${Golds}
            'founded'       = ${Founded}
            'finals'        = ${Finals}
            'holy'          = ${Holy}
            'chairman'      = ${Chairman}
            'president'     = ${President}
            'team_code'     = ${TeamCode}
            'fact'          = ${Fact}
            'contact'       = ${Contact}
            'accreditation' = ${Accreditation}
        }

        return $PSO
    }

}

