if [[ $(ip route get 1 | awk '{print $3}') == *"tun"* ]]; then
	ip=$(ip route get 1 | awk '{print $5}')
else 
	ip=$(ip route get 1 | awk '{print $7}')
fi

if [[ $ip == *"RTNETLINK"* ]]; then
	echo ""
else
	echo $ip
fi
