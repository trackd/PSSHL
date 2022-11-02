# Article
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArticleId** | **String** | Id of the article | 
**Title** | **String** | Title of the article | 
**Intro** | **String** | Intro of the article | [optional] 
**Author** | [**ArticleAuthor**](ArticleAuthor.md) |  | 
**PublishDate** | **System.DateTime** |  of the article | 
**ArticleUrl** | **String** | URL to the whole article | 
**TeamCode** | **String** | Team code of the team the article belongs to | 

## Examples

- Prepare the resource
```powershell
$Article = Initialize-PSSHLArticle  -ArticleId null `
 -Title null `
 -Intro null `
 -Author null `
 -PublishDate null `
 -ArticleUrl null `
 -TeamCode null
```

- Convert the resource to JSON
```powershell
$Article | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

