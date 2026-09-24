# Mantella Launcher

SKSE plugin to launch Mantella.exe automatically when Skyrim starts up. For the main Mantella repo, see here:
https://github.com/art-from-the-machine/Mantella

[HelloWorld-using-CommonLibSSE-NG](https://github.com/SkyrimDev/HelloWorld-using-CommonLibSSE-NG) has been used as a template for this plugin.

## Fallout 4 Anniversary Edition (1.11.x)
This branch is the F4SE plugin for Fallout 4 **1.11.137+** (Anniversary Edition) and F4SE 0.7.x, built against
[libxse/commonlibf4](https://github.com/libxse/commonlibf4). It declares Address Library 1.11.137 independence, so it
should keep loading across 1.11.x patches without a rebuild. On game load it starts
`Data/F4SE/Plugins/MantellaSoftware/Mantella.exe` (if not already running); `MantellaLauncher.LaunchMantellaExe()`
restarts it from Papyrus.

### Building
Requires [xmake](https://xmake.io) 3.0+ and Visual Studio 2022 (MSVC, C++23).
```bat
git clone --recurse-submodules https://github.com/baughmann/Mantella-F4SE-Launcher
cd Mantella-F4SE-Launcher
xmake f -m releasedbg
xmake build
```
Output: `build/windows/x64/releasedbg/MantellaLauncher.dll`. Set `XSE_FO4_GAME_PATH` (or `XSE_FO4_MODS_PATH`) and run
`xmake install` to copy it into `Data/F4SE/Plugins`.
