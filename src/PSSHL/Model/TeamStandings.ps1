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

.PARAMETER GP
The number of games the team have played
.PARAMETER Rank
The rank of the team for the selected season
.PARAMETER Team
No description available.
.PARAMETER TeamCode
Team code of the team for the selected season
.PARAMETER Diff
The difference in goals forward and goals against for the selected season
.PARAMETER G
Goals made for the selected season
.PARAMETER GA
Goals against for the selected season
.PARAMETER NonRegL
The number of games lost in overtime or penalty shoot out,1 point where taken, for the selected season
.PARAMETER NonRegNonW
The number of games not won in overtime or penalty shoot out,1 point where taken, for the selected season
.PARAMETER NonRegT
The number of games tied after overtime, for the selected season
.PARAMETER NonRegW
The number of games won in overtime or penalty shoot out, 2 point where taken, for the selected season
.PARAMETER OTL
The number of games lost in overtime, 1 point where taken, for the selected season
.PARAMETER OTT
The number of games that where still tied after overtime for the selected season
.PARAMETER OTW
The number of games won in overtime, 2 points where taken, for the selected season
.PARAMETER Points
The number of points the team had/have for the selected season
.PARAMETER RegL
The number of games lost in regular time for the selected season
.PARAMETER RegT
The number of games tied in regular time for the selected season
.PARAMETER RegW
The number of games won in regular time, 3 points taken, for the selected season
.PARAMETER SOL
The number of games lost in penalty shoot out, 1 point taken, for the selected season
.PARAMETER SOW
The number of games won in penalty shoot out, 2 points taken, for the selected season
.OUTPUTS

TeamStandings<PSCustomObject>
#>

function Initialize-TeamStandings {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${GP},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Rank},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Team},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TeamCode},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Diff},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${G},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${GA},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NonRegL},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NonRegNonW},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NonRegT},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NonRegW},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${OTL},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${OTT},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${OTW},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Points},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RegL},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RegT},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RegW},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SOL},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${SOW}
    )

    Process {
        'Creating PSCustomObject: PSSHL => TeamStandings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $GP) {
            throw "invalid value for 'GP', 'GP' cannot be null."
        }

        if ($null -eq $Rank) {
            throw "invalid value for 'Rank', 'Rank' cannot be null."
        }

        if ($null -eq $Team) {
            throw "invalid value for 'Team', 'Team' cannot be null."
        }

        if ($null -eq $TeamCode) {
            throw "invalid value for 'TeamCode', 'TeamCode' cannot be null."
        }

        if ($null -eq $Diff) {
            throw "invalid value for 'Diff', 'Diff' cannot be null."
        }

        if ($null -eq $G) {
            throw "invalid value for 'G', 'G' cannot be null."
        }

        if ($null -eq $GA) {
            throw "invalid value for 'GA', 'GA' cannot be null."
        }

        if ($null -eq $NonRegL) {
            throw "invalid value for 'NonRegL', 'NonRegL' cannot be null."
        }

        if ($null -eq $NonRegNonW) {
            throw "invalid value for 'NonRegNonW', 'NonRegNonW' cannot be null."
        }

        if ($null -eq $NonRegT) {
            throw "invalid value for 'NonRegT', 'NonRegT' cannot be null."
        }

        if ($null -eq $NonRegW) {
            throw "invalid value for 'NonRegW', 'NonRegW' cannot be null."
        }

        if ($null -eq $OTL) {
            throw "invalid value for 'OTL', 'OTL' cannot be null."
        }

        if ($null -eq $OTT) {
            throw "invalid value for 'OTT', 'OTT' cannot be null."
        }

        if ($null -eq $OTW) {
            throw "invalid value for 'OTW', 'OTW' cannot be null."
        }

        if ($null -eq $Points) {
            throw "invalid value for 'Points', 'Points' cannot be null."
        }

        if ($null -eq $RegL) {
            throw "invalid value for 'RegL', 'RegL' cannot be null."
        }

        if ($null -eq $RegT) {
            throw "invalid value for 'RegT', 'RegT' cannot be null."
        }

        if ($null -eq $RegW) {
            throw "invalid value for 'RegW', 'RegW' cannot be null."
        }

        if ($null -eq $SOL) {
            throw "invalid value for 'SOL', 'SOL' cannot be null."
        }

        if ($null -eq $SOW) {
            throw "invalid value for 'SOW', 'SOW' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'GP'         = ${GP}
            'Rank'       = ${Rank}
            'Team'       = ${Team}
            'TeamCode'   = ${TeamCode}
            'Diff'       = ${Diff}
            'G'          = ${G}
            'GA'         = ${GA}
            'NonRegL'    = ${NonRegL}
            'NonRegNonW' = ${NonRegNonW}
            'NonRegT'    = ${NonRegT}
            'NonRegW'    = ${NonRegW}
            'OTL'        = ${OTL}
            'OTT'        = ${OTT}
            'OTW'        = ${OTW}
            'Points'     = ${Points}
            'RegL'       = ${RegL}
            'RegT'       = ${RegT}
            'RegW'       = ${RegW}
            'SOL'        = ${SOL}
            'SOW'        = ${SOW}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TeamStandings<PSCustomObject>

.DESCRIPTION

Convert from JSON to TeamStandings<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TeamStandings<PSCustomObject>
#>
function ConvertFrom-JsonToTeamStandings {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => TeamStandings' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TeamStandings
        $AllProperties = ('GP', 'Rank', 'Team', 'TeamCode', 'Diff', 'G', 'GA', 'NonRegL', 'NonRegNonW', 'NonRegT', 'NonRegW', 'OTL', 'OTT', 'OTW', 'Points', 'RegL', 'RegT', 'RegW', 'SOL', 'SOW')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq '{}') {
            # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'GP' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'GP'))) {
            throw "Error! JSON cannot be serialized due to the required property 'GP' missing."
        } else {
            $GP = $JsonParameters.PSobject.Properties['GP'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'Rank'))) {
            throw "Error! JSON cannot be serialized due to the required property 'Rank' missing."
        } else {
            $Rank = $JsonParameters.PSobject.Properties['Rank'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'Team'))) {
            throw "Error! JSON cannot be serialized due to the required property 'Team' missing."
        } else {
            $Team = $JsonParameters.PSobject.Properties['Team'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'TeamCode'))) {
            throw "Error! JSON cannot be serialized due to the required property 'TeamCode' missing."
        } else {
            $TeamCode = $JsonParameters.PSobject.Properties['TeamCode'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'Diff'))) {
            throw "Error! JSON cannot be serialized due to the required property 'Diff' missing."
        } else {
            $Diff = $JsonParameters.PSobject.Properties['Diff'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'G'))) {
            throw "Error! JSON cannot be serialized due to the required property 'G' missing."
        } else {
            $G = $JsonParameters.PSobject.Properties['G'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'GA'))) {
            throw "Error! JSON cannot be serialized due to the required property 'GA' missing."
        } else {
            $GA = $JsonParameters.PSobject.Properties['GA'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'NonRegL'))) {
            throw "Error! JSON cannot be serialized due to the required property 'NonRegL' missing."
        } else {
            $NonRegL = $JsonParameters.PSobject.Properties['NonRegL'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'NonRegNonW'))) {
            throw "Error! JSON cannot be serialized due to the required property 'NonRegNonW' missing."
        } else {
            $NonRegNonW = $JsonParameters.PSobject.Properties['NonRegNonW'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'NonRegT'))) {
            throw "Error! JSON cannot be serialized due to the required property 'NonRegT' missing."
        } else {
            $NonRegT = $JsonParameters.PSobject.Properties['NonRegT'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'NonRegW'))) {
            throw "Error! JSON cannot be serialized due to the required property 'NonRegW' missing."
        } else {
            $NonRegW = $JsonParameters.PSobject.Properties['NonRegW'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'OTL'))) {
            throw "Error! JSON cannot be serialized due to the required property 'OTL' missing."
        } else {
            $OTL = $JsonParameters.PSobject.Properties['OTL'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'OTT'))) {
            throw "Error! JSON cannot be serialized due to the required property 'OTT' missing."
        } else {
            $OTT = $JsonParameters.PSobject.Properties['OTT'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'OTW'))) {
            throw "Error! JSON cannot be serialized due to the required property 'OTW' missing."
        } else {
            $OTW = $JsonParameters.PSobject.Properties['OTW'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'Points'))) {
            throw "Error! JSON cannot be serialized due to the required property 'Points' missing."
        } else {
            $Points = $JsonParameters.PSobject.Properties['Points'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'RegL'))) {
            throw "Error! JSON cannot be serialized due to the required property 'RegL' missing."
        } else {
            $RegL = $JsonParameters.PSobject.Properties['RegL'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'RegT'))) {
            throw "Error! JSON cannot be serialized due to the required property 'RegT' missing."
        } else {
            $RegT = $JsonParameters.PSobject.Properties['RegT'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'RegW'))) {
            throw "Error! JSON cannot be serialized due to the required property 'RegW' missing."
        } else {
            $RegW = $JsonParameters.PSobject.Properties['RegW'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'SOL'))) {
            throw "Error! JSON cannot be serialized due to the required property 'SOL' missing."
        } else {
            $SOL = $JsonParameters.PSobject.Properties['SOL'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'SOW'))) {
            throw "Error! JSON cannot be serialized due to the required property 'SOW' missing."
        } else {
            $SOW = $JsonParameters.PSobject.Properties['SOW'].value
        }

        $PSO = [PSCustomObject]@{
            'GP'         = ${GP}
            'Rank'       = ${Rank}
            'Team'       = ${Team}
            'TeamCode'   = ${TeamCode}
            'Diff'       = ${Diff}
            'G'          = ${G}
            'GA'         = ${GA}
            'NonRegL'    = ${NonRegL}
            'NonRegNonW' = ${NonRegNonW}
            'NonRegT'    = ${NonRegT}
            'NonRegW'    = ${NonRegW}
            'OTL'        = ${OTL}
            'OTT'        = ${OTT}
            'OTW'        = ${OTW}
            'Points'     = ${Points}
            'RegL'       = ${RegL}
            'RegT'       = ${RegT}
            'RegW'       = ${RegW}
            'SOL'        = ${SOL}
            'SOW'        = ${SOW}
        }

        return $PSO
    }

}
