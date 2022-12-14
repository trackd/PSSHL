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

.PARAMETER Live
No description available.
.PARAMETER GameId
Id of the game
.PARAMETER GameUuid
Id of the game
.PARAMETER Season
Season of the game
.PARAMETER Series
The series the game belongs to
.PARAMETER GameType
Type of game
.PARAMETER RoundNumber
Round number of the game
.PARAMETER StartDateTime
Date and time of the game
.PARAMETER HomeTeamCode
Team code of the home team
.PARAMETER HomeTeamResult
Result of the home team
.PARAMETER AwayTeamCode
Team code of the away team
.PARAMETER AwayTeamResult
Result of the away team
.PARAMETER PeriodResults
Period result of the game
.PARAMETER GameCenterActive
Is the game center activated for this game
.PARAMETER Played
Is the game already played
.PARAMETER Overtime
Was the game won in overtime
.PARAMETER PenaltyShots
Was the game won on penalty shoot-out
.PARAMETER TicketUrl
URL where tickets can be bought
.PARAMETER GameCenterUrlDesktop
URL to the live feed of the game
.PARAMETER GameCenterUrlMobile
URL to the live feed of the game
.PARAMETER TvChannels
List of TV channels the game will be broadcasted on
.PARAMETER Venue
Venue where the game will be/was played
.OUTPUTS

GameReport<PSCustomObject>
#>

function Initialize-GameReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Live},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${GameId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameUuid},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Season},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Series},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet('regular', 'playin', 'playoff')]
        [String]
        ${GameType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RoundNumber},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartDateTime},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HomeTeamCode},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${HomeTeamResult},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AwayTeamCode},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AwayTeamResult},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PeriodResults},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${GameCenterActive},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Played},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Overtime},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PenaltyShots},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TicketUrl},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameCenterUrlDesktop},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameCenterUrlMobile},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${TvChannels},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Venue}
    )

    Process {
        'Creating PSCustomObject: PSSHL => GameReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Live) {
            throw "invalid value for 'Live', 'Live' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'live'                    = ${Live}
            'game_id'                 = ${GameId}
            'game_uuid'               = ${GameUuid}
            'season'                  = ${Season}
            'series'                  = ${Series}
            'game_type'               = ${GameType}
            'round_number'            = ${RoundNumber}
            'start_date_time'         = ${StartDateTime}
            'home_team_code'          = ${HomeTeamCode}
            'home_team_result'        = ${HomeTeamResult}
            'away_team_code'          = ${AwayTeamCode}
            'away_team_result'        = ${AwayTeamResult}
            'period_results'          = ${PeriodResults}
            'game_center_active'      = ${GameCenterActive}
            'played'                  = ${Played}
            'overtime'                = ${Overtime}
            'penalty_shots'           = ${PenaltyShots}
            'ticket_url'              = ${TicketUrl}
            'game_center_url_desktop' = ${GameCenterUrlDesktop}
            'game_center_url_mobile'  = ${GameCenterUrlMobile}
            'tv_channels'             = ${TvChannels}
            'venue'                   = ${Venue}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GameReport<PSCustomObject>

.DESCRIPTION

Convert from JSON to GameReport<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GameReport<PSCustomObject>
#>
function ConvertFrom-JsonToGameReport {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => GameReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GameReport
        $AllProperties = ('live', 'game_id', 'game_uuid', 'season', 'series', 'game_type', 'round_number', 'start_date_time', 'home_team_code', 'home_team_result', 'away_team_code', 'away_team_result', 'period_results', 'game_center_active', 'played', 'overtime', 'penalty_shots', 'ticket_url', 'game_center_url_desktop', 'game_center_url_mobile', 'tv_channels', 'venue')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq '{}') {
            # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'live' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'live'))) {
            throw "Error! JSON cannot be serialized due to the required property 'live' missing."
        } else {
            $Live = $JsonParameters.PSobject.Properties['live'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_id'))) {
            #optional property not found
            $GameId = $null
        } else {
            $GameId = $JsonParameters.PSobject.Properties['game_id'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_uuid'))) {
            #optional property not found
            $GameUuid = $null
        } else {
            $GameUuid = $JsonParameters.PSobject.Properties['game_uuid'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'season'))) {
            #optional property not found
            $Season = $null
        } else {
            $Season = $JsonParameters.PSobject.Properties['season'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'series'))) {
            #optional property not found
            $Series = $null
        } else {
            $Series = $JsonParameters.PSobject.Properties['series'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_type'))) {
            #optional property not found
            $GameType = $null
        } else {
            $GameType = $JsonParameters.PSobject.Properties['game_type'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'round_number'))) {
            #optional property not found
            $RoundNumber = $null
        } else {
            $RoundNumber = $JsonParameters.PSobject.Properties['round_number'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'start_date_time'))) {
            #optional property not found
            $StartDateTime = $null
        } else {
            $StartDateTime = $JsonParameters.PSobject.Properties['start_date_time'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'home_team_code'))) {
            #optional property not found
            $HomeTeamCode = $null
        } else {
            $HomeTeamCode = $JsonParameters.PSobject.Properties['home_team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'home_team_result'))) {
            #optional property not found
            $HomeTeamResult = $null
        } else {
            $HomeTeamResult = $JsonParameters.PSobject.Properties['home_team_result'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'away_team_code'))) {
            #optional property not found
            $AwayTeamCode = $null
        } else {
            $AwayTeamCode = $JsonParameters.PSobject.Properties['away_team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'away_team_result'))) {
            #optional property not found
            $AwayTeamResult = $null
        } else {
            $AwayTeamResult = $JsonParameters.PSobject.Properties['away_team_result'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'period_results'))) {
            #optional property not found
            $PeriodResults = $null
        } else {
            $PeriodResults = $JsonParameters.PSobject.Properties['period_results'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_center_active'))) {
            #optional property not found
            $GameCenterActive = $null
        } else {
            $GameCenterActive = $JsonParameters.PSobject.Properties['game_center_active'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'played'))) {
            #optional property not found
            $Played = $null
        } else {
            $Played = $JsonParameters.PSobject.Properties['played'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'overtime'))) {
            #optional property not found
            $Overtime = $null
        } else {
            $Overtime = $JsonParameters.PSobject.Properties['overtime'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'penalty_shots'))) {
            #optional property not found
            $PenaltyShots = $null
        } else {
            $PenaltyShots = $JsonParameters.PSobject.Properties['penalty_shots'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'ticket_url'))) {
            #optional property not found
            $TicketUrl = $null
        } else {
            $TicketUrl = $JsonParameters.PSobject.Properties['ticket_url'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_center_url_desktop'))) {
            #optional property not found
            $GameCenterUrlDesktop = $null
        } else {
            $GameCenterUrlDesktop = $JsonParameters.PSobject.Properties['game_center_url_desktop'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_center_url_mobile'))) {
            #optional property not found
            $GameCenterUrlMobile = $null
        } else {
            $GameCenterUrlMobile = $JsonParameters.PSobject.Properties['game_center_url_mobile'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'tv_channels'))) {
            #optional property not found
            $TvChannels = $null
        } else {
            $TvChannels = $JsonParameters.PSobject.Properties['tv_channels'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'venue'))) {
            #optional property not found
            $Venue = $null
        } else {
            $Venue = $JsonParameters.PSobject.Properties['venue'].value
        }

        $PSO = [PSCustomObject]@{
            'live'                    = ${Live}
            'game_id'                 = ${GameId}
            'game_uuid'               = ${GameUuid}
            'season'                  = ${Season}
            'series'                  = ${Series}
            'game_type'               = ${GameType}
            'round_number'            = ${RoundNumber}
            'start_date_time'         = ${StartDateTime}
            'home_team_code'          = ${HomeTeamCode}
            'home_team_result'        = ${HomeTeamResult}
            'away_team_code'          = ${AwayTeamCode}
            'away_team_result'        = ${AwayTeamResult}
            'period_results'          = ${PeriodResults}
            'game_center_active'      = ${GameCenterActive}
            'played'                  = ${Played}
            'overtime'                = ${Overtime}
            'penalty_shots'           = ${PenaltyShots}
            'ticket_url'              = ${TicketUrl}
            'game_center_url_desktop' = ${GameCenterUrlDesktop}
            'game_center_url_mobile'  = ${GameCenterUrlMobile}
            'tv_channels'             = ${TvChannels}
            'venue'                   = ${Venue}
        }

        return $PSO
    }

}

