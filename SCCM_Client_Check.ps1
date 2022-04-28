###############################################################################################################
#
# ABOUT THIS PROGRAM
#
#   SCCM_Client_Check.ps1
#   https://github.com/Headbolt/SCCM_Client_Check
#
#   This script was designed to Check for the existence of the SCCM Client
#	and then exit with an appropriate Exit code.
#
#	Intended use is in Microsoft Endpoint Manager, as the "Check" half of a Proactive Remediation Script
#
###############################################################################################################
#
# HISTORY
#
#   Version: 1.0 - 28/04/2022
#
#   - 28/04/2022 - V1.0 - Created by Headbolt
#
###############################################################################################################
#
Write-Host
Write-Host '###############################################################################################################'
Write-Host
$Path="c:\windows\ccmsetup\ccmsetup.exe"
$PathTest=(Test-Path $Path)
#
Write-Host 'Checking For File' $Path	
Write-Host
Write-Host '###############################################################################################################'
Write-Host
#
If ($PathTest -eq $True)
{
	Write-Host 'File' $Path 'Exists'
	Exit 1
}
Else
{
	Write-Host 'File' $Path 'Does Not Exist'
	Exit 0
}
