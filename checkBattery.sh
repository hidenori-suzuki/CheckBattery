/usr/sbin/ioreg -c AppleSmartBattery|awk '/MaxCapacity/{a=$5} /DesignCapacity/{b=$5}END{printf("lost capacity is %4.1f%%\n",100-a/b*100)}'
