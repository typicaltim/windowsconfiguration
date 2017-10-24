    # This goes in C:\{user}\documents\WindowsPowerShell\

function prompt
{
    # Notes
    # --------------------------------------------------------------------------
    # http://windowsitpro.com/powershell/powershell-basics-console-configuration
    # --------------------------------------------------------------------------

    # Basic Prompt Configuration
    # ----------------------------------
    # $console.ForegroundColor = "Wheat"
    # $console.BackgroundColor = "black"
    $promptbackgroundcolor = "White"
    $promptforegroundcolor = "Black"
    Write-Host "[$env:UserName] @ [$env:COMPUTERNAME] in "-nonewline; Write-Host " [$(Get-Location)] " -nonewline -ForegroundColor $promptforegroundcolor -backgroundcolor $promptbackgroundcolor
    return " (>^.^)> "
   
    $buffer = $console.BufferSize
    $buffer.Width = 130
    $buffer.Height = 2000
    $console.BufferSize = $buffer
   
    $size = $console.WindowSize
    $size.Width = 150
    $size.Height = 50
    $console.WindowSize = $size
   

    $colors = $host.PrivateData
    $colors.VerboseForegroundColor = "white"
    $colors.VerboseBackgroundColor = "blue"
    $colors.WarningForegroundColor = "yellow"
    $colors.WarningBackgroundColor = "darkgreen"
    $colors.ErrorForegroundColor = "white"
    $colors.ErrorBackgroundColor = "red"
}
