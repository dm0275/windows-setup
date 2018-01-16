### Setup Windows Machine

$programs = @(
  "chocolatey-core.extension",
  "googlechrome",
  "adobereader",
  "jre8",
  "jdk8",
  "notepadplusplus",
  "winrar",
  "vlc",
  "git",
  "python",
  "atom"
)

function InstallChoco {
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))  
}

function InstallPackages {
  if (choco -v -ne $null) {
    foreach ($program in $programs) {
      choco install $program
    }
  }
}

function SetupWindows {
  InstallChoco
  InstallPackages
}

SetupWindows