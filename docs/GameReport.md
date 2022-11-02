# GameReport
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Live** | [**Live**](Live.md) |  | 
**GameId** | **Int32** | Id of the game | [optional] 
**GameUuid** | **String** | Id of the game | [optional] 
**Season** | **String** | Season of the game | [optional] 
**Series** | **String** | The series the game belongs to | [optional] 
**GameType** | **String** | Type of game | [optional] 
**RoundNumber** | **Int32** | Round number of the game | [optional] 
**StartDateTime** | **System.DateTime** | Date and time of the game | [optional] 
**HomeTeamCode** | **String** | Team code of the home team | [optional] 
**HomeTeamResult** | **Int32** | Result of the home team | [optional] 
**AwayTeamCode** | **String** | Team code of the away team | [optional] 
**AwayTeamResult** | **Int32** | Result of the away team | [optional] 
**PeriodResults** | **String** | Period result of the game | [optional] 
**GameCenterActive** | **Boolean** | Is the game center activated for this game | [optional] 
**Played** | **Boolean** | Is the game already played | [optional] 
**Overtime** | **Boolean** | Was the game won in overtime | [optional] 
**PenaltyShots** | **Boolean** | Was the game won on penalty shoot-out | [optional] 
**TicketUrl** | **String** | URL where tickets can be bought | [optional] 
**GameCenterUrlDesktop** | **String** | URL to the live feed of the game | [optional] 
**GameCenterUrlMobile** | **String** | URL to the live feed of the game | [optional] 
**TvChannels** | **String[]** | List of TV channels the game will be broadcasted on | [optional] 
**Venue** | **String** | Venue where the game will be/was played | [optional] 

## Examples

- Prepare the resource
```powershell
$GameReport = Initialize-PSSHLGameReport  -Live null `
 -GameId null `
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
$GameReport | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

