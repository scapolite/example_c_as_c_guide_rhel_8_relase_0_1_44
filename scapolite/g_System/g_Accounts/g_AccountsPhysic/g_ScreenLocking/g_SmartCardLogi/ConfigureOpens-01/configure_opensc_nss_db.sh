

PKCSSW=$(/usr/bin/pkcs11-switch)

if ! [[ ${PKCSSW} -eq "opensc" ]] ; then
    ${PKCSSW} opensc
fi

                  
