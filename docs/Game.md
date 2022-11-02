# Game
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GameId** | **Int32** | Id of the game | 
**GameUuid** | **String** | Id of the game | 
**Season** | **String** | Season of the game | 
**Series** | **String** | The series the game belongs to | 
**GameType** | **String** | Type of game | 
**RoundNumber** | **Int32** | Round number of the game | 
**StartDateTime** | **System.DateTime** | Date and time of the game | 
**HomeTeamCode** | **String** | Team code of the home team | 
**HomeTeamResult** | **Int32** | Result of the home team | 
**AwayTeamCode** | **String** | Team code of the away team | 
**AwayTeamResult** | **Int32** | Result of the away team | 
**PeriodResults** | **String** | Period result of the game | [optional] 
**GameCenterActive** | **Boolean** | Is the game center activated for this game | 
**Played** | **Boolean** | Is the game already played | 
**Overtime** | **Boolean** | Was the game won in overtime | 
**PenaltyShots** | **Boolean** | Was the game won on penalty shoot-out | 
**TicketUrl** | **String** | URL where tickets can be bought | 
**GameCenterUrlDesktop** | **String** | URL to the live feed of the game | [optional] 
**GameCenterUrlMobile** | **String** | URL to the live feed of the game | [optional] 
**TvChannels** | **String[]** | List of TV channels the game will be broadcasted on | 
**Venue** | **String** | Venue where the game will be/was played | 

## Examples

- Prepare the resource
```powershell
$Game = Initialize-PSSHLGame  -GameId null `
 -GameUuid null `
 -Season null `
 -Series null `
 -GameType null `
 -RoundNumber null `
 -StartDateTime null `
 -HomeTeamCode null `
 -HomeTeamResult null `
 -AwayTeamCode null `
 -AwayTeamResult null `
 -PeriodResults null `
 -GameCenterActive null `
 -Played null `
 -Overtime null `
 -PenaltyShots null `
 -TicketUrl null `
 -GameCenterUrlDesktop null `
 -GameCenterUrlMobile null `
 -TvChannels null `
 -Venue null
```

- Convert the resource to JSON
```powershell
$Game | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

