#!/usr/bin/with-contenv bash
if [ -f /config/config ]; then
	rm  /config/config
fi
echo "username=\"${L2DUSER}\"" >> /config/config
echo "password=\"${L2DPASS}\"" >> /config/config
echo "override_zipcodes=\"${L2DZIP}\"" >> /config/config

echo "------------------------------------------------------------"
echo "|~) _ ._  _| _ ._ _ |\ |o._  o _ |~|_|_|"
echo "|~\(_|| |(_|(_)| | || \||| |_|(_||~| | |<"
echo "Presents: locast2tuner"
echo "------------------------------------------------------------"
echo "Donate: https://github.com/sponsors/RandomNinjaAtk"
echo "Project: https://github.com/RandomNinjaAtk/docker-locast2tuner"
echo "Support: https://discord.gg/JumQXDc"
echo "------------------------------------------------------------"

if [ $multiplex = "true" ]; then
	multiplex="-m"
else
	multiplex=""
fi

locast2tuner --config /config/config -b 0.0.0.0 -d 8 -r --tuner_count 4 $multiplex
exit $?
