# TeamStandings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GP** | **Int32** | The number of games the team have played | 
**Rank** | **Int32** | The rank of the team for the selected season | 
**Team** | [**Team**](Team.md) |  | 
**TeamCode** | **String** | Team code of the team for the selected season | 
**Diff** | **Int32** | The difference in goals forward and goals against for the selected season | 
**G** | **Int32** | Goals made for the selected season | 
**GA** | **Int32** | Goals against for the selected season | 
**NonRegL** | **Int32** | The number of games lost in overtime or penalty shoot out,1 point where taken, for the selected season | 
**NonRegNonW** | **Int32** | The number of games not won in overtime or penalty shoot out,1 point where taken, for the selected season | 
**NonRegT** | **Int32** | The number of games tied after overtime, for the selected season | 
**NonRegW** | **Int32** | The number of games won in overtime or penalty shoot out, 2 point where taken, for the selected season | 
**OTL** | **Int32** | The number of games lost in overtime, 1 point where taken, for the selected season | 
**OTT** | **Int32** | The number of games that where still tied after overtime for the selected season | 
**OTW** | **Int32** | The number of games won in overtime, 2 points where taken, for the selected season | 
**Points** | **Int32** | The number of points the team had/have for the selected season | 
**RegL** | **Int32** | The number of games lost in regular time for the selected season | 
**RegT** | **Int32** | The number of games tied in regular time for the selected season | 
**RegW** | **Int32** | The number of games won in regular time, 3 points taken, for the selected season | 
**SOL** | **Int32** | The number of games lost in penalty shoot out, 1 point taken, for the selected season | 
**SOW** | **Int32** | The number of games won in penalty shoot out, 2 points taken, for the selected season | 

## Examples

- Prepare the resource
```powershell
$TeamStandings = Initialize-PSSHLTeamStandings  -GP null `
 -Rank null `
 -Team null `
 -TeamCode null `
 -Diff null `
 -G null `
 -GA null `
 -NonRegL null `
 -NonRegNonW null `
 -NonRegT null `
 -NonRegW null `
 -OTL null `
 -OTT null `
 -OTW null `
 -Points null `
 -RegL null `
 -RegT null `
 -RegW null `
 -SOL null `
 -SOW null
```

- Convert the resource to JSON
```powershell
$TeamStandings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

