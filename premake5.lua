project "enet"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    targetdir "lib/%{cfg.buildcfg}"
    filter "action:vs*"
        defines "_CRT_SECURE_NO_WARNINGS"

    files 
    {
        "**.c",
        "**.h",
        "include/**",
    }

    filter "system:windows"
        links { "gdi32", "kernel32", "ws2_32", "winmm" }

    includedirs { "include" }