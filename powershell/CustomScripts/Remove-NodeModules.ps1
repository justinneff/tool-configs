function Remove-NodeModules {
    Param ([string]$path = ".");

    Get-ChildItem -Path $path -Directory | % {
        if ($_.Name -eq "node_modules") {
            Write-Host "Removing" $_.FullName;
            $_.Delete($true);
        } else {
            Remove-NodeModules $_.FullName;
        }
    }
}
