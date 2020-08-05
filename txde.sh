#!/data/data/com.termux/files/usr/bin/bash
#TXDE v1.0
#Coded By Wisnu069

#banner
echo -e '''\033[1;34m
  _____By : WRD_   ____  U _____ u 
 |_ " _|  \ \/"/  |  _"\ \| ___"|/ 
   | |    /\  /\ /| | | | |  _|"   
  /| |\  U /  \ uU| |_| |\| |___   
 u |_|U   /_/\_\  |____/ u|_____|  
 _// \\_,-,>> \\_  |||_   <<   >>  
(__) (__)\_)  (__)(__)_) (__) (__) 
 \033[1;31m==+Termux Desktop Environment+==
 \033[0m
 '''
echo "Pilih Desktop Environment"
echo '''
1) Gnome (Comming Soon)
2) KDE (Comming Soon)
3) MATE (Comming Soon)
4) xfce4
5) LXDE (Comming Soon)
6) OpenBox (WM)
7) FluxBox (WM)
'''
echo -e -n "Masukan Nomor: "
read post

# pilihan 1 
if [ $post -eq "1" ]; then
echo -e "\033[1;31mGnome is  Not available In Termux Repository"
fi
# pilihan 2 
if [ $post -eq "2" ]; then
echo -e "\033[1;31mKDE is Not available In Termux Repository"
fi
# pilihan 3 
if [ $post -eq "3" ]; then
echo -e "\033[1;31mMATE is Not available In Termux Repository"
fi
# pilihan 4 
if [ $post -eq "4" ]; then
echo -e "\033[0mInstalling xfce4..."
sleep 2
clear
pkg update && pkg upgrade -y
pkg install unstable-repo root-repo x11-repo
pkg install xfce4 tigervnc xfce4-terminal xterm
vncserver
rm ~/.vnc/xstartup
echo """#!/data/data/com.termux/files/usr/bin/sh
## This file is executed during VNC server
## startup.

# Launch terminal emulator Aterm.
# Requires package 'aterm'.
xterm -geometry 80x24+10+10 -ls &

# Launch Tab Window Manager.
# Requires package 'xorg-twm'.
startxfce4 &
""" > ~/.vnc/xstartup
vncserver -kill :1
chmod +x ~/.vnc/xstartup
echo -e -n "\033[1;32mDONE. ketik vncserver lalu buka vncviewer.apk masukan alamat 127.0.0.1:5901\033[0m"
fi
# pilihan 5 
if [ $post -eq "5" ]; then
echo -e "\033[1;31mLXDE is Not available In Termux Repository"
fi
# pilihan 6
if [ $post -eq "6" ]; then
echo -e "\033[0mInstalling OpenBox..."
sleep 2
clear
pkg update && pkg upgrade -y
pkg install unstable-repo root-repo x11-repo
pkg install tigervnc openbox obconf pypanel xorg-xsetroot
vncserver
rm ~/.vnc/xstartup
echo """#!/data/data/com.termux/files/usr/bin/sh
#xsetroot -solid gray
xterm -geometry 80x24+10+10 -ls -title '$VNCDESKTOP
openbox-session &
""" > ~/.vnc/xstartup
vncserver -kill :1
chmod +x ~/vnc/xstartup
echo """# Make background gray.
xsetroot -solid gray

# Launch PyPanel.
pypanel &
""" > ~/.config/openbox/autostart
echo -e -n "\033[1;32mDONE. Ketik vncserver lalu buka vncviewer.apk masukan alamat 127.0.0.1:5901\033[0m"
fi
# pilihan 6
if [ $post -eq "7" ]; then
echo -e "\033[0mInstalling Fluxbox..."
sleep 2
clear
pkg update && pkg upgrade -y
pkg install unstable-repo root-repo x11-repo
pkg install tigervnc fluxbox
vncserver
rm ~/.vnc/xstartup
echo """#!/data/data/com.termux/files/usr/bin/sh
## Fluxbox desktop.

# Generate menu.
fluxbox-generate_menu

# Start fluxbox.
fluxbox &
""" > ~/.vnc/xstartup
vncserver -kill :1
chmod +x ~/vnc/xstartup
echo -e -n "\033[1;32mDONE. ketik vncserver lalu buka vncviewer.apk masukan alamat 127.0.0.1:5901\033[0m"
fi
