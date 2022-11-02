# Video
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VideoId** | **Int32** | Id of the video | 
**Length** | **Int32** | Length of the video in seconds | 
**Name** | **String** | Name of the video | 
**TeamCode** | **String** | Team code of the team the video belongs too | 
**ShortDescription** | **String** | A description of the video | 
**PublishDate** | **System.DateTime** | Publish date of the video | 
**VideoPlaybackUrl** | **String** | URL to the playback of the video | 

## Examples

- Prepare the resource
```powershell
$Video = Initialize-PSSHLVideo  -VideoId null `
 -Length null `
 -Name null `
 -TeamCode null `
 -ShortDescription null `
 -PublishDate null `
 -VideoPlaybackUrl null
```

- Convert the resource to JSON
```powershell
$Video | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

