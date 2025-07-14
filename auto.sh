echo deleting old sshd config...

rm -rf /etc/ssh/sshd_config

sleep 1

echo fetching new sshd config...

wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/TsukasaCh/RootSSH/refs/heads/main/sshd_config

sleep 1

echo copying authorized root keys to common user...

cp /root/.ssh/authorized_keys /home/ubuntu/

sleep 1

echo changing permission keys...

chmod 777 /home/ubuntu/authorized_keys

sleep 1

echo restarting sshd services...

service ssh reload

