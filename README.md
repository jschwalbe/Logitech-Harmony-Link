Found a URL with some links..
https://files.myharmony.com/Assets/Firmware/VersionDbDefaults2.xml

Towards bottom, there's a section called `<Name>Harmony082</Name> <!--  Olive-AMR  -->` and Olive appears lots in the memory dumps I've been playing with. 
Grab these files..
`wget http://files.myharmony.com/Assets/Firmware/82/Region_{0..8}.EzHex`

binwalk shows lots of interesting stuff..
Region_0 shows a file `install.sh` including:
```
reginfo="
        1 Region_1.zip zImage-olive.bin                    kernel
        2 Region_2.zip olive-image-olive.cramfs            cramfs
        3 Region_3.zip userconfig.ubifs                    usrconf
        4 Region_4.zip logitech.ubifs                      logitech
        7 Region_7.zip zImage-safemode-olive.bin           kernel_sm
        8 Region_8.zip olive-image-olive-safemode.cramfs   cramfs_sm
"
```
Nice to know what each file represents!

Each of the files will be placed under Region directory..
