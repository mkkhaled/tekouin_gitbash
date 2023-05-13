IFS=":"

while read -r username password userid groupid userdesc homedir shell; do
    gang=$(grep -w "$groupid" /etc/group | cut -d: -f1)
    info=$(grep -w "$userid" /etc/passwd | cut -d: -f5)
    echo "The user $username is part of the $groupid gang, lives in $homedir and rides $shell."
    echo "User $userid's place is protected by the passcode $password, more info about the user here: $info"
    echo
done < /etc/passwd
