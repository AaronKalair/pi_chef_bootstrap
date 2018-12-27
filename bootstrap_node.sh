# SCP the contents of this repo onto a Raspberry Pi so they can be used to
# bootstrap the device

# Args: IP address of the node to copy the files onto

scp * pi@$1:/chef
