1. install lua 5.2 

reference: http://torch.ch/docs/getting-started.html

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch
TORCH_LUA_VERSION=LUA52 ./install.sh

2. source

reference: https://groups.google.com/forum/#!topic/torch7/fFI76tYtihs

in your terminal:

source ~/torch/install/bin/torch-activate

then you will have access to all commands, th, luarocks etc.

3. git clone lua---camera

opencv.c

find replace luaL_reg to luaL_Reg

reference: https://github.com/clementfarabet/lua---camera/pull/25

luaL_openlib has been deprecated for a while, and that luaL_newlib

reference: http://lua.2524044.n2.nabble.com/Why-did-luaL-openlib-luaL-register-go-td7649023.html

luaL_newlib usage: luaL_newlib(L, opencv);


4. make lua--camera

first, delete camera-1.0-0.rockspec

then, make it

$ luarocks make


5. change global to local variable: torch/install/share/lua/5.2/image/init.lua

need to define libcamopencv as a local variable so it's not referenced as a global variable

should look like this: local libcamopencv = require 'libcamopencv'

reference: https://forums.coronalabs.com/topic/36706-attempt-to-index-global-variable-name-a-nil-value/

6. https://github.com/jcjohnson/fast-neural-style