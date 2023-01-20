#Ref https://cloudrobots.net/2020/09/02/add-azure-vm-tags-w-powershell/

$PathToCsv = "C:\Temp\BackUP\Temp\images-using-azure-image-builder\LenVolk\Scripts\Tags\computers.csv"
$computers = Get-Content -Path $PathToCsv

$tags = @{'PCI' = 'Yes'; 'Department'='Accounting'} 

foreach ($computer in $computers) { 
    Write-Host ".... Assigning $tags to VM Name $computer "
    Update-AzTag -Tag $tags -ResourceId "/subscriptions/c6aa1fdc-66a8-446e-8b37-7794cd545e44/resourceGroups/fileservers/providers/Microsoft.Compute/virtualMachines/$computer" -Operation Merge -Verbose
}

