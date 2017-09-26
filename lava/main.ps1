param(
    [String] $VHDPath   
)

function Main {
    new-vm -Name test -MemoryStartupBytes 3GB -VHDPath $VHDPath
    Set-VMComPort -VMName test -Path "\\.\pipe\helloworld" -Number 1
    Enable-VMIntegrationService -VMName test -Name "*"   
    start-vm -VMName test
}

Main
