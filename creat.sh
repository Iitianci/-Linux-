#!/bin/bash
cat namefile.txt |while read name
do useradd -m $name -g teacher -s /usr/sbin/nologin
useradd ${name}s -g student -s /usr/sbin/nologin -d /home/$name/
echo -e "$name:123" | sudo chpasswd
echo -e "${name}s:123" | sudo chpasswd
cd /home/$name/
mkdir 学生作业
mkdir 资源共享
chown $name 学生作业/
chown :teacher 学生作业/
chown $name 资源共享/
chown :teacher 资源共享/
chmod o+w 学生作业/
cd /var/www/html/
ln -s /home/$name/资源共享/ $name
echo -e "123\n123" | smbpasswd -a -s $name
done