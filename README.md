# ProxyGT
Don't sell it, because it's free ! !
## Growtopia-Proxy
Growtopia proxy that allows modification and viewing of packets, and creation of new ones.

## Supported Platforms
- Windows
- Linux

## Build For Windows
- Install <a href="https://visualstudio.microsoft.com/downloads/"> Visual Studio  </a>  Required C++20 <a href="https://learn.microsoft.com/en-us/cpp/build/vscpp-step-0-installation?view=msvc-170"> Visual Studio Installation</a> 
- Install VCPKG For c++ Libraries <a href ="https://www.youtube.com/watch?v=F4TY_nV5cn8">Install cpp libraries using vcpkg and including them in visual studio</a>
- openssl installation command : vcpkg install openssl:x64-windows

## Build For Linux

```bash
sudo apt update
sudo apt-get install build-essential
sudo apt install gcc
sudo apt-get install libssl-dev
chmod +x LinuxBuild.sh
sudo ./LinuxBuild.sh
```
