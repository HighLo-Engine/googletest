project "GoogleTest"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"googletest/include/**.h",
		"googletest/src/**.cc",
		"googlemock/include/**.h",
		"googlemock/src/**.cc",
	}
	
	includedirs
	{
		"googletest",
		"googlemock",
		"googletest/include",
		"googlemock/include"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		
	