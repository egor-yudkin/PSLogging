<#
.SYNOPSIS
  <Overview of script>

.DESCRIPTION
  <Brief description of script>

.PARAMETER <Parameter_Name>
  <Brief description of parameter input required. Repeat this attribute if required>

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS
  <Outputs if any, otherwise state None>

.NOTES
  Version:        1.0
  Author:         <Name>
  Creation Date:  <Date>
  Purpose/Change: Initial script development

.EXAMPLE
  <Example explanation goes here>
  
  <Example goes here. Repeat this attribute for more than one example>
#>

#Requires -Version 3

#region [Script Parameters]
#---------------------------------------------------------------------------------------------------------------

[CmdletBinding()]
Param (
  #Script parameters go here
)

#endregion

begin 
{
    #region [Initializations]
    #-----------------------------------------------------------------------------------------------------------------

    #Set Error Action to Stop to allow error handling with try/catch
    $ErrorActionPreference = 'Stop'

    #endregion

    #region [Declarations]
    #--------------------------------------------------------------------------------------------------------------------

    #Any Global Declarations go here

    #endregion

    #region [Functions]
    #-----------------------------------------------------------------------------------------------------------------------

    <#

    Function <FunctionName> {
      Param ()

      Begin {
        Write-Host '<description of what is going on>...'
      }

      Process {
        Try {
          <code goes here>
        }

        Catch {
          Write-Host -BackgroundColor Red "Error: $($_.Exception)"
          Break
        }
      }

      End {
        If ($?) {
          Write-Host 'Completed Successfully.'
          Write-Host ' '
        }
      }
    }

    #>

    #endregion
}

process
{
    #region [Execution]
    #-----------------------------------------------------------------------------------------------------------------------

    #Script Execution goes here

    #endregion
}
