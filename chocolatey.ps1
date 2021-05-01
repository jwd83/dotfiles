# you must first install chocolately AND then run this as admin on a powershell after executing....
# Set-ExecutionPolicy Bypass -Scope Process

$packages = New-Object Collections.Generic.List[String]

$packages.Add("7zip")
$packages.Add("autohotkey.portable")
$packages.Add("autoruns")
$packages.Add("bitwarden")
$packages.Add("bitwarden-cli")
$packages.Add("bleachbit")
$packages.Add("curl")
$packages.Add("cutepdf")
$packages.Add("firefox")
$packages.Add("foxitreader")
$packages.Add("git")
$packages.Add("hwmonitor")
$packages.Add("inkscape")
$packages.Add("k-litecodecpackfull")
$packages.Add("libreoffice-fresh")
$packages.Add("nodejs")
$packages.Add("notepadplusplus")
$packages.Add("openssh")
$packages.Add("paint.net")
$packages.Add("putty")
$packages.Add("python3")
$packages.Add("sumatrapdf.install")
$packages.Add("virtualbox")
$packages.Add("virtualbox-guest-additions-guest.install")
$packages.Add("vlc")
$packages.Add("vscode")
$packages.Add("wget")
$packages.Add("winscp.install")
$packages.Add("zerotier-one")

$packageListing = $packages -join " "

Write-Output "Preparing to install..."
Write-Output $packageListing

ForEach ($pkg in $packages){
	Write-Output "Now installing $pkg"
	choco install -y $pkg
}

# Packages to look into winlogbeat
