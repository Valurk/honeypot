#!/bin/sh

# creating banners and file logs!

> 20.txt && echo "ProFTPD 1.3.4a Server (Debian)" > 20.txt
> 20.log

> 21.txt && echo "ProFTPD 1.3.4a Server (Debian)" > 21.txt
> 21.log

> 22.log
>22.txt && echo "OpenSSH 3.9p1 (protocol 1.99)" > 22.txt

> 53.log
>53.txt && echo "ISC BIND 9.8.2rc1" > 53.txt

echo "Opening ports"
sleep 5s

clear

echo "Ports open!"
echo ""
netstat -nlpt

while true; do
    nc -nlvp 20 < 20.txt 1>> 20.log 2>> 20.log;echo $(date) >> 20.log
    sleep 2s
    nc -nlvp 21 < 21.txt 1>> 21.log 2>> 21.log;echo $(date) >> 21.log
    sleep 2s
    nc -nlvp 22 < 22.txt 1>> 22.log 2>> 22.log;echo $(date) >> 22.log
    sleep 2s
    nc -nlvp 53 < 53.txt 1>> 53.log 2>> 53.log;echo $(date) >> 53.log;
done
