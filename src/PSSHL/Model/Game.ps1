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

Game<PSCustomObject>
#>

function Initialize-Game {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${GameId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameUuid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Season},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Series},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet('regular', 'playin', 'playoff')]
        [String]
        ${GameType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RoundNumber},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${StartDateTime},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HomeTeamCode},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${HomeTeamResult},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AwayTeamCode},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${AwayTeamResult},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PeriodResults},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${GameCenterActive},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Played},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Overtime},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${PenaltyShots},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TicketUrl},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameCenterUrlDesktop},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GameCenterUrlMobile},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${TvChannels},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Venue}
    )

    Process {
        'Creating PSCustomObject: PSSHL => Game' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $GameId) {
            throw "invalid value for 'GameId', 'GameId' cannot be null."
        }

        if ($null -eq $GameUuid) {
            throw "invalid value for 'GameUuid', 'GameUuid' cannot be null."
        }

        if ($null -eq $Season) {
            throw "invalid value for 'Season', 'Season' cannot be null."
        }

        if ($null -eq $Series) {
            throw "invalid value for 'Series', 'Series' cannot be null."
        }

        if ($null -eq $GameType) {
            throw "invalid value for 'GameType', 'GameType' cannot be null."
        }

        if ($null -eq $RoundNumber) {
            throw "invalid value for 'RoundNumber', 'RoundNumber' cannot be null."
        }

        if ($null -eq $StartDateTime) {
            throw "invalid value for 'StartDateTime', 'StartDateTime' cannot be null."
        }

        if ($null -eq $HomeTeamCode) {
            throw "invalid value for 'HomeTeamCode', 'HomeTeamCode' cannot be null."
        }

        if ($null -eq $HomeTeamResult) {
            throw "invalid value for 'HomeTeamResult', 'HomeTeamResult' cannot be null."
        }

        if ($null -eq $AwayTeamCode) {
            throw "invalid value for 'AwayTeamCode', 'AwayTeamCode' cannot be null."
        }

        if ($null -eq $AwayTeamResult) {
            throw "invalid value for 'AwayTeamResult', 'AwayTeamResult' cannot be null."
        }

        if ($null -eq $GameCenterActive) {
            throw "invalid value for 'GameCenterActive', 'GameCenterActive' cannot be null."
        }

        if ($null -eq $Played) {
            throw "invalid value for 'Played', 'Played' cannot be null."
        }

        if ($null -eq $Overtime) {
            throw "invalid value for 'Overtime', 'Overtime' cannot be null."
        }

        if ($null -eq $PenaltyShots) {
            throw "invalid value for 'PenaltyShots', 'PenaltyShots' cannot be null."
        }

        if ($null -eq $TicketUrl) {
            throw "invalid value for 'TicketUrl', 'TicketUrl' cannot be null."
        }

        if ($null -eq $TvChannels) {
            throw "invalid value for 'TvChannels', 'TvChannels' cannot be null."
        }

        if ($null -eq $Venue) {
            throw "invalid value for 'Venue', 'Venue' cannot be null."
        }


        $PSO = [PSCustomObject]@{
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

Convert from JSON to Game<PSCustomObject>

.DESCRIPTION

Convert from JSON to Game<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Game<PSCustomObject>
#>
function ConvertFrom-JsonToGame {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => Game' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Game
        $AllProperties = ('game_id', 'game_uuid', 'season', 'series', 'game_type', 'round_number', 'start_date_time', 'home_team_code', 'home_team_result', 'away_team_code', 'away_team_result', 'period_results', 'game_center_active', 'played', 'overtime', 'penalty_shots', 'ticket_url', 'game_center_url_desktop', 'game_center_url_mobile', 'tv_channels', 'venue')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq '{}') {
            # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'game_id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_id'))) {
            throw "Error! JSON cannot be serialized due to the required property 'game_id' missing."
        } else {
            $GameId = $JsonParameters.PSobject.Properties['game_id'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_uuid'))) {
            throw "Error! JSON cannot be serialized due to the required property 'game_uuid' missing."
        } else {
            $GameUuid = $JsonParameters.PSobject.Properties['game_uuid'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'season'))) {
            throw "Error! JSON cannot be serialized due to the required property 'season' missing."
        } else {
            $Season = $JsonParameters.PSobject.Properties['season'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'series'))) {
            throw "Error! JSON cannot be serialized due to the required property 'series' missing."
        } else {
            $Series = $JsonParameters.PSobject.Properties['series'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_type'))) {
            throw "Error! JSON cannot be serialized due to the required property 'game_type' missing."
        } else {
            $GameType = $JsonParameters.PSobject.Properties['game_type'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'round_number'))) {
            throw "Error! JSON cannot be serialized due to the required property 'round_number' missing."
        } else {
            $RoundNumber = $JsonParameters.PSobject.Properties['round_number'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'start_date_time'))) {
            throw "Error! JSON cannot be serialized due to the required property 'start_date_time' missing."
        } else {
            $StartDateTime = $JsonParameters.PSobject.Properties['start_date_time'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'home_team_code'))) {
            throw "Error! JSON cannot be serialized due to the required property 'home_team_code' missing."
        } else {
            $HomeTeamCode = $JsonParameters.PSobject.Properties['home_team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'home_team_result'))) {
            throw "Error! JSON cannot be serialized due to the required property 'home_team_result' missing."
        } else {
            $HomeTeamResult = $JsonParameters.PSobject.Properties['home_team_result'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'away_team_code'))) {
            throw "Error! JSON cannot be serialized due to the required property 'away_team_code' missing."
        } else {
            $AwayTeamCode = $JsonParameters.PSobject.Properties['away_team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'away_team_result'))) {
            throw "Error! JSON cannot be serialized due to the required property 'away_team_result' missing."
        } else {
            $AwayTeamResult = $JsonParameters.PSobject.Properties['away_team_result'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'game_center_active'))) {
            throw "Error! JSON cannot be serialized due to the required property 'game_center_active' missing."
        } else {
            $GameCenterActive = $JsonParameters.PSobject.Properties['game_center_active'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'played'))) {
            throw "Error! JSON cannot be serialized due to the required property 'played' missing."
        } else {
            $Played = $JsonParameters.PSobject.Properties['played'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'overtime'))) {
            throw "Error! JSON cannot be serialized due to the required property 'overtime' missing."
        } else {
            $Overtime = $JsonParameters.PSobject.Properties['overtime'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'penalty_shots'))) {
            throw "Error! JSON cannot be serialized due to the required property 'penalty_shots' missing."
        } else {
            $PenaltyShots = $JsonParameters.PSobject.Properties['penalty_shots'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'ticket_url'))) {
            throw "Error! JSON cannot be serialized due to the required property 'ticket_url' missing."
        } else {
            $TicketUrl = $JsonParameters.PSobject.Properties['ticket_url'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'tv_channels'))) {
            throw "Error! JSON cannot be serialized due to the required property 'tv_channels' missing."
        } else {
            $TvChannels = $JsonParameters.PSobject.Properties['tv_channels'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'venue'))) {
            throw "Error! JSON cannot be serialized due to the required property 'venue' missing."
        } else {
            $Venue = $JsonParameters.PSobject.Properties['venue'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'period_results'))) {
            #optional property not found
            $PeriodResults = $null
        } else {
            $PeriodResults = $JsonParameters.PSobject.Properties['period_results'].value
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

        $PSO = [PSCustomObject]@{
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
