# Acer VN7-793g Hackintosh


## macOS - Version

Catalina: 10.15.1 (19B88)


## How to Install

- Clone this repos
- Format your USB key with disk utility to APFS
- Download and copy Catalina on your USB
```
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/NAMEOFYOURKEY
```
- Install EFI directory to your USB EFI partition
```
sudo sh -c 'mkdir /Volumes/EFI && mount -t msdos /dev/diskIDOFYOURKEYs1 /Volumes/EFI'
chmod +x installEFI.command
./installEFI.command (option 2)
```
- Reboot on your key and install macOS
- After install mount EFI partition of your disk and install EFI
```
sudo sh -c 'mkdir /Volumes/EFI && mount -t msdos /dev/disk0s1 /Volumes/EFI'
chmod +x installEFI.command
./installEFI.command (option 1)
```
- Install keyboard AZERTY PC (like WINDOWS)
    - Unzip French - PC Windows.zip
    - Open Ukelele (See Tools)
    - Go File / Install
    - Select directory where there are file
    - Click Install for All Users
    - Reboot
    - Go keyboard configuration and select it


## Tools

- [Clover Configurator](https://mackie100projects.altervista.org/download-clover-configurator/) (for edit config file of EFI)
- [Ukelele](http://software.sil.org/ukelele/) (for manage your keyboard)
- [MaciASL](https://sourceforge.net/projects/maciasl/) (for patch your computer)
- [HoRNDIS](https://joshuawise.com/horndis) (for share internet with your android)


## Not Work

- Wifi but you can change hardware with [bcm94352z](https://fr.shopping.rakuten.com/offer/buy/4079226156/tout-nouveau-dw1560-bcm94352z-06-xryc-802-11ac-ngff-m2-867-mbps-bcm94352-bt4-0-wifi-carte-reseau-sans-fil.html)
- Nvidia card (You use Intel HD Graphics and HDMI WORK for me)


## Screenshoot

![alt text](https://i.ibb.co/bFjsZb2/Capture-d-cran-2019-10-19-20-45-48.png)
