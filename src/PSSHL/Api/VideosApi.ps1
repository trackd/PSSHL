#
# Öppet API för SHL
# Version: 1.0
# Contact: support@shl.se
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get a list of the latest videos from SHL play

.DESCRIPTION

No description available.

.PARAMETER TeamIds
For which team(s) should the list be based on

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Video[]
#>
function Get-Videos {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${TeamIds},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-Videos' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/videos.json'

        if ($TeamIds) {
            $LocalVarQueryParameters['teamIds[]'] = $TeamIds
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
            -Uri $LocalVarUri `
            -Accepts $LocalVarAccepts `
            -ContentTypes $LocalVarContentTypes `
            -Body $LocalVarBodyParameter `
            -HeaderParameters $LocalVarHeaderParameters `
            -QueryParameters $LocalVarQueryParameters `
            -FormParameters $LocalVarFormParameters `
            -CookieParameters $LocalVarCookieParameters `
            -ReturnType 'Video[]' `
            -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult['Response']
        }
    }
}

