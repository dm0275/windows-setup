### Setup Windows Machine

$programs = @(
  "chocolatey-core.extension",
  "adobereader",
  "jre8",
  "jdk8",
  "winrar",
  "vlc",
  "git",
  "python",
  "vscode"
)

function InstallChoco {
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))  
}

function InstallPackages {
  if (choco -v -ne $null) {
    foreach ($program in $programs) {
      choco install $program -y
    }
  }
}

function SetupWindows {
  InstallChoco
  InstallPackages
}

SetupWindows
