#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#standard ljudutgång t.ex. "GoXLR System"
Default="alsa_output.usb-TC-Helicon_GoXLRMini-00.HiFi__goxlr_stereo_out_GoXLRMini_0_0_1__sink"
#Vill lyssna på t.ex. "GoXLR Stream Mix"
source="alsa_input.usb-TC-Helicon_GoXLRMini-00.HiFi__goxlr_stereo_in_GoXLRMini_0_0_1__source"
#Vill höra ljudet på t.ex. "Hörlurar"
Sink="alsa_output.usb-ASUS_ROG_Strix_Fusion_Wireless-00.iec958-stereo"
# Ställer in ljudingång som lyssnar på en specifik källa
pactl load-module module-loopback source="$Source" sink="$Sink"
# ställer in standard ljudutgång
pactl set-default-sink "$Default"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi                                                                                                                                      
