# Teams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Facts** | [**Fact**](Fact.md) |  | 
**Players** | [**Player[]**](Player.md) | List of players belonging to the team | 
**Staff** | [**Staff[]**](Staff.md) | List of staff members belonging to the team | 

## Examples

- Prepare the resource
```powershell
$Teams = Initialize-PSSHLTeams  -Facts null `
 -Players null `
 -Staff null
```

- Convert the resource to JSON
```powershell
$Teams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

