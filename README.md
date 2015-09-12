# blender-mousepad

A keymap to reduce blenders reliance on the middle mouse button so it 
can be used with a mousepad or 2 button mouse.

To install download 
https://github.com/xriss/blender-mousepad/raw/master/blender-mousepad.py 
from this repo and import into blender like so.

Start up Blender.

Select **User Preferences...** from the menu.

Click on the **Input** tab at the top of the page.

Click on the **Import Key Configuration...** button at the bottom of 
the page.

Select the blender-mousepad.py file and import it.

Now you can either try the new keymap or click the **Save User 
Settings** button at the bottom of the page to set it as the default 
next time you restart Blender.

#Mapping

This keymap tries to do the following.

Assign the Left mouse button to select/drag/move.
Assign the Right mouse button to pan/rotate/zoom.
Assign the Middle mouse button to 3D cursor/whatever.

These are the 3 types of actions already bound to the 3 mouse buttons 
in blender but maybe moved to different button so it fits the above 
rules. Note that sometimes blender follows the above convention by 
default so no change is necessary. This is an attempt to improve mouse 
button consistency and make a single/double button mouse or trackpad 
more serviceable.

Although this sounds straightforward it is however rather hard to get 
right due to Blenders complexity and the possibility of accidentally 
breaking something. I expect there to be bugs especially in modes that 
I personally do not make extensive use of so if you spot any issues 
please let me know so I can attempt to iron them out.

