1. kill -HUP 1234 > killok.txt 2> killerror.txt

2. kill -l 1234 > ok_error.txt 2>&1
'redirect standard output to the file ok_error.txt, then direct standard error to the same place as the standard output'
