if($CONTAINER_NAME -eq $NULL){
     "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\name.html'
}
Else{
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\name.html'
}

Invoke-Expression "$args"
