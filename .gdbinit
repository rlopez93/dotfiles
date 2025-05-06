#source ~/peda/peda.py
set debuginfod enabled off
set print pretty on
set print demangle on
set print asm-demangle on
set disassembly-flavor intel
skip -gfi /usr/include/c++/14.2.1/bits/*
skip -gfi /usr/include/c++/14.2.1/*
skip -gfi /usr/src/debug/gcc/gcc/libstdc++-v3/libsupc++/*
skip -gfi /usr/src/debug/gcc/gcc-build/x86_64-pc-linux-gnu/libstdc++-v3/include/bits/*
skip -gfi /usr/src/debug/gcc/gcc-build/x86_64-pc-linux-gnu/libstdc++-v3/include/*
skip -gfi /home/ricardo/dev/KhronosGroup/Vulkan-Samples/third_party/vulkan/include/vulkan/*
#skip -gfi /usr/src/debug/gcc
#skip -gfi /usr/*.h
tui enable

define hook-next
	refresh
end

define hook-run
	refresh
end

define hook-continue
	refresh
end

define hook-step
	refresh
end

define hook-finish
	refresh
end
