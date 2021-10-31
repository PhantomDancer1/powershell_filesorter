
# Sort-Object Options
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object?view=powershell-7.1
# -Descending = Umkehren
#
#


##########LÄUFT##############
Set-Location C:\Users\Robin\Desktop\Sort_this
    #TODO: Place custom script here
    #$Lbox_show
    Get-Childitem -Depth 1 | Sort-Object -Property Name | ForEach-Object{$Lbox_show.Items.Add($_.name)}
#############################


Set-Location -Path C:\Users\Robin\Desktop\Sort_this


#einlesen und sortieren
# Properties sind "Name, Length, Creation Time"
Get-ChildItem -Depth 1|
  Sort-Object -Property Name, LastWriteTime|
  Format-Table -Property Name, LastWriteTime

  $include = ".ps1"
  $sort = "Name"
  
  Get-ChildItem -Depth 1  |
  Sort-Object -Property $sort|
  Format-Table -Property $sort


#Sort Files for Name
$files = Get-ChildItem -Recurse | Sort-Object Name 

$files

#Sort Files for Creationtime

$files = Get-ChildItem -Recurse | sort-Object CreationTime

$files

#Sort Files after File Length
$files = Get-ChildItem -Recurse | sort-Object -Property Length

$files

# Zeige nur .mp3 Files an
$files = Get-ChildItem -Recurse -Include *.mp3

#Sort Files after File Length
$files = Get-ChildItem -Recurse | sort-Object -Property 

Dateiendungen


