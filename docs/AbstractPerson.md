# AbstractPerson
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstName** | **String** | The first name of the person | [optional] 
**LastName** | **String** | The last name of the person | [optional] 
**Nationality** | **String** | The nationality of the person | [optional] 
**ShortDescription** | **String** | A short description of the person | [optional] 

## Examples

- Prepare the resource
```powershell
$AbstractPerson = Initialize-PSSHLAbstractPerson  -FirstName null `
 -LastName null `
 -Nationality null `
 -ShortDescription null
```

- Convert the resource to JSON
```powershell
$AbstractPerson | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

