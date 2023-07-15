# gdbus-demo

## 介绍
gdbus session demo，主要为了展示在 Windows 上面利用 VSCode 交叉编译本 Demo, 该 Demo 本身属于与 [drahnr ](https://github.com/drahnr), 我只是修改了 CMake 配置部分，使程序适用于全志 T507 Linux 平台。

## 软件架构
gdbus的xml提供两个方法和两个信号
客户端生成一个库(libExampleClientlib.so)，暴露出同步方法和异步方法函数，回调的注册函数
example文件夹是客户端的一个例程(CltExample)
server文件夹是服务端的例程(SvrExample)

## 需要工具
* Visual Studio Code
* CMake
* Mingw
* 交叉编译工具链(https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/aarch64-linux-gnu/)
交叉编译工具链根据自己项目情况选择，由于我使在 Windows 平台，所以选择了上面这个包。
我是单独在 Windows 中安装好了 MinGW 和 CMake,并配置好系统环境变量，然后在 VSCode 的插件中也安装了如下插件：
* C/C++
* C/C++ Extension Pack
* C/C++ Themes
* CMake
* CMake Tools
* IntelliCode
* Makefile Tools

### VSCode 配置
安装完插件后，需要配置 CMake 交叉编译工具链toolchain.cmake，由于交叉编译的特异性，请根据自己项目实际情况修改该文件中的内容。
在 VScode 中按组合键(ctrl+shift+p), 会弹出命令窗口，然后输入 cmake edit, 选择"CMake: Edit User-Local CMake Kits"
添加如下配置
```
{
    "name": "gcc-linaro-5.3.1", // 随便填写
    "toolchainFile": "D:\\Download\\gdbus-demo-master\\gdbus-demo-master\\toolchain.cmake", // 项目中配置的 toolchain
    "preferredGenerator": {
      "name": "MinGW Makefiles"
    },
    "environmentVariables": {
      "CMT_MINGW_PATH": "C:\\MinGW\\bin" // MinGW
    }
  }
```


## 使用说明
由于Linux 平台本身问题，目前程序只能跑起来，无法完成流程，等目标平台移植好 Dbus 后在添加
<!-- 1.  部署dbus
dbus-daemon --session --address=unix:path=/tmp/session_bus_socket &
export DBUS_SESSION_BUS_ADDRESS=unix:path=/tmp/session_bus_socket
2.  在build目录下执行服务端
./server/SvrExample
3.  在build目录下执行客户端
./server/CltExample -->
