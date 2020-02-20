cat header.txt > mapMarkersJson.js
RANDOM=$$
for i in $( seq 1 1000 )
do
	X=$(( ( $RANDOM % 100 ) + 1 )).$((RANDOM%99))
	Y=$(( ( $RANDOM % 100 ) + 1 )).$((RANDOM%99))
	echo "  'mapMarker$i': {" >> mapMarkersJson.js
	echo "    'cordX': '$X'," >> mapMarkersJson.js
	echo "    'cordY': '$Y'," >> mapMarkersJson.js
	echo "    'icon': 'images/UnActiveIcon.png'," >> mapMarkersJson.js
	echo "    'modal': {" >> mapMarkersJson.js
	echo "      'title': ''," >> mapMarkersJson.js
	echo "      'content': ''" >> mapMarkersJson.js
	echo "    }," >> mapMarkersJson.js
	echo "    'markerUrl': ''" >> mapMarkersJson.js
	if [ "$i" != "1000" ]
	then
		echo "  }," >> mapMarkersJson.js
	else
		echo "  }" >> mapMarkersJson.js
	fi
done
cat footer.txt >> mapMarkersJson.js

