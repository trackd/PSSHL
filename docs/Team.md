# Team
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the team | 
**Code** | **String** | The team code of the team | 

## Examples

- Prepare the resource
```powershell
$Team = Initialize-PSSHLTeam  -Id null `
 -Code null
```

- Convert the resource to JSON
```powershell
$Team | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

