# Fact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Golds** | **String** | The golds the team have won | 
**Founded** | **Int32** | The year the team was founded | 
**Finals** | **String** | A list of the finals the team have played | 
**Holy** | **String** | A list of holy numbers in the team | 
**Chairman** | **String** | Chairman of the team | 
**President** | **String** | President of the team | 
**TeamCode** | **String** | The team code of the team | 
**Fact** | [**Fact**](Fact.md) |  | [optional] 
**Contact** | [**Contact**](Contact.md) |  | 
**Accreditation** | [**Accreditation**](Accreditation.md) |  | 

## Examples

- Prepare the resource
```powershell
$Fact = Initialize-PSSHLFact  -Golds null `
 -Founded null `
 -Finals null `
 -Holy null `
 -Chairman null `
 -President null `
 -TeamCode null `
 -Fact null `
 -Contact null `
 -Accreditation null
```

- Convert the resource to JSON
```powershell
$Fact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

