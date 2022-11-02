# PlayerStatistics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlayerId** | **Int32** | Id of the player | 
**GP** | **Int32** | The number of games the player have participated in during the selected season | 
**Info** | [**PlayerInfo**](PlayerInfo.md) |  | 
**Rank** | **Int32** | The rank of the player based on sort order for the selected season | 
**TOI** | **Int32** | The totalt number of seconds the player have been on ice during the selected season | 
**TOIGP** | **String** | The average time the player have been on ice during played games for the selected season, format MM:SS | 
**A** | **Int32** | The number of assists the player have done during the selected season | 
**BkS** | **Int32** | The number of blocked shots the player have done during the selected season | 
**G** | **Int32** | The number of goals the player have done during the selected season | 
**GWG** | **Int32** | The number of game winning goals the player have done during the selected season | 
**Hits** | **Int32** | The number of hits the player have done during the selected season | 
**Minus** | **Int32** | The number of goals against the player have been on ice during the selected season | 
**PIM** | **Int32** | The number of minutes the player have been penaliced for during the selected season | 
**PPG** | **Int32** | The number of power play goals the player have done during the selected season | 
**Plus** | **Int32** | The number of goals forward the player have been on ice during the selected season | 
**PlusMinus** | **Int32** | The number of goals forward/against the player have been on ice during the selected season | 
**SOG** | **Int32** | The number of shots on goal the player have done during the selected season | 
**TP** | **Int32** | The number of points the player have done during the selected season | 

## Examples

- Prepare the resource
```powershell
$PlayerStatistics = Initialize-PSSHLPlayerStatistics  -PlayerId null `
 -GP null `
 -Info null `
 -Rank null `
 -TOI null `
 -TOIGP null `
 -A null `
 -BkS null `
 -G null `
 -GWG null `
 -Hits null `
 -Minus null `
 -PIM null `
 -PPG null `
 -Plus null `
 -PlusMinus null `
 -SOG null `
 -TP null
```

- Convert the resource to JSON
```powershell
$PlayerStatistics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

