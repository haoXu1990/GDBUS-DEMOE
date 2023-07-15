# gdbus-demo

#### Description
gdbus session demo

#### Software Architecture
gdbus xml provides two methods and two signals
The client generates a library (libExampleClientlib.so), provides synchronous and asynchronous method functions, callback registration function
The example folder is a routine of the client (CltExample)
The server folder is a routine of the server (SvrExample)

#### Installation

1.  mkdir build
2.  cd build
3.  cmake ..
4.  make
5.  cpack

#### Instructions

1.  Deploy dbus
dbus-daemon --session --address=unix:path=/tmp/session_bus_socket &
export DBUS_SESSION_BUS_ADDRESS=unix:path=/tmp/session_bus_socket
2.  Run the server in the build directory
./server/SvrExample
3.  Run the client in the build directory
./server/CltExample

#### Contribution

1.  Fork the repository
2.  Create Feat_xxx branch
3.  Commit your code
4.  Create Pull Request


#### Gitee Feature

1.  You can use Readme\_XXX.md to support different languages, such as Readme\_en.md, Readme\_zh.md
2.  Gitee blog [blog.gitee.com](https://blog.gitee.com)
3.  Explore open source project [https://gitee.com/explore](https://gitee.com/explore)
4.  The most valuable open source project [GVP](https://gitee.com/gvp)
5.  The manual of Gitee [https://gitee.com/help](https://gitee.com/help)
6.  The most popular members  [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
