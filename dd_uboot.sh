# Default will be /dev/sdc because of my case.

device=$1

if [ -z $device ]; then
	device="c";
fi

dd if=u-boot.imx of=/dev/sd$device bs=1k seek=1
sync;
