 ifconfig |grep 'inet ' | grep -v '127.0.0.1' | cut -d: -f2 | awk '{print $2}'
