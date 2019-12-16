CHECK=$(sh -c 'ls /Volumes|grep EFI -c')
if [ $CHECK = 1 ]
then
    installefi(){
        rm -rf /Volumes/EFI/*
        cp -r EFI /Volumes/EFI
        if [ $1 = 1 ]
        then
            cp -r after/*.kext /Volumes/EFI/EFI/CLOVER/kexts/Other
	else
            cp -r before/*.kext /Volumes/EFI/EFI/CLOVER/kexts/Other
        fi
    }

    echo "Welcome to program for install EFI directory\n"
    RED='\033[0;31m'
    NC='\033[0m'
    printf "${RED}WARNING:${NC} Install bluetooth kexts after install macos !\n\n"
    PS3='Your choice: '
    LISTE=("Install EFI for system" "Install EFI for install" "Exit")
    select CHOIX in "${LISTE[@]}" ; do
        case $REPLY in
            1)
            installefi 1
            break
            ;;
            2)
            installefi 0
            break
            ;;
            3)
            break
            ;;
        esac
    done
else
    echo "Please mount EFI partition"
fi