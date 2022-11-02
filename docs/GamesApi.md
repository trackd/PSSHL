# PSSHL.PSSHL/Api.GamesApi

All URIs are relative to *https://openapi.shl.se*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Game**](GamesApi.md#Get-Game) | **GET** /seasons/{season}/games/{gameId}.json | Get the information about a specific game
[**Get-Games**](GamesApi.md#Get-Games) | **GET** /seasons/{season}/games.json | Get the games for selected season


<a name="Get-Game"></a>
# **Get-Game**
> GameReport Get-Game<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GameId] <String><br>

Get the information about a specific game

Get the information about a specific game, this include live information about game that have been started or played

### Example
```powershell
$Season = 56 # Int32 | Season to be used, i.e. '2015' for the SHL season 2015/2016
$GameId = "MyGameId" # String | Id of the game to get information of

# Get the information about a specific game
try {
    $Result = Get-Game -Season $Season -GameId $GameId
} catch {
    Write-Host ("Exception occurred when calling Get-Game: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Season** | **Int32**| Season to be used, i.e. &#39;2015&#39; for the SHL season 2015/2016 | 
 **GameId** | **String**| Id of the game to get information of | 

### Return type

[**GameReport**](GameReport.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Games"></a>
# **Get-Games**
> Game[] Get-Games<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TeamIds] <String[]><br>

Get the games for selected season

Returns a list of games for selected season

### Example
```powershell
$Season = 56 # Int32 | Season to be used, i.e. '2015' for the SHL season 2015/2016
$TeamIds = "MyTeamIds" # String[] | For which team(s) should the list be based on (optional)

# Get the games for selected season
try {
    $Result = Get-Games -Season $Season -TeamIds $TeamIds
} catch {
    Write-Host ("Exception occurred when calling Get-Games: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Season** | **Int32**| Season to be used, i.e. &#39;2015&#39; for the SHL season 2015/2016 | 
 **TeamIds** | [**String[]**](String.md)| For which team(s) should the list be based on | [optional] 

### Return type

[**Game[]**](Game.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

