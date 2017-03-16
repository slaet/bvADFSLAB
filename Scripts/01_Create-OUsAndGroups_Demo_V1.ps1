# Create OU strucktur and UserGroups

# create OU structure Top Level
New-ADObject -Type OrganizationalUnit -Name 'LabUsers' -Path "DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'LabComputers' -Path "DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'LabServers' -Path "DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'LabMobileDevices' -Path "DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'LabGroups' -Path "DC=CMCE,DC=LAB"


#First Level OU
New-ADObject -Type OrganizationalUnit -Name 'Departments'  -Path "OU=LabUsers,DC=CMCE,DC=LAB"

#Second Level OU
New-ADObject -Type OrganizationalUnit -Name 'Finance' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Human Resources' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Information Technology' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Marketing' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Research' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Management' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Sales' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"
New-ADObject -Type OrganizationalUnit -Name 'Solutions' -Path "OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB"

# create user groups
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Finance' -SamAccountName 'Finance' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Human Resources' -SamAccountName 'Human Resources' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Information Technology' -SamAccountName 'Information Technology' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Marketing' -SamAccountName 'Marketing' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Management' -SamAccountName 'Management' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Research' -SamAccountName 'Research' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Sales' -SamAccountName 'Sales' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=LabGroups,DC=CMCE,DC=LAB" -Name 'Solutions' -SamAccountName 'Solutions' -GroupCategory Security -GroupScope DomainLocal


#Create Service account groups
New-ADGroup -Path "OU=Solutions,OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB" -Name 'SCCM Global Admins' -SamAccountName 'SCCM Global Admins' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=Solutions,OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB" -Name 'SCCM Site Servers' -SamAccountName 'SCCM Site Servers' -GroupCategory Security -GroupScope DomainLocal
New-ADGroup -Path "OU=Solutions,OU=Departments,OU=LabUsers,DC=CMCE,DC=LAB" -Name 'SCCM Site Systems' -SamAccountName 'SCCM Site Systems' -GroupCategory Security -GroupScope DomainLocal


Write-Host "Completed processing of OU Structure and Groups" -ForegroundColor Green