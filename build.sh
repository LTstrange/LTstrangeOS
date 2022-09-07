cd bootloader
nasm -f bin bootloader.asm -o boot.bin

qemu-system-i386.exe boot.bin