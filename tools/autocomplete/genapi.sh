#!/bin/sh
root=../..
parser=${root}/raylib/tools/rlparser/rlparser

$parser -i $root/raylib/src/raylib.h -o api/raylib_api.lua -d RLAPI -f LUA
$parser -i $root/raylib/src/rlgl.h -o api/rlgl_api.lua -d RLAPI -f LUA -t "RLGL IMPLEMENTATION"
$parser -i $root/raylib/src/rcamera.h -o api/rcamera_api.lua -d RLAPI -f LUA
$parser -i $root/raygui/src/raygui.h -o api/raygui_api.lua -d RAYGUIAPI -f LUA
