#!/usr/bin/env bash

# Disable history files
for homedir in /home/*; do echo 'set +o history' >> "$homedir"/.bashrc; done
echo 'set +o history' >> /root/.bashrc
echo 'set +o history' >> /etc/profile

# Cleanup any old history files
for homedir in /home/*; do rm -rf "$homedir"/.bash_history done
rm -rf /root/.bash_history
