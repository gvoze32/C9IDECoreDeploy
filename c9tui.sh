#!/bin/bash

# COMMANDS

banner() {
    echo "       ___  _         _ "
    echo "  ___ / _ \| |_ _   _(_)"
    echo " / __| (_) | __| | | | |"
    echo "| (__ \__, | |_| |_| | |"
    echo " \___|  /_/ \__|\__,_|_|"
    echo
    echo "=====  CLOUD9 MANAGER  ====="
    echo
}
about() {
    echo "Name of File  : c9tui.sh"
    echo "Version       : v2.0 [Sanget - Kulonuwun] Linux Version"
    echo "Built         : 2021.4 [Tumbas]"
    echo "Tested on     :"
    echo "    - Debian  : Ubuntu"
    echo
    echo "Built with love by gvoze32"
}
# =========== DON'T CHANGE THE ORDER OF THIS FUNCTION =========== #

bantuan() {
    echo "How to use:"
    echo "c9tui [command] [option] [additional]"
    echo
    echo "List command:"
    echo "dialog        : Show TUI version of c9tui"
    echo "create"
    echo "  systemctl   : Create a new systemctl workspace"
    echo "  docker      : Create a new docker container"
    echo "  dockerlimit : Create a new docker container with limited RAM and CPU"
    echo "manage"
    echo "  systemctl"
    echo "    delete    : Delete workspace"
    echo "    status    : Show workspace status"
    echo "    restart   : Restart workspace"
    echo "    schedule  : Schedule workspace deletion"
    echo "    scheduled : Show scheduled workspace deletion"
    echo "    convert   : Convert user to superuser"
    echo "  docker"
    echo "    delete    : Delete docker container"
    echo "    list      : Show docker container lists"
    echo "    status    : Show container status"
    echo "    schedule  : Schedule container deletion"
    echo "    scheduled : Show scheduled container deletion"
    echo "    configure : Stop, start or restart running container"
    echo "    restart   : Restart (all) running containers"
    echo "port          : Show used port lists"
    echo "backup        : Backup workspace data with rclone in one archive"
    echo "backuplite    : Backup workspace data with rclone, with each workspace folder zipped"
    echo "daemon        : Increase docker network limit"
    echo "help          : Show help"
    echo "version       : Show version"
    echo
    echo "Copyright (c) 2021 c9tui (under MIT License)"
    echo "Built with love by gvoze32"
}

dialogs(){
    sudo bash run.sh
}

# CREATE SYSTEMCTL

createnewsystemctl(){
#Run as sudo or root user
read -p "Username : " user
read -p "Input Password : " password
read -p "Input Port (Recomend Range : 1000-5000) : " port

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get update -y

#Create User
sudo adduser --disabled-password --gecos "" $user

#echo "$password" | passwd --stdin $user
sudo echo -e "$password\n$password" | passwd $user
mkdir -p /home/$user/my-projects
cd /home/$user/my-projects
mkdir bonus-instagram
cd bonus-instagram
mkdir hypervote-v3.1-official
cd hypervote-v3.1-official
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i9wX.zip
unzip i9wX.zip
rm i9wX.zip
cd ..
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i-5g.zip
unzip i-5g.zip
rm i-5g.zip
cd auto_view_story
npm install
cd ..
git clone https://github.com/auliaahmad165/igfeedliker
git clone https://github.com/areltiyan/igfirstcomment
cd igfirstcomment
npm install
cd ..
git clone https://github.com/sandrocods/instagram-views
git clone https://github.com/1F1R5T/storyloop
git clone https://github.com/officialputuid/toolsig
cd toolsig
npm install
cd ..
git clone https://github.com/sanjidtk/masslooker
git clone https://github.com/gvoze32/massseen
git clone https://github.com/verssache/igviewstory
git clone https://github.com/corrykalam/InstagramAPI
mkdir hypervote-v3.2.1-nulled
cd hypervote-v3.2.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/it8C.zip
unzip -P sgbteam it8C.zip
rm it8C.zip
cd ..
mkdir hypervote-v3.2.5-nulled
cd hypervote-v3.2.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/iwuh.zip
unzip -P sgbteambos iwuh.zip
rm iwuh.zip
cd ..
mkdir hypervote-v3.3.2-nulled
cd hypervote-v3.3.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/hjas.zip 
unzip hjas.zip
rm hjas.zip
cd ..
mkdir hypervote-v3.3.5-nulled
cd hypervote-v3.3.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/jkjf.zip 
unzip -P sgbshare jkjf.zip
rm jkjf.zip
cd ..
mkdir hypervote-v3.4.5-nulled
cd hypervote-v3.4.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/g8Cl.zip
unzip -P sgbsharenow g8Cl.zip
rm g8Cl.zip
cd ..
mkdir hypervote-v3.6-nulled
cd hypervote-v3.6-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/mo8N.zip
unzip -P sgbteam mo8N.zip
rm mo8N.zip
cd ..
mkdir hypervote-v3.6.2-nulled
cd hypervote-v3.6.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/IUs9.zip
unzip -P sgbhypervoting IUs9.zip
rm IUs9.zip
cd ..
mkdir hypervote-v3.8-nulled
cd hypervote-v3.8-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/sfrf.zip
unzip sfrf.zip
rm sfrf.zip
cd ..
mkdir hypervote-v3.8.1-nulled
cd hypervote-v3.8.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/fgdh.zip
unzip fgdh.zip
rm fgdh.zip
cd ..
mkdir hypervote-v3.7.9-nulled
cd hypervote-v3.7.9-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/skdf.zip
unzip skdf.zip
rm skdf.zip
cd

#Get script to user directory
git clone https://github.com/c9/core.git /home/$user/c9sdk
sudo chown $user.$user /home/$user -R
sudo -u $user -H sh -c "cd /home/$user/c9sdk; scripts/install-sdk.sh"
sudo chown $user.$user /home/$user/ -R
sudo chmod 700 /home/$user/ -R
sudo cat > /lib/systemd/system/c9-$user.service << EOF

# Run:
# - systemctl enable c9
# - systemctl {start,stop,restart} c9
#
[Unit]
Description=c9
After=syslog.target network.target

[Service]
Type=simple
ExecStart=/usr/bin/node /home/${user}/c9sdk/server.js -a $user:$password --listen 0.0.0.0 -w /home/$user/my-projects
Environment=NODE_ENV=production PORT=$port
User=$user
Group=$user
UMask=0002
Restart=on-failure

StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=c9

[Install]
WantedBy=multi-user.target
#End
EOF

sudo systemctl daemon-reload
sudo systemctl enable c9-$user.service
sudo systemctl restart c9-$user.service
sleep 10
sudo systemctl status c9-$user.service
}

# CREATE DOCKER

createnewdocker(){
read -p "Username : " user
read -p "Password : " pw
read -p "Port : " port
cd /home/c9users
rm .env
sudo cat > /home/c9users/.env << EOF
PORT=$port
NAMA_PELANGGAN=$user
PASSWORD_PELANGGAN=$pw
EOF
sudo docker-compose -p $user up -d
if [ -d "/home/c9users/$user" ]; then
cd /home/c9users/$user
mkdir bonus-instagram
cd bonus-instagram
mkdir hypervote-v3.1-official
cd hypervote-v3.1-official
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i9wX.zip
unzip i9wX.zip
rm i9wX.zip
cd ..
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i-5g.zip
unzip i-5g.zip
rm i-5g.zip
cd auto_view_story
npm install
cd ..
git clone https://github.com/auliaahmad165/igfeedliker
git clone https://github.com/areltiyan/igfirstcomment
cd igfirstcomment
npm install
cd ..
git clone https://github.com/sandrocods/instagram-views
git clone https://github.com/1F1R5T/storyloop
git clone https://github.com/officialputuid/toolsig
cd toolsig
npm install
cd ..
git clone https://github.com/sanjidtk/masslooker
git clone https://github.com/gvoze32/massseen
git clone https://github.com/verssache/igviewstory
git clone https://github.com/corrykalam/InstagramAPI
mkdir hypervote-v3.2.1-nulled
cd hypervote-v3.2.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/it8C.zip
unzip -P sgbteam it8C.zip
rm it8C.zip
cd ..
mkdir hypervote-v3.2.5-nulled
cd hypervote-v3.2.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/iwuh.zip
unzip -P sgbteambos iwuh.zip
rm iwuh.zip
cd ..
mkdir hypervote-v3.3.2-nulled
cd hypervote-v3.3.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/hjas.zip 
unzip hjas.zip
rm hjas.zip
cd ..
mkdir hypervote-v3.3.5-nulled
cd hypervote-v3.3.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/jkjf.zip 
unzip -P sgbshare jkjf.zip
rm jkjf.zip
cd ..
mkdir hypervote-v3.4.5-nulled
cd hypervote-v3.4.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/g8Cl.zip
unzip -P sgbsharenow g8Cl.zip
rm g8Cl.zip
cd ..
mkdir hypervote-v3.6-nulled
cd hypervote-v3.6-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/mo8N.zip
unzip -P sgbteam mo8N.zip
rm mo8N.zip
cd ..
mkdir hypervote-v3.6.2-nulled
cd hypervote-v3.6.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/IUs9.zip
unzip -P sgbhypervoting IUs9.zip
rm IUs9.zip
cd ..
mkdir hypervote-v3.8-nulled
cd hypervote-v3.8-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/sfrf.zip
unzip sfrf.zip
rm sfrf.zip
cd ..
mkdir hypervote-v3.8.1-nulled
cd hypervote-v3.8.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/fgdh.zip
unzip fgdh.zip
rm fgdh.zip
cd ..
mkdir hypervote-v3.7.9-nulled
cd hypervote-v3.7.9-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/skdf.zip
unzip skdf.zip
rm skdf.zip
cd
else
echo "Workspace directory not found"
fi
}

# CREATE DOCKERLIMIT

createnewdockermemlimit(){
read -p "Username : " user
read -p "Password : " pw
read -p "Port : " portenv
read -p "CPU Limit (Example = 1) : " cpu
read -p "Memory Limit (Example = 1024m) : " mem
cd /home/c9usersmemlimit
rm .env
sudo cat > /home/c9usersmemlimit/.env << EOF
PORT=$portenv
NAMA_PELANGGAN=$user
PASSWORD_PELANGGAN=$pw
MEMORY=$mem
CPUS=1
EOF
sed -i '$ d' /home/c9usersmemlimit/docker-compose.yml
sed -i '$ d' /home/c9usersmemlimit/docker-compose.yml
echo "    mem_limit: $mem" >> /home/c9usersmemlimit/docker-compose.yml
echo "    cpus: $cpu" >> /home/c9usersmemlimit/docker-compose.yml
sudo docker-compose -p $user up -d
if [ -d "/home/c9usersmemlimit/$user" ]; then
cd /home/c9usersmemlimit/$user
mkdir bonus-instagram
cd bonus-instagram
mkdir hypervote-v3.1-official
cd hypervote-v3.1-official
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i9wX.zip
unzip i9wX.zip
rm i9wX.zip
cd ..
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/i-5g.zip
unzip i-5g.zip
rm i-5g.zip
cd auto_view_story
npm install
cd ..
git clone https://github.com/auliaahmad165/igfeedliker
git clone https://github.com/areltiyan/igfirstcomment
cd igfirstcomment
npm install
cd ..
git clone https://github.com/sandrocods/instagram-views
git clone https://github.com/1F1R5T/storyloop
git clone https://github.com/officialputuid/toolsig
cd toolsig
npm install
cd ..
git clone https://github.com/sanjidtk/masslooker
git clone https://github.com/gvoze32/massseen
git clone https://github.com/verssache/igviewstory
git clone https://github.com/corrykalam/InstagramAPI
mkdir hypervote-v3.2.1-nulled
cd hypervote-v3.2.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/it8C.zip
unzip -P sgbteam it8C.zip
rm it8C.zip
cd ..
mkdir hypervote-v3.2.5-nulled
cd hypervote-v3.2.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/iwuh.zip
unzip -P sgbteambos iwuh.zip
rm iwuh.zip
cd ..
mkdir hypervote-v3.3.2-nulled
cd hypervote-v3.3.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/hjas.zip 
unzip hjas.zip
rm hjas.zip
cd ..
mkdir hypervote-v3.3.5-nulled
cd hypervote-v3.3.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/jkjf.zip 
unzip -P sgbshare jkjf.zip
rm jkjf.zip
cd ..
mkdir hypervote-v3.4.5-nulled
cd hypervote-v3.4.5-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/g8Cl.zip
unzip -P sgbsharenow g8Cl.zip
rm g8Cl.zip
cd ..
mkdir hypervote-v3.6-nulled
cd hypervote-v3.6-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/mo8N.zip
unzip -P sgbteam mo8N.zip
rm mo8N.zip
cd ..
mkdir hypervote-v3.6.2-nulled
cd hypervote-v3.6.2-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/IUs9.zip
unzip -P sgbhypervoting IUs9.zip
rm IUs9.zip
cd ..
mkdir hypervote-v3.8-nulled
cd hypervote-v3.8-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/sfrf.zip
unzip sfrf.zip
rm sfrf.zip
cd ..
mkdir hypervote-v3.8.1-nulled
cd hypervote-v3.8.1-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/fgdh.zip
unzip fgdh.zip
rm fgdh.zip
cd ..
mkdir hypervote-v3.7.9-nulled
cd hypervote-v3.7.9-nulled
wget https://raw.githubusercontent.com/gvoze32/c9tui/master/resources/skdf.zip
unzip skdf.zip
rm skdf.zip
cd
else
echo "Workspace directory not found"
fi
}

# MANAGE SYSTEMCTL

deletesystemctl(){
read -p "Input User : " user
sleep 3
sudo systemctl stop c9-$user.service
sleep 3
sudo killall -u $user
sleep 3
sudo userdel $user
}

statussystemctl(){
read -p "Username : " crot
sudo systemctl status c9-$crot.service
}

restartsystemctl(){
read -p "Input User : " user
sudo systemctl daemon-reload
sudo systemctl enable c9-$user.service
sudo systemctl restart c9-$user.service
sleep 10
sudo systemctl status c9-$user.service
}

schedulesystemctl(){
read -p "Input User : " user
echo " "
echo "Format Example for Time: "
echo " "
echo "10:00 AM 6/22/2015"
echo "10:00 AM July 25"
echo "10:00 AM"
echo "10:00 AM Sun"
echo "10:00 AM next month"
echo "10:00 AM tomorrow"
echo "now + 1 hour"
echo "now + 30 minutes"
echo "now + 1 week"
echo "now + 1 year"
echo "midnight"
echo " "
read -p "Time: " waktu
at $waktu <<END
sleep 3
sudo systemctl stop c9-$user.service
sleep 3
sudo killall -u $user
sleep 3
sudo userdel $user
END
}

scheduledatq(){
sudo atq
}

convertsystemctl(){
read -p "Input User : " user
echo "Input user password"
passwd $user
echo "Warning, C9 will be restart!"
usermod -aG sudo $user
sudo systemctl daemon-reload
sudo systemctl enable c9-$user.service
sudo systemctl restart c9-$user.service
sleep 10
sudo systemctl status c9-$user.service
}

# MANAGE DOCKER

deletedocker(){
read -p "Input User : " user
echo Are the file is using Docker or Docker Memory Limit?
echo 1. Docker
echo 2. Docker Memory Limit
read -r -p "Choose: " response
case "$response" in
    1) 
cd /home/c9users
        ;;
    *)
cd /home/c9usersmemlimit
        ;;
esac
sudo docker-compose -p $user down
}

listdocker(){
docker ps
}

statusdocker(){
docker stats
}

scheduledocker(){
read -p "Input User : " user
echo Are the file is using docker or dockermemlimit?
read -r -p "Answer Y if you are using docker and answer N if you are using dockermemlimit [y/N] " response
echo " "
echo "Format Example for Time: "
echo " "
echo "10:00 AM 6/22/2015"
echo "10:00 AM July 25"
echo "10:00 AM"
echo "10:00 AM Sun"
echo "10:00 AM next month"
echo "10:00 AM tomorrow"
echo "now + 1 hour"
echo "now + 30 minutes"
echo "now + 1 week"
echo "now + 1 year"
echo "midnight"
echo " "
read -p "Time: " waktu
case "$response" in
    [yY][eE][sS]|[yY]) 
at $waktu <<END
cd /home/c9users
sudo docker-compose -p $user down
END
        ;;
    *)
at $waktu <<END
cd /home/c9usersmemlimit
sudo docker-compose -p $user down
END
        ;;
esac
}

configuredocker(){
read -p "Input User : " user
echo 1. Stop
echo 2. Start
echo 3. Restart
read -r -p "Choose: " response
case "$restart" in
    1) 
echo Are the file is using Docker or Docker Memory Limit?
echo 1. Docker
echo 2. Docker Memory Limit
read -r -p "Choose: " response
case "$response" in
    1) 
cd /home/c9users
        ;;
    *)
cd /home/c9usersmemlimit
        ;;
esac
sudo docker container stop $user
        ;;
    2) 
echo Are the file is using Docker or Docker Memory Limit?
echo 1. Docker
echo 2. Docker Memory Limit
read -r -p "Choose: " response
case "$response" in
    1) 
cd /home/c9users
        ;;
    *)
cd /home/c9usersmemlimit
        ;;
esac
sudo docker container start $user
        ;;
    *)
echo Are the file is using Docker or Docker Memory Limit?
echo 1. Docker
echo 2. Docker Memory Limit
read -r -p "Choose: " response
case "$response" in
    1) 
cd /home/c9users
        ;;
    *)
cd /home/c9usersmemlimit
        ;;
esac
sudo docker container stop $user
sudo docker container start $user
        ;;
esac
}

restartdocker(){
docker restart $(docker ps -q)
}

backups(){
echo "=Everyday Backup at 2 AM="
echo "Make sure you has been setup a rclone config file using command: rclone config"
echo ""
read -p "If all has been set up correctly, then input your rclone remote name : " name
sudo cat > /home/backup-$name.sh << EOF
#!/bin/bash
date=\$(date +%y-%m-%d)
rclone mkdir $name:Backup/backup-\$date
zip -r /root/backup-\$date.zip /home &
cpulimit -e zip -l 10
rclone copy /root/backup-\$date.zip $name:Backup/backup-\$date
rm /root/backup-\$date.zip 
EOF
chmod +x /home/backup-$name.sh
echo ""
echo "Backup command created..."
crontab -l > backup-$name
echo "0 2 * * * /home/backup-$name.sh > /home/backup-$name.log 2>&1" >> backup-$name
crontab backup-$name
rm backup-$name
echo ""
echo "Cron job created..."
echo ""
echo "Make sure it's included on your cron list :"
crontab -l
}

backuplites(){
echo "=Everyday Backup at 2 AM="
echo "Make sure you has been setup a rclone config file using command: rclone config"
echo ""
read -p "If all has been set up correctly, then input your rclone remote name : " name
sudo cat > /home/backup-$name.sh << EOF
#!/bin/bash
date=\$(date +%y-%m-%d)
rclone mkdir $name:Backup/backup-\$date
cd /home
for i in */; do if ! [[ \$i =~ ^(c9users/|c9usersmemlimit/)$ ]]; then zip -r "\${i%/}.zip" "\$i"; fi done
cd /home/c9users
for i in */; do zip -r "\${i%/}.zip" "\$i"; done
cd /home/c9usersmemlimit
for i in */; do zip -r "\${i%/}.zip" "\$i"; done
mkdir /home/backup
mv /home/*.zip /home/backup
mv /home/c9users/*.zip /home/backup
mv /home/c9usersmemlimit/*.zip /home/backup
rclone copy /home/backup $name:Backup/backup-\$date
rm -rf /home/backup
EOF
chmod +x /home/backup-$name.sh
echo ""
echo "Backup command created..."
crontab -l > backup-$name
echo "0 2 * * * /home/backup-$name.sh > /home/backup-$name.log 2>&1" >> backup-$name
crontab backup-$name
rm backup-$name
echo ""
echo "Cron job created..."
echo ""
echo "Make sure it's included on your cron list :"
crontab -l
}

dockerdaemon(){
sudo wget https://raw.githubusercontent.com/gvoze32/c9tui/master/misc/docker-daemon/daemon.json -O /etc/docker/daemon.json
service docker restart
docker network inspect bridge | grep Subnet
}

portlist(){
sudo lsof -i -P -n | grep LISTEN
}

# BASIC MENUS

helps(){
banner
bantuan
}

versions(){
banner
about
}

# MENU

case $1 in
dialog)
  dialogs
;;
create)
  case $2 in
    systemctl)
      createnewsystemctl
    ;;
    docker)
      createnewdocker
    ;;
    dockerlimit)
      createnewdockermemlimit
    ;;
    *)
      echo "Command not found, type c9tui help for help"
  esac
  ;;
manage)
  case $2 in
    systemctl)
    case $3 in
      delete)
        deletesystemctl
      ;;
      status)
        statussystemctl
      ;;
      restart)
        statussystemctl
      ;;
      schedule)
        schedulesystemctl
      ;;
      scheduled)
        scheduledatq
      ;;
      convert)
        convertsystemctl
      ;;
      *)
      echo "Command not found, type c9tui help for help"
    esac
        ;;
    docker)
    case $3 in
      delete)
        deletedocker
      ;;
      list)
        listdocker
      ;;
      status)
        statusdocker
      ;;
      schedule)
        scheduledocker
      ;;
      scheduled)
        scheduledatq
      ;;
      configure)
        configuredocker
      ;;
      restart)
        restartdocker
      ;;
      *)
      echo "Command not found, type c9tui help for help"
    esac
  esac
;;
port)
  portlist
;;
backup)
  backups
;;
backuplite)
  backuplites
;;
daemon)
  dockerdaemon
;;
help)
  helps
;;
version)
  versions
;;
*)
echo "Command not found, type c9tui help for help"
esac