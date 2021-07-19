. ./tests-second-floor/sprint_1/print_err.sh
. ./tests-second-floor/sprint_1/ERRORS_KEYS.sh

npm install -f && npm run start &
timeout 100 bash tests-second-floor/sprint_1/setInterval.sh

if [[ $? == "0" ]]; then
	sleep 20
	exit 0
fi

print_err $PORT_ERR
exit 1
