# Player
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlayerId** | **String** | The id of the player | 
**DefaultJersey** | **Int32** | The default jersey of the player | 
**ShootsRight** | **Boolean** | Indicates if the player is a right shooter | 
**Shoots** | **String** | Indicates from what side player is shooting | [optional] 
**Position** | **String** | The position of the player | 
**Captain** | **Boolean** | Indicates if the player is the captain of the team | 
**Assistant** | **Boolean** | Indicates if the player is an assistant captain of the team | 
**Height** | **Int32** | Height of the player in centimeter | 
**Weight** | **Int32** | Weight of the player in kilogram | 
**DateOfBirth** | **String** | Date of birth of the player (YYYY-mm-dd) | 
**PlayerUrlDesktop** | **String** | URL to get more information about the player (desktop version) | 
**PlayerUrlMobile** | **String** | URL to get more information about the player (mobile version) | 
**FirstName** | **String** | The first name of the person | 
**LastName** | **String** | The last name of the person | 
**Nationality** | **String** | The nationality of the person | 
**ShortDescription** | **String** | A short description of the person | [optional] 

## Examples

- Prepare the resource
```powershell
$Player = Initialize-PSSHLPlayer  -PlayerId null `
 -DefaultJersey null `
 -ShootsRight null `
 -Shoots null `
 -Position null `
 -Captain null `
 -Assistant null `
 -Height null `
 -Weight null `
 -DateOfBirth null `
 -PlayerUrlDesktop null `
 -PlayerUrlMobile null `
 -FirstName null `
 -LastName null `
 -Nationality null `
 -ShortDescription null
```

- Convert the resource to JSON
```powershell
$Player | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

