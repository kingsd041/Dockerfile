mkdir -p C:\nginx-1.9.13\html\81
mkdir -p C:\nginx-1.9.13\html\82
mkdir -p C:\nginx-1.9.13\html\83
mkdir -p C:\nginx-1.9.13\html\84
mkdir -p C:\nginx-1.9.13\html\85
mkdir -p C:\nginx-1.9.13\html\86
mkdir -p C:\nginx-1.9.13\html\87
mkdir -p C:\nginx-1.9.13\html\88
mkdir -p C:\nginx-1.9.13\html\89
mkdir -p C:\nginx-1.9.13\html\89
mkdir -p C:\nginx-1.9.13\html\90
mkdir -p C:\nginx-1.9.13\html\91

if($CONTAINER_NAME -eq $NULL){
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\81\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\82\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\83\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\84\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\85\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\86\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\87\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\88\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\89\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\90\service.html'
    "{0}" -f $env:COMPUTERNAME > 'C:\nginx-1.9.13\html\91\service.html'
}
Else{
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\81\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\82\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\83\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\84\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\85\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\86\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\87\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\88\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\89\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\90\service.html'
    echo ${CONTAINER_NAME} > 'C:\nginx-1.9.13\html\91\service.html'
}

Invoke-Expression "$args"
