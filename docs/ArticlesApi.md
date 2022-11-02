# PSSHL.PSSHL/Api.ArticlesApi

All URIs are relative to *https://openapi.shl.se*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Articles**](ArticlesApi.md#Get-Articles) | **GET** /articles.json | Get a list of the latest articles


<a name="Get-Articles"></a>
# **Get-Articles**
> Article[] Get-Articles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get a list of the latest articles

Returns a list of the latest articles for SHL, can be filtered by selecting a list of teams

### Example
```powershell
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the list be based on (optional)

# Get a list of the latest articles
try {
    $Result = Get-Articles -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-Articles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the list be based on | [optional] 

### Return type

[**Article[]**](Article.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

