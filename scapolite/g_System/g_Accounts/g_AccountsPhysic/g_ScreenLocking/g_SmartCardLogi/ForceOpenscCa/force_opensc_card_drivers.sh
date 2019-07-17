
var_smartcard_drivers="<sub idref="org.ssgproject.RHEL-8:var_smartcard_drivers" use="legacy"/>"

OPENSC_TOOL="/usr/bin/opensc-tool"

if [ -f "${OPENSC_TOOL}" ]; then
    ${OPENSC_TOOL} -S app:default:force_card_driver:$var_smartcard_drivers
fi

                  
