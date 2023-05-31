if grep -qs 'overlayroot' /proc/cmdline;
then
echo -e '
\e[33;1mNOTE\e[0m\e[1m: Changes to the root filesystem WILL NOT be preserved after reboot!\e[0m

Remove the 'overlayroot' argument in '/boot/cmdline.txt' to preserve changes.
'
else
echo -e '
\e[31;1mWARNING\e[0m\e[1m: Changes to the root filesystem WILL be preserved after reboot!\e[0m

Add the 'overlayroot' argument in '/boot/cmdline.txt' to not preserve changes.
'
fi
