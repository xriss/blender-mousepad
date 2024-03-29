# blender-mousepad

A keymap to reduce blenders reliance on the middle mouse button so it 
can be used with a mousepad or 2 button mouse.

This keymap tries to do the following.

Assign the **Left** mouse button to select/drag/move.

Assign the **Right** mouse button to pan/rotate/zoom.

Assign the **Middle** mouse button to 3Dcursor/whatever.

These are the 3 types of actions already bound to the 3 mouse buttons 
in blender but moved to different buttons to fit the above 3 rules. 
Note that often blender follows the above convention by default so no 
change is necessary. This is an attempt to improve mouse button 
consistency and make a single/double button mouse or trackpad more 
serviceable.

Blender 2.8 has got a **lot** better, so all we need to do is swap the middle
and the right mouse button.

Now it looks like blender is partially doing this so sometimes we are making it 
worse. Which means we need to perform some special hacks, which we do by 
appending some python in the bash script to rejiggle some things.


# For Blender 2.91

To install download 
https://github.com/xriss/blender-mousepad/raw/master/blender-mousepad.py 
from this repo and import into blender like so.

Start up Blender.

Select **Edit/Preferences...** from the menu.

Click on the **Keymap** tab at the left of the preferences window.

Click on the **Import...** button at the top of the page.

Select the blender-mousepad.py file and import it.

Now you can either try the new keymap or click the **Save Preferences**
button at the bottom left of the page to set it as the default 
next time you start Blender.
