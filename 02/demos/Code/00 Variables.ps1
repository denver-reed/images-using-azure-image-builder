$aibRG = "imageBuilderRG"
$subscription = "c6aa1fdc-66a8-446e-8b37-7794cd545e44"
$VM_User = "aibadmin"
$WinVM_Password = "P@ssw0rdP@ssw0rd"
$location = "westus2"

$securePassword = ConvertTo-SecureString $WinVM_Password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($VM_User, $securePassword)