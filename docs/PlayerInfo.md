# PlayerInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlayerId** | **Int32** | Id of the player | 
**FirstName** | **String** | First name of the player | 
**LastName** | **String** | Last name of the player | 
**Number** | **Int32** | The jersey of the player | 
**Position** | **String** | The position of the player | 
**Birthdate** | **String** | The birthdate of the player | 
**Height** | **Int32** | The height of the player (in centimeters) | 
**Nationality** | **String** | The nationality of the player | 
**Team** | [**Team**](Team.md) |  | 
**Teams** | **String[]** | An array of team codes the player have played for during the selected season | 
**TeamCode** | **String** | The team code of the team the player belongs to | 
**Weight** | **Int32** | The weight of the player (in kilograms) | 

## Examples

- Prepare the resource
```powershell
$PlayerInfo = Initialize-PSSHLPlayerInfo  -PlayerId null `
 -FirstName null `
 -LastName null `
 -Number null `
 -Position null `
 -Birthdate null `
 -Height null `
 -Nationality null `
 -Team null `
 -Teams null `
 -TeamCode null `
 -Weight null
```

- Convert the resource to JSON
```powershell
$PlayerInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

