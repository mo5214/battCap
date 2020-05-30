#!/bin/bash
# battCap.sh V.0.0001, 5/30/20, 12:25:17 PM
# by Karntchana Sangjan
# A simple script that allows setting max battery charge (as in order to prolong battery life) using smcFanControl's smc tool.
# Note: Software provided AS-IS, please don't show up with pitchforks.
# Works by: writing to key 'BCLM' (unsigned int 8-bit value) on the Mac's System Management Controller
# Requires: smcFanControl (for smc tool)
# Credits goes to Hendrik Holtmann behind smcFancontrol for his smc commandline utility.
# link: https://github.com/hholtmann/smcFanControl


inputPer="$(osascript -e 'Tell application "System Events" to display dialog "Enter Battery Max Charge: (1-100)" default answer "" with title "BattCap" ' -e 'text returned of result' 2>/dev/null)" && 
desiredPer=`python -c "
try:
    take = str(\"$inputPer\")
    value = int(take.lstrip('0'))
    if (isinstance(int(value),int) and value < 100 and value > 0):
        print hex(value)
    else:
        print hex(100)
except ValueError:
    print hex(100)

except NameError:
    print hex(100)
"
`
convPer=`echo $desiredPer|cut -d "x" -f2`
if [ ${#convPer} -lt 2 ];
then
case ${#convPer} in
1)
    var2="0$convPer"
    ;;
*)
    osascript -e 'display notification "DEBUG:Invalid Value" with title “BattCap”'
    ;;
esac
fi
cd /Applications/smcFanControl.app/Contents/Resources
./smc -k "BCLM" -w "$convPer"
osascript -e 'display notification "Max Battery charge set to '$convPer' percent" with title "BattCap"'


