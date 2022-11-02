#
# Öppet API för SHL
# Version: 1.0
# Contact: support@shl.se
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ArticleId
Id of the article
.PARAMETER Title
Title of the article
.PARAMETER Intro
Intro of the article
.PARAMETER Author
No description available.
.PARAMETER PublishDate
 of the article
.PARAMETER ArticleUrl
URL to the whole article
.PARAMETER TeamCode
Team code of the team the article belongs to
.OUTPUTS

Article<PSCustomObject>
#>

function Initialize-Article {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArticleId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Intro},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${PublishDate},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArticleUrl},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TeamCode}
    )

    Process {
        'Creating PSCustomObject: PSSHL => Article' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ArticleId) {
            throw "invalid value for 'ArticleId', 'ArticleId' cannot be null."
        }

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }

        if ($null -eq $Author) {
            throw "invalid value for 'Author', 'Author' cannot be null."
        }

        if ($null -eq $PublishDate) {
            throw "invalid value for 'PublishDate', 'PublishDate' cannot be null."
        }

        if ($null -eq $ArticleUrl) {
            throw "invalid value for 'ArticleUrl', 'ArticleUrl' cannot be null."
        }

        if ($null -eq $TeamCode) {
            throw "invalid value for 'TeamCode', 'TeamCode' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'article_id'   = ${ArticleId}
            'title'        = ${Title}
            'intro'        = ${Intro}
            'author'       = ${Author}
            'publish_date' = ${PublishDate}
            'article_url'  = ${ArticleUrl}
            'team_code'    = ${TeamCode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Article<PSCustomObject>

.DESCRIPTION

Convert from JSON to Article<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Article<PSCustomObject>
#>
function ConvertFrom-JsonToArticle {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSHL => Article' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Article
        $AllProperties = ('article_id', 'title', 'intro', 'author', 'publish_date', 'article_url', 'team_code')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq '{}') {
            # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'article_id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'article_id'))) {
            throw "Error! JSON cannot be serialized due to the required property 'article_id' missing."
        } else {
            $ArticleId = $JsonParameters.PSobject.Properties['article_id'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'title'))) {
            throw "Error! JSON cannot be serialized due to the required property 'title' missing."
        } else {
            $Title = $JsonParameters.PSobject.Properties['title'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'author'))) {
            throw "Error! JSON cannot be serialized due to the required property 'author' missing."
        } else {
            $Author = $JsonParameters.PSobject.Properties['author'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'publish_date'))) {
            throw "Error! JSON cannot be serialized due to the required property 'publish_date' missing."
        } else {
            $PublishDate = $JsonParameters.PSobject.Properties['publish_date'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'article_url'))) {
            throw "Error! JSON cannot be serialized due to the required property 'article_url' missing."
        } else {
            $ArticleUrl = $JsonParameters.PSobject.Properties['article_url'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'team_code'))) {
            throw "Error! JSON cannot be serialized due to the required property 'team_code' missing."
        } else {
            $TeamCode = $JsonParameters.PSobject.Properties['team_code'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'intro'))) {
            #optional property not found
            $Intro = $null
        } else {
            $Intro = $JsonParameters.PSobject.Properties['intro'].value
        }

        $PSO = [PSCustomObject]@{
            'article_id'   = ${ArticleId}
            'title'        = ${Title}
            'intro'        = ${Intro}
            'author'       = ${Author}
            'publish_date' = ${PublishDate}
            'article_url'  = ${ArticleUrl}
            'team_code'    = ${TeamCode}
        }

        return $PSO
    }

}

