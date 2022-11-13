echo "hello world"
echo "before search"
dnf search systemctl
echo "after search"
echo "sbin:"
ls -alrt /sbin
echo "/usr/sbin:"
ls -alrt /usr/sbin
echo "PATH=$PATH"
which systemctl
dnf search init
echo "/etc/os-release:"
cat /etc/os-release
ls -l /usr/bin/systemctl
ls -l /usr/bin
echo "done"
