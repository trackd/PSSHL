# PSSHL.PSSHL/Api.VideosApi

All URIs are relative to *https://openapi.shl.se*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Videos**](VideosApi.md#Get-Videos) | **GET** /videos.json | Get a list of the latest videos from SHL play


<a name="Get-Videos"></a>
# **Get-Videos**
> Video[] Get-Videos<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get a list of the latest videos from SHL play

Returns a list of the latest videos from SHL, can be filtered by selecting a list of teams. Videos must not be embedded and playable on any other website than SHL.se or any SHL team website.

### Example
```powershell
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the list be based on (optional)

# Get a list of the latest videos from SHL play
try {
    $Result = Get-Videos -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-Videos: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the list be based on | [optional] 

### Return type

[**Video[]**](Video.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

