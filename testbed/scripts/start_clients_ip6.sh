#!/bin/bash
#
#
# Start client devices. This script should be run on sink server or border router.
#
#
        
echo "Running commands on fdde:ad00:beef:0:904d:a4e2:760b:706b"
#sshpass -p raspberry ssh -o "StrictHostKeyChecking no" pi@fdde:ad00:beef:0:904d:a4e2:760b:706b "echo fdde:ad00:beef:0:904d:a4e2:760b:706b; cd /home/pi/client-workdir/smit-latest/smit/testbed; sudo rm -f sync.log rs.log send.log; sudo nohup python client_dtls.py > /dev/null 2>&1 &"
sshpass -p raspberry ssh -o "StrictHostKeyChecking no" pi@fdde:ad00:beef:0:904d:a4e2:760b:706b "echo fdde:ad00:beef:0:904d:a4e2:760b:706b; cd /home/pi/client-workdir/smit-latest/smit/testbed; sudo rm -f *.log; /usr/local/bin/python2.7 client_dtls.py > /dev/null 2>&1 &"
sleep 1

                