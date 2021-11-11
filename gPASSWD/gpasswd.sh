#!/bin/bash

# root check
if [ `whoami` != 'root' ]
  then
    echo "Root is required to use this script. Reason: Unable to change passwords of other users without."
    exit
fi

# interface
name\
=$(
zenity --entry  \
        --title="Change Password" \
        --text="Username"     \
        --entry-text="Name"  \
)
lgn\
=$(
zenity --entry \
	--title="Change Password" \
	--text="Password of $name" 	\
	--entry-text="Current Password"  \
)
newpasswd\
=$(
zenity --entry \
	--title="Change Password" \
	--text="New password of $name" \
	--entry-text="New Password" \
)
passwd $name << EOD
$newpasswd
$newpasswd
EOD
