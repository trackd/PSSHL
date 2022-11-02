# Contact
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | Address to the team | 
**Phone** | **String** | Phone number to the team | 
**Email** | **String** | Email address to the team | 

## Examples

- Prepare the resource
```powershell
$Contact = Initialize-PSSHLContact  -Address null `
 -Phone null `
 -Email null
```

- Convert the resource to JSON
```powershell
$Contact | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

