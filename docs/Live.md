# Live
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gametime** | **String** | Time into the period of the game ii:ss | 
**TimePeriod** | **Int32** | Time into the period of the game in seconds | 
**GameId** | **Int32** | Id of the game | 
**Period** | **Int32** | Period of the game | 
**Round** | **Int32** | Round number of the game | 
**HomeTeamCode** | **String** | Team code of the home team | 
**HomeScore** | **Int32** | Score of the home team | 
**AwayTeamCode** | **String** | Team code of the away team | 
**AwayScore** | **Int32** | Score of the away team | 
**Venue** | **String** | Name of the venue where the game is played | 
**Attendance** | **Int32** | The number of attendance of the game | 
**StatusString** | **String** | The status of the game | 

## Examples

- Prepare the resource
```powershell
$Live = Initialize-PSSHLLive  -Gametime null `
 -TimePeriod null `
 -GameId null `
 -Period null `
 -Round null `
 -HomeTeamCode null `
 -HomeScore null `
 -AwayTeamCode null `
 -AwayScore null `
 -Venue null `
 -Attendance null `
 -StatusString null
```

- Convert the resource to JSON
```powershell
$Live | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

