-- set minimum xmake version
set_xmakever("3.0.0")

-- include subprojects
includes("lib/commonlibf4")

-- set project constants
set_project("MantellaLauncher")
set_version("0.10.0")
set_license("MIT")
set_languages("c++23")
set_warnings("allextra")

-- add common rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- define targets
target("MantellaLauncher", function()
    -- F4SE plugin: Address Library, 1.11.137+ layout, RUNTIME_LATEST (Anniversary Edition)
    add_rules("commonlibf4.plugin", {
        name = "MantellaLauncher",
        author = "peteben",
        description = "Starts and restarts Mantella.exe from Fallout 4"
    })

    -- add source files
    add_files("plugin.cpp")
    add_headerfiles("PCH.h")

    -- set precompiled header
    set_pcxxheader("PCH.h")

    -- wide-char Win32 APIs (GetTempPath, CreateProcess, SetConsoleTitle...)
    add_defines("UNICODE", "_UNICODE")
    add_syslinks("user32", "shell32", "ole32", "comsuppw")
end)
