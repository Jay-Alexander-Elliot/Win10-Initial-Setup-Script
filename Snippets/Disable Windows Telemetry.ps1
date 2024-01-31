# Title: Disable Windows Telemetry
# Description: This script disables various telemetry and data collection settings in Windows 10.
# Author: Jay-Alexander Elliot
# Date: 2024-01-31
# Usage: Run this script with administrative privileges in a PowerShell environment. It modifies system registry settings and disables scheduled tasks related to telemetry and data collection.

Function DisableTelemetry {
    Write-Output "Disabling Telemetry..."
    # Set telemetry settings in the registry to off
    # Paths include main and Wow6432Node registry paths for compatibility with both 32-bit and 64-bit systems
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
    
    # Disabling preview builds, software protection, and customer experience improvement program
    # Create the registry path if it does not exist
    # ...
    # [Rest of the script remains unchanged]
}

# Call the DisableTelemetry function to execute the script
DisableTelemetry
