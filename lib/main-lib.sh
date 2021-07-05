source "lib/modules.sh"
source "lib/in-apt.sh"

main-choice-1() {
    heading
    echo -e "\e[0;36m-----------------\e[0m \e[1;33mWiFi Cracking\e[0m \e[0;36m-----------------\e[0m"
    echo ""
    echo "1) Capture PMKID"
    echo "2) Capture Handshake"
    echo "3) Crack PMKID"
    echo "4) Crack Handshake"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " PATH1
    if [ -z $PATH1 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    main-choice-1

    elif [ $PATH1 == 1 ]
    then
    capture-pmkid

    elif [ $PATH1 == 2 ]
    then
    capture-handshake

    elif [ $PATH1 == 3 ]
    then
    crack-pmkid

    elif [ $PATH1 == 4 ]
    then
    crack-handshake

    elif [ $PATH1 == 5 ]
    then
    main-menu

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    main-choice-1
    fi
}

main-choice-2() {
    heading
    echo -e "\e[0;36m-----------------\e[0m \e[1;33mNetwork Recon\e[0m \e[0;36m-----------------\e[0m"
    echo ""
    echo "1) Capture Packets"
    echo "2) Geolocate IP Adress"
    echo "3) nmap Scan a Network"
    echo "4) Scan a Local Network"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " PATH2
    if [ -z $PATH2 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    main-choice-2

    elif [ $PATH2 == 1 ]
    then
    capture-packets

    elif [ $PATH2 == 2 ]
    then
    geolocate

    elif [ $PATH2 == 3 ]
    then
    port-scan

    elif [ $PATH2 == 4 ]
    then
    local-scan

    elif [ $PATH2 == 5 ]
    then
    main-menu

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    main-choice-2
    fi
}

main-choice-3() {
    heading
    echo -e "\e[0;36m-------------------\e[0m \e[1;33mDOS Attacks\e[0m \e[0;36m-------------------\e[0m"
    echo ""
    echo "1) DDOS IP Address"
    echo "2) Slowloris attack"
    echo "3) Deauth Local Network"
    echo "4) Deauth Local Device"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " PATH3
    if [ -z $PATH3 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    main-choice-3

    elif [ $PATH3 == 1 ]
    then
    ddos-ip

    elif [ $PATH3 == 2 ]
    then
    slowloris-attack

    elif [ $PATH3 == 3 ]
    then
    deauth-network

    elif [ $PATH3 == 4 ]
    then
    deauth-device

    elif [ $PATH3 == 5 ]
    then
    main-menu

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    main-choice-3
    fi
}

main-choice-4() {
    heading
    echo -e "\e[0;36m-----------------\e[0m \e[1;33mOther Options\e[0m \e[0;36m-----------------\e[0m"
    echo ""
    echo "1) File Manager"
    echo "2) Run Airgeddon"
    echo "3) Run RouterSploit"
    echo "4) Update autoScript"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " PATH4
    if [ -z $PATH4 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    main-choice-4

    elif [ $PATH4 == 1 ]
    then
    edit-files

    elif [ $PATH4 == 2 ]
    then
    airgeddon-void

    elif [ $PATH4 == 3 ]
    then
    router-sploit

    elif [ $PATH4 == 4 ]
    then
    autoScript update

    elif [ $PATH4 == 5 ]
    then
    main-menu

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    main-choice-4
    fi
}
