#!/usr/bin/env bash

# Colors
end="\033[0m"
black="\033[0;30m"
blackb="\033[1;30m"
white="\033[0;37m"
whiteb="\033[1;37m"
red="\033[0;31m"
redb="\033[1;31m"
green="\033[0;32m"
greenb="\033[1;32m"
yellow="\033[0;33m"
yellowb="\033[1;33m"
blue="\033[0;34m"
blueb="\033[1;34m"
purple="\033[0;35m"
purpleb="\033[1;35m"
lightblue="\033[0;36m"
lightblueb="\033[1;36m"


# Main script
while true; do
    # Logo
    echo -e "$redb"
    echo -e " ╔═══════════════════════════════════════════════════════════════════════════════════════════════════════╗";
    echo -e " ║ ╔═══════════════════════════════════════════════════════════════════════════════════════════════════╗ ║";
    echo -e " ║ ║ IIIIIIIIII    IIIIIIIII     IIIIIIIIIIIII      IIIIIIIIIIIIIIIIII   IIIIIIIIIII                   ║ ║";
    echo -e " ║ ║ II       II   II      II    II            II          III           II         II                 ║ ║";
    echo -e " ║ ║ II       II   II      II    II             II         III           II         II                 ║ ║";
    echo -e " ║ ║ IIIIIIIIII    IIIIIIIII     II             II         III           IIIIIIIIIII                   ║ ║";
    echo -e " ║ ║ II            II I          II             II         III           III                           ║ ║";
    echo -e " ║ ║ II            II  II        II             II         III           II II                         ║ ║";
    echo -e " ║ ║ II            II    II      II           II           III           II   II                       ║ ║";
    echo -e " ║ ║ II            II      II    IIIIIIIIIIIII             III           II     II                     ║ ║";
    echo -e " ║ ║                                                                                                   ║ ║";
    echo -e " ║ ║                                                                                                   ║ ║";
    echo -e " ║ ║                                                                                                   ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ╔╗╔═╗╔═══╗╔═══╗╔═╗ ╔╗╔═══╗╔╗ ─────────────────────────────────── ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ║║║╔╝║╔══╝║╔═╗║║║╚╗║║║╔══╝║║ ─────────────────────────────────── ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ║╚╝╝ ║╚══╗║╚═╝║║╔╗╚╝║║╚══╗║║ ─────────────────────────────────── ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ║╔╗║ ║╔══╝║╔╗╔╝║║╚╗║║║╔══╝║║ ╔╗ ──────────────────────────────── ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ║║║╚╗║╚══╗║║║╚╗║║ ║║║║╚══╗║╚═╝║ ──────────────────────────────── ║ ║";
    echo -e " ║ ║ ──────────────────────────────── ╚╝╚═╝╚═══╝╚╝╚═╝╚╝ ╚═╝╚═══╝╚═══╝ by: @PREDATOR112 ─────────────── ║ ║";
    echo -e " ║ ╚═══════════════════════════════════════════════════════════════════════════════════════════════════╝ ║";
    echo -e " ╚═══════════════════════════════════════════════════════════════════════════════════════════════════════╝";
    echo -e ""
    echo -e "$yellowb"
    echo -e " Menu                                                               "
    echo -e " ╔═════════════════════════════════════════════════════════════════╗"
    echo -e " ║ 1. Build For Whyred (Xiaomeme - Redmi Note 5 Pro)               ║"
    echo -e " ║ 2. Build For Tulip (Xiaomeme - Redmi Note 6 Pro)                ║"
    echo -e " ║ 3. Build For Wayne (Xiaomeme - Mi 6X)                           ║"
    echo -e " ║ 4. Build For RMX1921 (Realmeme - XT)                            ║"
    echo -e " ║ 5. Clean Out Dir                                                ║"
    echo -e " ║ e. Exit                                                         ║"
    echo -e " ╚═════════════════════════════════════════════════════════════════╝"
    echo -ne "\n Enter your choice 1-5, or press 'e' For Exit : "

    read menu

    # Whyred
    if [ "$menu" == "1" ]; then
        ./whyred.sh
    fi

    # Tulip
    if [ "$menu" == "2" ]; then
        ./tulip.sh
    fi

    # Wayne
    if [ "$menu" == "3" ]; then
        ./wayne.sh
    fi

    # Rmx1921
    if [ "$menu" == "4" ]; then
        ./rmx1921.sh
    fi

    # Clean Out Dir
    if [ "$menu" == "5" ]; then
        make O=out clean
        make mrproper
        rm -rf out/*

        echo -e "\n (i) Kernel source cleaned up."
    fi

    # Exit
    if [ "$menu" == "e" ]; then
        exit 
    fi

done
