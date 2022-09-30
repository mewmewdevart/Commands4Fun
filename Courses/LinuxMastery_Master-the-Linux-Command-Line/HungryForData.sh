#!/bin/bash

Task01:
1. nano hungry.sh
2. #!/bin/bash
	echo "I am hungry. Feed me data!" >> demands.txt
	date >> demands.log
Task02:
1. chmod +x hungry.sh
2. crontab -e
1 * * * * bash ~/Desktop/hungry.sh
