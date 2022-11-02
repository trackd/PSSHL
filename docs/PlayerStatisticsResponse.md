# PlayerStatisticsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlayerStatistics** | [**PlayerStatistics**](PlayerStatistics.md) |  | 
**Metadata** | **String[]** | The number of games the player have participated in during the selected season | 

## Examples

- Prepare the resource
```powershell
$PlayerStatisticsResponse = Initialize-PSSHLPlayerStatisticsResponse  -PlayerStatistics null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$PlayerStatisticsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

