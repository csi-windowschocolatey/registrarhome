$packageName = 'applicationcompatibilitytoolkit'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/D/3/3/D33A8F5D-A7E1-4BBE-B04D-7A688785A229/ApplicationCompatibilityToolkitSetup.exe'
$silentArgs = '/C:"msiexec.exe /i act.msi /l*v $env:temp\CHOCO-INSTALL-applicationcompatibilitytoolkit.log /qn'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
