cls
$search = Read-Host -Prompt 'Input Domain'
Get-ADGroupMember -Server $search -Identity "Domain Admins" |
    Select-Object -ExpandProperty samaccountname | 
    Export-Clixml -Path "C:\scripts\CurrentDomainAdmins-$search.xml"
