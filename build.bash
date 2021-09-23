cd `dirname $0`

cat blender-reset.py | sed 's/RIGHTMOUSE/XXXMOUSE/g' | sed 's/MIDDLEMOUSE/RIGHTMOUSE/g' | sed 's/XXXMOUSE/MIDDLEMOUSE/g' > blender-mousepad.py


csplit blender-mousepad.py '/if __name__/'

cp xx00 blender-mousepad.py
rm xx00
rm xx01


# we need to perform some special hacks to swap some of the mouse buttons

cat >>blender-mousepad.py <<EOF

for maps in keyconfig_data:
	if maps[0]=="Transform Modal Map":
		for map in maps:
			if ( type(map) is dict ) and ( "items" in map ) :
				for item in map.get("items"):
					if   item[1].get("type")=="MIDDLEMOUSE" :
						item[1]["type"]="RIGHTMOUSE"
					elif item[1].get("type")=="RIGHTMOUSE" :
						item[1]["type"]="MIDDLEMOUSE"
#					print(item)





if __name__ == "__main__":
    # Only add keywords that are supported.
    from bpy.app import version as blender_version
    keywords = {}
    if blender_version >= (2, 92, 0):
        keywords["keyconfig_version"] = keyconfig_version
    import os
    from bl_keymap_utils.io import keyconfig_import_from_data
    keyconfig_import_from_data(
        os.path.splitext(os.path.basename(__file__))[0],
        keyconfig_data,
        **keywords,
    )

EOF

