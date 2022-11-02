# Staff
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StaffId** | **String** | The id of the person | 
**Title** | **String** | Title of the person | 
**FirstName** | **String** | The first name of the person | 
**LastName** | **String** | The last name of the person | 
**Nationality** | **String** | The nationality of the person | 
**ShortDescription** | **String** | A short description of the person | [optional] 

## Examples

- Prepare the resource
```powershell
$Staff = Initialize-PSSHLStaff  -StaffId null `
 -Title null `
 -FirstName null `
 -LastName null `
 -Nationality null `
 -ShortDescription null
```

- Convert the resource to JSON
```powershell
$Staff | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

