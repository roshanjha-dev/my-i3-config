# To add the notification popup when brigtness keys are used. Follow the below steps.

1. Copy the folder i3-screen-brightness into your .config folder inside your home directory
2. Open the file ~/.config/i3/config using any editor of your choice.
3. Copy the below at the end of the file 

	bindsym XF86MonBrightnessUp exec --no-startup-id ~/.config/i3/scripts/i3-screen-brightness/bri_inc_notif.sh && $refresh_i3status
	bindsym XF86MonBrightnessDown exec --no-startup-id ~/.config/i3/scripts/i3-screen-brightness/bri_dec_notif.sh && $refresh_i3status
	
4. Save the file
5. Refresh the i3 manager using the shortcut $mod+shift+r 
