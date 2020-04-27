#!/bin/bash

# Single line comment -- starts with a # symbol

# Multiple line comment:
<<COMMENT
You can comment out multiple lines by enclosing them between the lines above and below.
COMMENT

<<COMMENT
Format for commands:

-- create a group
sudo groupadd <name of group>

-- assign user to group
sudo usermod -a -G <name of group> <user>

-- assign a group to a file
sudo chgrp <name of group> <file>

-- set permissions on a file
sudo -u <user who owns file> chmod <symbolic or octal permission set> <file>

COMMENT

# create groups
sudo groupadd jones
sudo groupadd johnson
sudo groupadd santana

sudo groupadd jonesbilling
sudo groupadd johnsonbilling
sudo groupadd santanabilling

# assign users to groups
sudo usermod -a -G jones,jonesbilling,johnsonbilling,santana,santanabilling bard
sudo usermod -a -G jones,jonesbilling,johnsonbilling,santana,santanabilling sam
sudo usermod -a -G jones,jonesbilling,santana,santanabilling mary
sudo usermod -a -G jones,jonesbilling,santana,santanabilling bob
sudo usermod -a -G jonesbilling,johnson,johnsonbilling,santanabilling karen
sudo usermod -a -G jonesbilling,johnson,johnsonbilling,santanabilling kevin
sudo usermod -a -G johnson,johnsonbilling tom
sudo usermod -a -G johnson,johnsonbilling becky

# assign a group to each file
sudo chgrp jones Jones-Pleading1.txt
sudo chgrp jones Jones-Pleading2.txt
sudo chgrp johnson Johnson-Contract1.txt
sudo chgrp johnson Johnson-Contract2.txt
sudo chgrp santana Santana-Pleading1.txt
sudo chgrp santana Santana-Pleading2.txt

sudo chgrp jonesbilling Jones-Bill1.txt
sudo chgrp jonesbilling Jones-Bill2.txt
sudo chgrp johnsonbilling Johnson-Bill1.txt
sudo chgrp johnsonbilling Johnson-Bill2.txt
sudo chgrp santanabilling Santana-Bill1.txt
sudo chgrp santanabilling Santana-Bill2.txt

sudo chgrp jones Jones-Court1.txt
sudo chgrp jones Jones-Court2.txt
sudo chgrp johnson Johnson-Meeting1.txt
sudo chgrp johnson Johnson-Meeting2.txt
sudo chgrp santana Santana-Court1.txt
sudo chgrp santana Santana-Court2.txt

# set permissions on each file
sudo -u bard chmod u=rw,g=rw,o=r Jones-Pleading1.txt
sudo -u bard chmod u=rw,g=rw,o=r Jones-Pleading2.txt
sudo -u karen chmod u=rw,g=rw,o=r Johnson-Contract1.txt
sudo -u karen chmod u=rw,g=rw,o=r Johnson-Contract2.txt
sudo -u bard chmod u=rw,g=rw,o=r Santana-Pleading1.txt
sudo -u bard chmod u=rw,g=rw,o=r Santana-Pleading2.txt

sudo -u sam chmod u=rw,g=rw,o=r Jones-Bill1.txt
sudo -u sam chmod u=rw,g=rw,o=r Jones-Bill2.txt
sudo -u kevin chmod u=rw,g=rw,o=r Johnson-Bill1.txt
sudo -u kevin chmod u=rw,g=rw,o=r Johnson-Bill2.txt
sudo -u sam chmod u=rw,g=rw,o=r Santana-Bill1.txt
sudo -u sam chmod u=rw,g=rw,o=r Santana-Bill2.txt

sudo -u bard chmod u=rw,g=r,o=r Jones-Court1.txt
sudo -u mary chmod u=rw,g=r,o=r Jones-Court2.txt
sudo -u karen chmod u=rw,g=r,o=r Johnson-Meeting1.txt
sudo -u kevin chmod u=rw,g=r,o=r Johnson-Meeting2.txt
sudo -u bob chmod u=rw,g=r,o=r Santana-Court1.txt
sudo -u bob chmod u=rw,g=r,o=r Santana-Court2.txt