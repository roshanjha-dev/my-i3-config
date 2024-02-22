# To add the notification popup when vol keys are used. Follow the below steps.

1. Copy the folder i3-volume into your .config folder inside your home directory
2. Open the file ~/.config/i3/config using any editor of your choice.
3. Search for the below line in the code 

	bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
	bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status	

4. Comment the above 2 lines and copy the below 2 lines in place of that. 
 
	bindsym XF86AudioRaiseVolume exec --no-startup-id ~/.config/i3-volume/vol_inc_notif.sh && $refresh_i3status
	bindsym XF86AudioLowerVolume exec --no-startup-id ~/.config/i3-volume/vol_dec_notif.sh && $refresh_i3status

5. Save the file
6. Refresh the i3 manager using the shortcut $mod+shift+r 
