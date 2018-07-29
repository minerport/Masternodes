#!/bin/sh
show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"` #Blue
    NUMBER=`echo "\033[33m"` #yellow
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo =e "${MENU}**********PLEASE CHOOSE YOUR COIN************${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${MENU}**${NUMBER} 1)${MENU} MOGWAI ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 2)${MENU} MOONDEX ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 3)${MENU} DRIP ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 4)${MENU} RABBIT ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 5)${MENU} BTCMONSTER ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 6)${MENU} RANE ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 7)${MENU} DEXTRO ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 8)${MENU} BHASH ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 9)${MENU} PRINTEX ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 10)${MENU} GAMBLECOIN ${NORMAL}"
    echo -e "${MENU}**${NUMBER} 11)${MENU} ELLIOT ${NORMAL}"
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please choose a Masternode to install and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
    read opt
}

clear
show_menu
while [ opt != '' ]
    do
    if [[ $opt = "" ]]; then 
            exit;
    else
        case $opt in
        1) clear;
        option_picked "Mogwai Masternode Picked";
        sudo bash /root/Masternodes/installs/Mogwai.sh;
            show_menu;
        ;;

        2) clear;
            option_picked "Moondex Masternode Picked";
        sudo bash /root/Masternodes/installs/Moondex.sh;
            show_menu;
            ;;

        3) clear;
            option_picked "Drip Masternode Picked";
        sudo bash /root/Masternodes/installs/Drip.sh;
            show_menu;
            ;;

        4) clear;
            option_picked "Rabbit Masternode Picked";
        sudo bash /root/Masternodes/installs/Rabbit.sh;
            show_menu;
            ;;

        5) clear;
            option_picked "BTCMonster Masternode Picked";
        sudo bash /root/Masternodes/installs/BTCMonster.sh
            show_menu;
            ;;

        6) clear;
            option_picked "Rane Masternode Picked";
        sudo bash /root/Masternodes/installs/Rane.sh
            show_menu;
            ;;
        7) clear;
            option_picked "Dextro MasternodePicked";
        sudo bash /root/Masternodes/installs/Dextro.sh
            show_menu;
            ;;
        8) clear;
            option_picked "Bhash Masternode Picked";
        sudo bash /root/Masternodes/installs/Bhash.sh
            show_menu;
            ;;
        9) clear;
            option_picked "Printex Masternode Picked";
        sudo bash /root/Masternodes/installs/Printex.sh
            show_menu;
            ;;
            
        10) clear;
            option_picked "Gamblecoin Masternode Picked";
        sudo bash /root/Masternodes/installs/Gamblecoin.sh
            show_menu;
            ;;
            
            11) clear;
            option_picked "Elliot Masternode Picked";
        sudo bash /root/Masternodes/installs/Elli.sh
            show_menu;
            ;;

        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick the Masternode Coin you would like to install from the menu";
        show_menu;
        ;;
    esac
fi
done
