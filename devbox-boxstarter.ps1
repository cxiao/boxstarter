###############################################################################
# System Configuration
###############################################################################
# Set up Chocolatey
Write-Host "Initializing chocolatey"
choco feature enable -n allowGlobalConfirmation
choco feature enable -n allowEmptyChecksums

$Boxstarter.RebootOk=$true
$Boxstarter.NoPassword=$false

# Basic setup
Set-WindowsExplorerOptions -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowHiddenFilesFoldersDrives
Disable-BingSearch
Disable-GameBarTips
Disable-ComputerRestore -Drive ${Env:SystemDrive}

choco feature enable -n allowGlobalConfirmation
choco install checksum -y

choco install vcredist-all -y
choco install visualstudio2022buildtools -y
choco install visualstudio2022-workload-vctools -y
choco install visualstudio2022-workload-nativedesktop -y
choco install visualstudio2022-workload-universalbuildtools -y
choco install visualstudio2022-workload-manageddesktopbuildtools -y

choco install python -y
choco install pip -y
refreshenv
python -m pip install --upgrade pip

choco install cmake -y
choco install meson -y

choco install powershell-core -y
choco install microsoft-windows-terminal -y

choco install visualstudio2022community -y
choco install vscode -y
choco install vscode-python -y

choco install nodejs -y
choco install openjdk -y

choco install 7zip -y
choco install git -y
choco install googlechrome -y

choco install nmap -y
choco install processhacker -y
choco install sysinternals -y
choco install wireshark -y
choco install x64dbg.portable -y

choco install 010editor -y
choco install cutter -y
choco install ghidra -y

pip install pefile
pip install pwntools
pip install yara
pip install frida-tools
pip install qiling

choco install ppee -y
choco install pebear -y
choco install pesieve -y

Write-Host "Installation complete"