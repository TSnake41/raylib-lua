#!/bin/sh
root=../..
parser=${root}/raylib/parser/raylib_parser

$parser -i $root/raylib/src/raylib.h -o tools/autocomplete/api/raylib_api.lua -d RLAPI -f LUA
$parser -i $root/raylib/src/rcamera.h -o tools/autocomplete/api/rcamera_api.lua -d RLAPI -f LUA
$parser -i $root/raygui/src/raygui.h -o tools/autocomplete/api/raygui_api.lua -d RAYGUIAPI -f LUA
$parser -i $root/physac/src/physac.h -o tools/autocomplete/api/physac_api.lua -d PHYSACDEF -f LUA