[Nanowar](https://github.com/benjames-171/defold-games) is developed by [Ben James](https://twitter.com/BenJames171). All credits goes to him.  
I made some changes for testing [Mod Player](https://github.com/selimanac/defold-modplayer) extension.

- Added touch support for mobile testing
- Added 1 menu and 10 different level music for testing
- Added [Orthographic camera](https://github.com/britzl/defold-orthographic)

Don't forget to set your files path in [main/data.lu](https://github.com/selimanac/nanowar-modplayer/blob/master/main/data.lua)a for [player.build_path(full_path:string)](https://github.com/selimanac/defold-modplayer#api)

```lua
-- MOD PLAYER
M.is_dev = false -- If you are building on Defold Editor then set it true. If you are bundling set it false
M.build_path = "" -- Full path for building on Defold Editor when developing: "<FULL_PATH>/res/common/assets/"
```


