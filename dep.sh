
#!/bin/bash
### install rustUP first
echo "Installing the rust up script"
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
### then come the vulkan development dependencies
echo "Updating and installing some basic vulkan-development dependencies with SDL2, neovim and git"
sudo dnf update -y
sudo dnf install -y vulkan-tools vulkan-loader-devel vulkan-validation-layers-devel glfw-devel glm-devel glslc libxkbcommon libXi-devel libXxf86vm-devel rust-osmesa-sys-devel SDL2-devel git neovim

### extraneous dependencies
echo "The last dependencies for vulkano prjects to build"
sudo dnf install -y cmake gcc-c++ fontconfig-devel

echo "Finished installing executing the test vkcube"
vkcube

