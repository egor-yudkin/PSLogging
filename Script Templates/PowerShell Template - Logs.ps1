<#
.SYNOPSIS
  <Overview of script>

.DESCRIPTION
  <Brief description of script>

.PARAMETER LogPath
    Path to the folder for storing a log file. Cannot be used together with LogFile parameter

.PARAMETER LogName
    Name of a log file. Cannot be used together with LogFile parameter

.PARAMETER <Parameter_Name>
  <Brief description of parameter. Repeat this attribute if required>

.INPUTS
  <Inputs if any, otherwise state None>

.OUTPUTS Log File
  The script log file stored in according to LogPath and LogName parameter values

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
#Requires -Modules PSLogging

#region [Script Parameters]
#---------------------------------------------------------------------------------------------------------------

[CmdletBinding()]
Param (
  [string]$LogPath = '$env:TEMP',
  [string]$LogName = 'psscriptlog.log'
  #Other script parameters go here, do not forget to add a comma after LogName parameter
)

#endregion

begin
{
    #region [Initializations]
    #-----------------------------------------------------------------------------------------------------------------

    #Set Error Action to Stop to allow error handling with try/catch
    $ErrorActionPreference = 'Stop'

    #Import Modules & Snap-ins

    #endregion

    #region [Declarations]
    #--------------------------------------------------------------------------------------------------------------------

    #Script Version
    $scriptVersion = '1.0'

    #Log File Info
    $logFile = Join-Path -Path $LogPath -ChildPath $LogName

    #endregion

    #region [Functions]
    #-----------------------------------------------------------------------------------------------------------------------

    <#

    Function <FunctionName> {
      Param ()

      Begin {
        Write-LogInfo -LogPath $logFile -Message '<description of what is going on>...'
      }

      Process {
        Try {
          <code goes here>
        }

        Catch {
          Write-LogError -LogPath $logFile -Message $_.Exception -ExitGracefully
          Break
        }
      }

      End {
        If ($?) {
          Write-LogInfo -LogPath $logFile -Message 'Completed Successfully.'
          Write-LogInfo -LogPath $logFile -Message ' '
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

    Start-Log -LogPath $LogPath -LogName $LogName -ScriptVersion $scriptVersion
    #Script Execution goes here
    Stop-Log -LogPath $logFile

    #endregion
}
