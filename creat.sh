#!/bin/bash
cat namefile.txt |while read name
do useradd -m $name -g teacher -s /usr/sbin/nologin
useradd ${name}s -g student -s /usr/sbin/nologin -d /home/$name/
echo -e "$name:123" | sudo chpasswd
echo -e "${name}s:123" | sudo chpasswd
cd /home/$name/
mkdir ѧ����ҵ
mkdir ��Դ����
chown $name ѧ����ҵ/
chown :teacher ѧ����ҵ/
chown $name ��Դ����/
chown :teacher ��Դ����/
chmod o+w ѧ����ҵ/
cd /var/www/html/
ln -s /home/$name/��Դ����/ $name
echo -e "123\n123" | smbpasswd -a -s $name
done