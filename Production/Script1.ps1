<#
.Synopsis
   This is an example of creating a function in PowerShell
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.AUTHOR DETAILS
    Author            : Sagar Khetwani
    Bits Roll No.     : 2018HW86643
#>
function Display-name
{
    [CmdletBinding()]
    
    [OutputType([String])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true)]$username
    )

    Begin
    {
        $statement = "My name is:"
    }
    Process
    {
        $output = $statement + "$username"
    }
    End
    {
        return $output
    }
}
Display-name -username 'sagar'
