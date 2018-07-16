<#
.SYNOPSIS
    Generates a random Password from the Password state generator API
.DESCRIPTION
    Generates a random Password from the Password state generator API
.EXAMPLE
    PS C:\> New-RandomPassword
.PARAMETER passwordgeneratorID
    The ID to of the password generator settings (optional)
.INPUTS
    PasswordGeneratorID - Optional parameter if you want to generate a more or less secure password.
.OUTPUTS
    A string value of the generated password.
.NOTES
    Daryl Newsholme 2019
#>
function New-RandomPassword {
    [CmdletBinding()]
    param (
        [parameter(ValueFromPipelineByPropertyName, Position = 0)]$passwordGeneratorID
    )
    
    begin {
    }
    
    process {
        $output = Get-PasswordStateResource -uri "/api/generatepassword"
    }
    
    end {
        return $output
    }
}