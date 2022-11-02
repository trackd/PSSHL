# PSSHL.PSSHL/Api.TeamsApi

All URIs are relative to *https://openapi.shl.se*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-TeamInformation**](TeamsApi.md#Get-TeamInformation) | **GET** /teams/{teamCode}.json | Get the players, staff members and team facts of selected team
[**Get-teams**](TeamsApi.md#Get-teams) | **GET** /teams.json | Get the teams currently active in SHL


<a name="Get-TeamInformation"></a>
# **Get-TeamInformation**
> Teams Get-TeamInformation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamCode] <String><br>

Get the players, staff members and team facts of selected team

Returns the team information, including the staff and players belonging to the team

### Example
```powershell
$TeamCode = "MyTeamCode" # String | Team for which to get staff for

# Get the players, staff members and team facts of selected team
try {
    $Result = Get-TeamInformation -TeamCode $TeamCode
} catch {
    Write-Host ("Exception occurred when calling Get-TeamInformation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TeamCode** | **String**| Team for which to get staff for | 

### Return type

[**Teams**](Teams.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-teams"></a>
# **Get-teams**
> Fact[] Get-teams<br>

Get the teams currently active in SHL

Returns a list of active teams in SHL

### Example
```powershell

# Get the teams currently active in SHL
try {
    $Result = Get-teams
} catch {
    Write-Host ("Exception occurred when calling Get-teams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Fact[]**](Fact.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

