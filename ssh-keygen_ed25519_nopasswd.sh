#!/usr/bin/bash
#
# ssh-keygen_ed25519_nopasswd.sh
# ============
#
# Usage:
#
#     ssh-keygen_ed25519_nopasswd [-h|--help]
#     ssh-keygen_ed25519_nopasswd [comment] [private/public key path] 
#    

# Function help() shows help
help() {
  awk 'NR > 2 {
    if (/^#/) { sub("^# ?", ""); print }
    else { exit }
  }' $0
}

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    help
else
    timeout=5
    command="ssh-keygen -t ed25519 -C "$1" -f "$2""
    expect -c "
        set timeout ${timeout}
        spawn ${command}
        expect \"empty for no passphrase\"
        send \"\n\"
        expect \"passphrase again\"
        send \"\n\"
        expect \"$\"
        exit 0
    "
    exit 0
fi
