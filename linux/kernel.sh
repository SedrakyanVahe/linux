kernel( ){

echo -e "\n                KERNEL \n"
echo Kernel name:    `    uname -s`
echo Network node hostname:    `    uname -n`
echo Kernel version:  `    uname -v`
echo Machine hardware name:  `    uname -m`
echo Operating system:  `    uname -o`
echo " "
lsb_release -a
echo " "
}

kernel
