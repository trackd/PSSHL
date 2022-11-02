# PSSHL.PSSHL/Api.StatisticsApi

All URIs are relative to *https://openapi.shl.se*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GoalkeeperStatistics**](StatisticsApi.md#Get-GoalkeeperStatistics) | **GET** /seasons/{season}/statistics/goalkeepers.json | Get a top list of goalkeepers statistics
[**Get-PlayersStatistics**](StatisticsApi.md#Get-PlayersStatistics) | **GET** /seasons/{season}/statistics/players.json | Get a top list of player statistics
[**Get-TeamsStandings**](StatisticsApi.md#Get-TeamsStandings) | **GET** /seasons/{season}/statistics/teams/standings.json | Get the team standings for selected season


<a name="Get-GoalkeeperStatistics"></a>
# **Get-GoalkeeperStatistics**
> GoalkeeperStatistics[] Get-GoalkeeperStatistics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get a top list of goalkeepers statistics

Returns an array of top goalkeepers ordered by selection. No more than 10 goalkeepers will be returned at any time.

### Example
```powershell
$Season = 56 # Int32 | Season to be used, i.e. '2019' for the SHL season 2019/2020
$Sort = "MySort" # String | Order of which the top list should be sorted, can be any of the following valued saves, savesPercent, goalsAgainst, goalsAgainstAverage, won, tied, lost, shooutOuts or minutesInPlay (optional) (default to "assists")
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the top list be based on (optional)

# Get a top list of goalkeepers statistics
try {
    $Result = Get-GoalkeeperStatistics -Season $Season -Sort $Sort -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-GoalkeeperStatistics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Season** | **Int32**| Season to be used, i.e. &#39;2019&#39; for the SHL season 2019/2020 | 
 **Sort** | **String**| Order of which the top list should be sorted, can be any of the following valued saves, savesPercent, goalsAgainst, goalsAgainstAverage, won, tied, lost, shooutOuts or minutesInPlay | [optional] [default to &quot;assists&quot;]
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the top list be based on | [optional] 

### Return type

[**GoalkeeperStatistics[]**](GoalkeeperStatistics.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PlayersStatistics"></a>
# **Get-PlayersStatistics**
> PlayerStatistics[] Get-PlayersStatistics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get a top list of player statistics

Returns an array of top players ordered by selection. No more than 10 players will be returned at any time.

### Example
```powershell
$Season = 56 # Int32 | Season to be used, i.e. '2019' for the SHL season 2019/2020
$Sort = "MySort" # String | Order of which the top list should be sorted, can be one of the following values assists, goals, points, pim, hits or plusminus (optional) (default to "assists")
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the top list be based on (optional)

# Get a top list of player statistics
try {
    $Result = Get-PlayersStatistics -Season $Season -Sort $Sort -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-PlayersStatistics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Season** | **Int32**| Season to be used, i.e. &#39;2019&#39; for the SHL season 2019/2020 | 
 **Sort** | **String**| Order of which the top list should be sorted, can be one of the following values assists, goals, points, pim, hits or plusminus | [optional] [default to &quot;assists&quot;]
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the top list be based on | [optional] 

### Return type

[**PlayerStatistics[]**](PlayerStatistics.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-TeamsStandings"></a>
# **Get-TeamsStandings**
> TeamStandings[] Get-TeamsStandings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get the team standings for selected season

Returns an array of teams and their statistics

### Example
```powershell
$Season = 56 # Int32 | Season to be used, i.e. '2019' for the SHL season 2019/2020
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the top list be based on (optional)

# Get the team standings for selected season
try {
    $Result = Get-TeamsStandings -Season $Season -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-TeamsStandings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Season** | **Int32**| Season to be used, i.e. &#39;2019&#39; for the SHL season 2019/2020 | 
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the top list be based on | [optional] 

### Return type

[**TeamStandings[]**](TeamStandings.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

