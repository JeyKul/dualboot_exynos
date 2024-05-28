#!/sbin/bin

PARTED=/tmp/parted

LOCATION=/dev/block/sda
#Correct these paths if needed. in adb shell do ls /dev/block/by-name.
B11=/dev/block/by-name/boot
B22=/dev/block/by-name/dtb
B33=/dev/block/by-name/dtbo
#make sure to match the filenames with that path!
B1=/tmp/boot.img
B2=/tmp/dtb.img
B3/tmp/dtbo.img
#Number the right partition numbers.
SYSTEM1=25
SYSTEM2=26
VENDOR1=27
VENDOR2=28
PRODUCT1=29
PRODUCT2=30

$PARTED $LOCATION name $SYSTEM1 system3
$PARTED $LOCATION name $SYSTEM2 system
#This function names the SYSTEM1 to system3 and SYSTEM2 to system. means SYSTEM2 would be the main now.
#If you want to make the second zip, swap System1 and System2
$PARTED $LOCATION name $VENDOR1 vendor3
$PARTED $LOCATION name $VENDOR2 vendor
#SAME LOGIC
$PARTED $LOCATION name $PRODUCT1 product3
$PARTED $LOCATION name $PRODUCT2 product
#SAME LOGIC

dd if=$B1 of=$B11
dd if=$B2 of=$B22
dd if=$B3 of=$B33
