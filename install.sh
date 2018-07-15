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
    echo -e "${MENU}*********************************************${NORMAL}"
    echo -e "${ENTER_LINE}Please enter a menu option and enter or ${RED_TEXT}enter to exit. ${NORMAL}"
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
        option_picked "Option 1 Picked";
        sudo bash /root/Masternodes/installs/Mogwai.sh;
        menu;
        ;;

        2) clear;
            option_picked "Option 2 Picked";
            sudo bash /root/Masternodes/installs/Moondex.sh;
        menu;
            ;;

        3) clear;
            option_picked "Option 3 Picked";
        sudo bash /root/Masternodes/installs/Drip.sh;
            show_menu;
            ;;

        4) clear;
            option_picked "Option 4 Picked";
        sudo bash /root/Masternodes/installs/Rabbit.sh;
            show_menu;
            ;;

        5) clear;
            option_picked "Option 5 Picked";
        sudo bash /root/Masternodes/installs/BTCMonster.sh
            show_menu;
            ;;

        6) clear;
            option_picked "Option 6 Picked";
        sudo bash /root/Masternodes/installs/Rane.sh
            show_menu;
            ;;


        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
done
