# This goes in C:\{user}\documents\WindowsPowerShell\

$PSProfileData = @{
    Prompt = @(
        @{
            BackgroundColor = 'x'
            PSWMFVersion = -Join ($($PSVersionTable.PSVersion.Major,'.', $($PSVersionTable.PSVersion.Minor)))
        }
    )
}

# Prompt
function prompt {
    $PSLocation = Get-Location | Split-Path -Leaf
    If ((Get-Location).Drive.Name -ne $env:SystemDrive.Chars(0)) {
        $PSLocationColor = 'Red'
    }
    Else {
        $PSLocationColor = 'Cyan'
    }
    Write-Host ("[" + "PSv" + $PSProfileData.Prompt.PSWMFVersion + "] ") -NoNewLine
    Write-Host ("[" + $PSLocation + "]") -NoNewLine -ForegroundColor $PSLocationColor
    return " $ "
}