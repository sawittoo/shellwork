#!/bin/bash

#同じだったらsameを出す
if [ $1 = $2 ] ;then
	echo "same"
else
	echo "error"	
#違っていたらerrorを出す
fi
