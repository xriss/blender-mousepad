cd `dirname $0`

cat blender-reset.py | sed 's/RIGHTMOUSE/XXXMOUSE/g' | sed 's/MIDDLEMOUSE/RIGHTMOUSE/g' | sed 's/XXXMOUSE/MIDDLEMOUSE/g' > blender-mousepad.py
