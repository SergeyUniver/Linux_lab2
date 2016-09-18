while :
do
	source ./config.ini
	wget -N -q https://pogoda.yandex.by/minsk/
	echo | grep -Po '<div class="current-weather__thermometer current-weather__thermometer_type_now">.[0-9]+' index.html | grep -Po '.[0-9]+'
	rm index.html
	sleep $sleeptime
done
