# i3-natural-scrolling and tap-to-click
The above are two scripts that use an alternate method to enable natural scrolling and tap-to-click on machines running the i3 window manager. This was created after a realization that, for machines that do not use a synaptics touchpad, the easily googlable solutions to enable universal natural scrolling and tap-to-click are not applicable: these include modifying .Xmodmap (not universal) and using synclient (also not universal). 

# IMPORTANT NOTE!
The above scripts *may not work for your machine* and may require modifications, but hopefully only minor ones. You may have to _change the arguments to grep_ and the _format of the cut commands to grab the proper fields._ The hope is, however, that this is straight forward enough. It will certainly save you time if it works, and enable *universal* natural scrolling as well as the tap-to-click feature.

# To fix the mousepad tap feature and invert to the natural scroll, follow the below steps.

1. Copy the folder i3-mousepad into your .config folder inside your home directory
2. Open the file ~/.config/i3/config using any editor of your choice.
3. Copy the below lines at the end of the file 

	exec_always --no-startup-id ~/.config/i3/scripts/i3-mousepad/inverse-scroll.sh
	exec_always --no-startup-id ~/.config/i3/scripts/i3-mousepad/tap-to-click.sh	

4. Save the file
5. Refresh the i3 manager using the shortcut $mod+shift+r 
