# Custom PowerShell Scripts
These are some handy custom powershell scripts and functions that can be imported into your profile.

## Setup

1. Open your powershell profile
```powershell
PS> notepad $profile
```

2. Append the following lines to your PowerShell Profile
```powershell
PS> Get-ChildItem "C:\{path\to}\tool-configs\powershell\CustomScripts" | ForEach-Object { . $_.FullName }
```

3. Restart your powershell terminal

## Functions

- [Remove-NodeModules](#Remove-NodeModules)

### Remove-NodeModules
Recursively delete `node_modules` folders under a directory. Optionally takes root path as an argument defaults to the current working directory.

```powershell
Remove-NodeModules

Remove-NodeModules "C:\dev\repos\my-repo"
```
