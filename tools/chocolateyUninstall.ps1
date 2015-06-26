
Try 
  {
  #Uninstall-ChocolateyPackage -PackageName 'applicationcompatibilitytoolkit' -FileType 'exe' -SilentArgs "/C:`"msiexec.exe /x act.msi /l*v $env:temp\CHOCO-UNINSTALL-applicationcompatibilitytoolkit.log /qn`"" -File `"ApplicationCompatibilityToolkitSetup.exe`" -ValidExitCodes @(0,3010)
  #Uninstall-ChocolateyPackage -PackageName 'applicationcompatibilitytoolkit' -FileType 'exe' -SilentArgs "/C:`"msiexec.exe /x act.msi /l*v $env:temp\CHOCO-UNINSTALL-applicationcompatibilitytoolkit.log /qn`"" -File `"$env:temp\chocolatey\ApplicationCompatibilityToolkit\ApplicationCompatibilityToolkitSetup.exe`" -ValidExitCodes @(0,3010)
  Start-ChocolateyProcessAsAdmin "/x{0F5AEBB0-43F3-4571-ACE7-A7942E8AA179} /l*v $env:temp\CHOCO-UNINSTALL-applicationcompatibilitytoolkit.log /qn" 'msiexec.exe' -ValidExitCodes @(0,3010)
  Write-ChocolateySuccess $package
  }
catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}