It "<Name> has all necessary dict keys "  -TestCases ($usersdict.GetEnumerator() | ForEach-Object { @{Name=$_.Key; Value=$_.Value} } ) {
    param($Name, $Value)
    $Userscontent = $Value
    $Userscontent.keys
    $Userscontent.keys | Sort-Object | Should -Be @("accountname","allow_interactive_login","department","description","encryption",
    "group_membership","manager","owner","ownerDN","ownerid","password_policy","passwordmanager","servers","supportteam","supportteamDN")
}
#$usersdict is a hashtable and this can iterate through the key,value pairs