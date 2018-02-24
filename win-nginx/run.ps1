if($CONTAINER_NAME -eq $NULL){
    "{0}" -f $env:COMPUTERNAME | Out-File -Encoding "Default" 'C:\nginx-1.9.13\html\name.html'
}
Else{
    "{0}" -f $env:COMPUTERNAME | Out-File -Encoding "Default" 'C:\nginx-1.9.13\html\name.html'
}

Invoke-Expression "$args"
