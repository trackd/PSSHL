# GoalkeeperStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlayerId** | **Int32** | Id of the player | 
**Info** | [**PlayerInfo**](PlayerInfo.md) |  | 
**GP** | **Int32** | The number of games the goalkeeper was on the line up during the selected season | 
**GPI** | **Int32** | The number of games the goalkeeper was actually on ice during the selected season | 
**Rank** | **Int32** | The ranking of the goalkeeper based on the sorting order for the selected season | 
**GA** | **Int32** | The number of goals against the goalkeeper during the selected season | 
**GAA** | **Int32** | The average of goals against the goalkeeper per 60 minutes on ice during the selected season | 
**GS** | **Int32** | The number of games the goalkeeper started in during the selected season | 
**L** | **Int32** | The number of lost games for the goalkeeper during the selected season | 
**MIP** | **String** |  the goalkeeper during the selected season | 
**SO** | **Int32** | The number of games the goalkeeper didnt have any goals against during the selected season | 
**SOGA** | **Int32** | The number of shoots against the goal including goals for the goalkeeper during the selected season | 
**SVS** | **Int32** | The number of saves the goalkeeper have made during the selected season | 
**SVSPerc** | **Int32** | The saves percentage of the goalkeeper during the selected season | 
**T** | **Int32** | The number of tied games for the goalkeeper during the selected season | 
**ValidRanking** | **Boolean** | Is the ranking valid for the goalkeeper during the selected season, e.g. the number of games is enough for the statistics to be correctly calculated | 
**W** | **Int32** | The number of won games for the goalkeeper during the selected season | 

## Examples

- Prepare the resource
```powershell
$GoalkeeperStatistics = Initialize-PSSHLGoalkeeperStatistics  -PlayerId null `
 -Info null `
 -GP null `
 -GPI null `
 -Rank null `
 -GA null `
 -GAA null `
 -GS null `
 -L null `
 -MIP null `
 -SO null `
 -SOGA null `
 -SVS null `
 -SVSPerc null `
 -T null `
 -ValidRanking null `
 -W null
```

- Convert the resource to JSON
```powershell
$GoalkeeperStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

