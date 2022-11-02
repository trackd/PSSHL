# ArticleAuthor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | Title of the author | 
**Name** | **String** | Name of the author | 
**Email** | **String** | Email address to the author | 

## Examples

- Prepare the resource
```powershell
$ArticleAuthor = Initialize-PSSHLArticleAuthor  -Title null `
 -Name null `
 -Email null
```

- Convert the resource to JSON
```powershell
$ArticleAuthor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

