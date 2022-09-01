$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDImageZoom {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDComponent -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Path,
        [Parameter()]
        [int]$Zoom,
        [Parameter()]
        [int]$Height,
        [Parameter()]
        [int]$Width
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udimagezoom"
            id = $Id

            img = $Path
            zoomScale = $Zoom
            height = $Height
            width = $Width
        }
    }
}