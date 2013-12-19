1. kill -HUP 1234 > killok.txt 2> killerror.txt
2. standard output and error redirect to ok_error.txt: ```kill -l 1234 > ok_error.txt 2>&1```
3. 
