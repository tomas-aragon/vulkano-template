

### install rustUP first
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
### then come the vulkan development dependencies
sudo dnf update -y
sudo dnf install -y vulkan-tools vulkan-loader-devel vulkan-validation-layers-devel glfw-devel glm-devel glslc libxkbcommon libXi-devel libXxf86vm-devel rust-osmesa-sys-devel SDL2-devel git neovim

### extraneous dependencies
sudo dnf install -y cmake gcc-c++ fontconfig-devel

